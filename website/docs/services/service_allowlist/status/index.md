--- 
title: status
hide_title: false
hide_table_of_contents: false
keywords:
  - status
  - service_allowlist
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

Creates, updates, deletes, gets or lists a <code>status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>status</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.service_allowlist.status" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getAllowlistingStatus"
    values={[
        { label: 'getAllowlistingStatus', value: 'getAllowlistingStatus' }
    ]}
>
<TabItem value="getAllowlistingStatus">

The status of service allowlisting for Content and Login.

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
    <td><CopyableCode code="contentEnabled" /></td>
    <td><code>boolean</code></td>
    <td>Whether service allowlisting is enabled for Content.</td>
</tr>
<tr>
    <td><CopyableCode code="loginEnabled" /></td>
    <td><code>boolean</code></td>
    <td>Whether service allowlisting is enabled for Login.</td>
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
    <td><a href="#getAllowlistingStatus"><CopyableCode code="getAllowlistingStatus" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the status of the service allowlisting functionality for login/API authentication or content sharing for the organization.</td>
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
    defaultValue="getAllowlistingStatus"
    values={[
        { label: 'getAllowlistingStatus', value: 'getAllowlistingStatus' }
    ]}
>
<TabItem value="getAllowlistingStatus">

Get the status of the service allowlisting functionality for login/API authentication or content sharing for the organization.

```sql
SELECT
contentEnabled,
loginEnabled
FROM sumologic.service_allowlist.status
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
