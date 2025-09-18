--- 
title: max_user_session_timeout
hide_title: false
hide_table_of_contents: false
keywords:
  - max_user_session_timeout
  - policies
  - sumologic
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage sumologic resources using SQL
custom_edit_url: null
image: /img/stackql-sumologic-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>max_user_session_timeout</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>max_user_session_timeout</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.policies.max_user_session_timeout" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getMaxUserSessionTimeoutPolicy"
    values={[
        { label: 'getMaxUserSessionTimeoutPolicy', value: 'getMaxUserSessionTimeoutPolicy' }
    ]}
>
<TabItem value="getMaxUserSessionTimeoutPolicy">

The Max User Session Timeout policy.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="maxUserSessionTimeout" /></td>
    <td><code>string</code></td>
    <td>Maximum web session timeout users are able to configure within their user preferences. Valid values are: `5m`, `15m`, `30m`, `1h`, `2h`, `6h`, `12h`, `1d`, `2d`, `3d`, `5d`, or `7d` (pattern: <code>^(5m|15m|30m|1h|2h|6h|12h|1d|2d|3d|5d|7d)$</code>, example: 1d, x-pattern-message: must be one of the following: `5m`, `15m`, `30m`, `1h`, `2h`, `6h`, `12h`, `1d`, `2d`, `3d`, `5d`, or `7d`)</td>
</tr>
</tbody>
</table>
</TabItem>
</Tabs>

## Methods

The following methods are available for this resource:

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Accessible by</th>
    <th>Required Params</th>
    <th>Optional Params</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><a href="#getMaxUserSessionTimeoutPolicy"><CopyableCode code="getMaxUserSessionTimeoutPolicy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the Max User Session Timeout policy. When enabled, this policy sets the maximum web session timeout users are able to configure within their user preferences. Users preferences will be updated to match this value only if their current preference is set to a higher value. [Learn More](https://help.sumologic.com/Manage/Security/Set_a_Maximum_Web_Session_Timeout)</td>
</tr>
<tr>
    <td><a href="#setMaxUserSessionTimeoutPolicy"><CopyableCode code="setMaxUserSessionTimeoutPolicy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-maxUserSessionTimeout"><code>maxUserSessionTimeout</code></a></td>
    <td></td>
    <td>Set the Max User Session Timeout policy. When enabled, this policy sets the maximum web session timeout users are able to configure within their user preferences. Users preferences will be updated to match this value only if their current preference is set to a higher value. [Learn More](https://help.sumologic.com/Manage/Security/Set_a_Maximum_Web_Session_Timeout)</td>
</tr>
</tbody>
</table>

## Parameters

Parameters can be passed in the `WHERE` clause of a query. Check the [Methods](#methods) section to see which parameters are required or optional for each operation.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getMaxUserSessionTimeoutPolicy"
    values={[
        { label: 'getMaxUserSessionTimeoutPolicy', value: 'getMaxUserSessionTimeoutPolicy' }
    ]}
>
<TabItem value="getMaxUserSessionTimeoutPolicy">

Get the Max User Session Timeout policy. When enabled, this policy sets the maximum web session timeout users are able to configure within their user preferences. Users preferences will be updated to match this value only if their current preference is set to a higher value. [Learn More](https://help.sumologic.com/Manage/Security/Set_a_Maximum_Web_Session_Timeout)

```sql
SELECT
maxUserSessionTimeout
FROM sumologic.policies.max_user_session_timeout
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="setMaxUserSessionTimeoutPolicy"
    values={[
        { label: 'setMaxUserSessionTimeoutPolicy', value: 'setMaxUserSessionTimeoutPolicy' }
    ]}
>
<TabItem value="setMaxUserSessionTimeoutPolicy">

Set the Max User Session Timeout policy. When enabled, this policy sets the maximum web session timeout users are able to configure within their user preferences. Users preferences will be updated to match this value only if their current preference is set to a higher value. [Learn More](https://help.sumologic.com/Manage/Security/Set_a_Maximum_Web_Session_Timeout)

```sql
EXEC sumologic.policies.max_user_session_timeout.setMaxUserSessionTimeoutPolicy 
@region='{{ region }}' --required 
@@json=
'{
"maxUserSessionTimeout": "{{ maxUserSessionTimeout }}"
}'
;
```
</TabItem>
</Tabs>
