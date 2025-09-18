--- 
title: quota
hide_title: false
hide_table_of_contents: false
keywords:
  - quota
  - fields
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

Creates, updates, deletes, gets or lists a <code>quota</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>quota</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.fields.quota" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getFieldQuota"
    values={[
        { label: 'getFieldQuota', value: 'getFieldQuota' }
    ]}
>
<TabItem value="getFieldQuota">

Current fields capacity usage (fields count).

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
    <td><CopyableCode code="quota" /></td>
    <td><code>integer (int32)</code></td>
    <td>Maximum number of fields available.</td>
</tr>
<tr>
    <td><CopyableCode code="remaining" /></td>
    <td><code>integer (int32)</code></td>
    <td>Current number of fields available.</td>
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
    <td><a href="#getFieldQuota"><CopyableCode code="getFieldQuota" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Every account has a limited number of fields available. This endpoint returns your account limitations and remaining quota.</td>
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
    defaultValue="getFieldQuota"
    values={[
        { label: 'getFieldQuota', value: 'getFieldQuota' }
    ]}
>
<TabItem value="getFieldQuota">

Every account has a limited number of fields available. This endpoint returns your account limitations and remaining quota.

```sql
SELECT
quota,
remaining
FROM sumologic.fields.quota
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
