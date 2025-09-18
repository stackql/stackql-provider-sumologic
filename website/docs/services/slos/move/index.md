--- 
title: move
hide_title: false
hide_table_of_contents: false
keywords:
  - move
  - slos
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

Creates, updates, deletes, gets or lists a <code>move</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>move</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.slos.move" /></td></tr>
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
    <td><a href="#slosMove"><CopyableCode code="slosMove" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-parentId"><code>parentId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Move a slo or folder to a different location in the slos library.</td>
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
<tr id="parameter-id">
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Identifier of the slo or folder to move.</td>
</tr>
<tr id="parameter-parentId">
    <td><CopyableCode code="parentId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the parent folder to move the slo or folder to.</td>
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
    defaultValue="slosMove"
    values={[
        { label: 'slosMove', value: 'slosMove' }
    ]}
>
<TabItem value="slosMove">

Move a slo or folder to a different location in the slos library.

```sql
EXEC sumologic.slos.move.slosMove 
@id='{{ id }}' --required, 
@parentId='{{ parentId }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
</Tabs>
