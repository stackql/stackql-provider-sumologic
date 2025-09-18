--- 
title: disable
hide_title: false
hide_table_of_contents: false
keywords:
  - disable
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

Creates, updates, deletes, gets or lists a <code>disable</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>disable</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.service_allowlist.disable" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#disableAllowlisting"><CopyableCode code="disableAllowlisting" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-allowlistType"><code>allowlistType</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Disable service allowlisting functionality for login/API authentication or content sharing for the organization.</td>
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
<tr id="parameter-allowlistType">
    <td><CopyableCode code="allowlistType" /></td>
    <td><code>string</code></td>
    <td>The type of allowlisting to be disabled. It can be one of: `Login`, `Content`, or `Both`.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="disableAllowlisting"
    values={[
        { label: 'disableAllowlisting', value: 'disableAllowlisting' }
    ]}
>
<TabItem value="disableAllowlisting">

Disable service allowlisting functionality for login/API authentication or content sharing for the organization.

```sql
EXEC sumologic.service_allowlist.disable.disableAllowlisting 
@allowlistType='{{ allowlistType }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
</Tabs>
