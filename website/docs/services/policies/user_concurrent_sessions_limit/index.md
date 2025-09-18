--- 
title: user_concurrent_sessions_limit
hide_title: false
hide_table_of_contents: false
keywords:
  - user_concurrent_sessions_limit
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

Creates, updates, deletes, gets or lists a <code>user_concurrent_sessions_limit</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>user_concurrent_sessions_limit</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.policies.user_concurrent_sessions_limit" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getUserConcurrentSessionsLimitPolicy"
    values={[
        { label: 'getUserConcurrentSessionsLimitPolicy', value: 'getUserConcurrentSessionsLimitPolicy' }
    ]}
>
<TabItem value="getUserConcurrentSessionsLimitPolicy">

The User Concurrent Sessions Limit policy.

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
    <td><CopyableCode code="enabled" /></td>
    <td><code>boolean</code></td>
    <td>Whether the User Concurrent Sessions Limit policy is enabled.</td>
</tr>
<tr>
    <td><CopyableCode code="maxConcurrentSessions" /></td>
    <td><code>integer (int32)</code></td>
    <td>Maximum number of concurrent sessions a user may have.</td>
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
    <td><a href="#getUserConcurrentSessionsLimitPolicy"><CopyableCode code="getUserConcurrentSessionsLimitPolicy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the User Concurrent Sessions Limit policy. When enabled, the number of concurrent sessions a user may have is limited to the value entered. If a user exceeds the allowed number of sessions, the user's oldest session will be logged out to accommodate the new one. Disabling this policy means a user may have an unlimited number of concurrent sessions. [Learn More](https://help.sumologic.com/Manage/Security/Set_a_Limit_for_User_Concurrent_Sessions)</td>
</tr>
<tr>
    <td><a href="#setUserConcurrentSessionsLimitPolicy"><CopyableCode code="setUserConcurrentSessionsLimitPolicy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-enabled"><code>enabled</code></a></td>
    <td></td>
    <td>Set the User Concurrent Sessions Limit policy. When enabled, the number of concurrent sessions a user may have is limited to the value entered. If a user exceeds the allowed number of sessions, the user's oldest session will be logged out to accommodate the new one. Disabling this policy means a user may have an unlimited number of concurrent sessions. [Learn More](https://help.sumologic.com/Manage/Security/Set_a_Limit_for_User_Concurrent_Sessions)</td>
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
    defaultValue="getUserConcurrentSessionsLimitPolicy"
    values={[
        { label: 'getUserConcurrentSessionsLimitPolicy', value: 'getUserConcurrentSessionsLimitPolicy' }
    ]}
>
<TabItem value="getUserConcurrentSessionsLimitPolicy">

Get the User Concurrent Sessions Limit policy. When enabled, the number of concurrent sessions a user may have is limited to the value entered. If a user exceeds the allowed number of sessions, the user's oldest session will be logged out to accommodate the new one. Disabling this policy means a user may have an unlimited number of concurrent sessions. [Learn More](https://help.sumologic.com/Manage/Security/Set_a_Limit_for_User_Concurrent_Sessions)

```sql
SELECT
enabled,
maxConcurrentSessions
FROM sumologic.policies.user_concurrent_sessions_limit
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="setUserConcurrentSessionsLimitPolicy"
    values={[
        { label: 'setUserConcurrentSessionsLimitPolicy', value: 'setUserConcurrentSessionsLimitPolicy' }
    ]}
>
<TabItem value="setUserConcurrentSessionsLimitPolicy">

Set the User Concurrent Sessions Limit policy. When enabled, the number of concurrent sessions a user may have is limited to the value entered. If a user exceeds the allowed number of sessions, the user's oldest session will be logged out to accommodate the new one. Disabling this policy means a user may have an unlimited number of concurrent sessions. [Learn More](https://help.sumologic.com/Manage/Security/Set_a_Limit_for_User_Concurrent_Sessions)

```sql
EXEC sumologic.policies.user_concurrent_sessions_limit.setUserConcurrentSessionsLimitPolicy 
@region='{{ region }}' --required 
@@json=
'{
"enabled": {{ enabled }}, 
"maxConcurrentSessions": {{ maxConcurrentSessions }}
}'
;
```
</TabItem>
</Tabs>
