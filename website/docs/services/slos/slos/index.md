--- 
title: slos
hide_title: false
hide_table_of_contents: false
keywords:
  - slos
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

Creates, updates, deletes, gets or lists a <code>slos</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>slos</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.slos.slos" /></td></tr>
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
    <td><a href="#slosReadByIds"><CopyableCode code="slosReadByIds" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-ids"><code>ids</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Bulk read a slo or folder by the given identifiers from the slos library.</td>
</tr>
<tr>
    <td><a href="#slosCreate"><CopyableCode code="slosCreate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-parentId"><code>parentId</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Create a slo or folder in the slos library.</td>
</tr>
<tr>
    <td><a href="#slosDeleteByIds"><CopyableCode code="slosDeleteByIds" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-ids"><code>ids</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Bulk delete a slo or folder by the given identifiers in the slos library.</td>
</tr>
<tr>
    <td><a href="#slosReadById"><CopyableCode code="slosReadById" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a slo or folder from the slos library.</td>
</tr>
<tr>
    <td><a href="#slosUpdateById"><CopyableCode code="slosUpdateById" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a>, <a href="#parameter-version"><code>version</code></a></td>
    <td></td>
    <td>Update a slo or folder in the slos library.</td>
</tr>
<tr>
    <td><a href="#slosDeleteById"><CopyableCode code="slosDeleteById" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a slo or folder from the slos library.</td>
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
    <td>Identifier of the slo or folder to delete.</td>
</tr>
<tr id="parameter-ids">
    <td><CopyableCode code="ids" /></td>
    <td><code>array</code></td>
    <td>A comma-separated list of identifiers. (example: 0000000000000001,0000000000000002,0000000000000003)</td>
</tr>
<tr id="parameter-parentId">
    <td><CopyableCode code="parentId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the parent folder in which to create the slo or folder.</td>
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
    defaultValue="slosReadByIds"
    values={[
        { label: 'slosReadByIds', value: 'slosReadByIds' },
        { label: 'slosCreate', value: 'slosCreate' },
        { label: 'slosDeleteByIds', value: 'slosDeleteByIds' },
        { label: 'slosReadById', value: 'slosReadById' },
        { label: 'slosUpdateById', value: 'slosUpdateById' },
        { label: 'slosDeleteById', value: 'slosDeleteById' }
    ]}
>
<TabItem value="slosReadByIds">

Bulk read a slo or folder by the given identifiers from the slos library.

```sql
EXEC sumologic.slos.slos.slosReadByIds 
@ids='{{ ids }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
<TabItem value="slosCreate">

Create a slo or folder in the slos library.

```sql
EXEC sumologic.slos.slos.slosCreate 
@parentId='{{ parentId }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"name": "{{ name }}", 
"description": "{{ description }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="slosDeleteByIds">

Bulk delete a slo or folder by the given identifiers in the slos library.

```sql
EXEC sumologic.slos.slos.slosDeleteByIds 
@ids='{{ ids }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
<TabItem value="slosReadById">

Get a slo or folder from the slos library.

```sql
EXEC sumologic.slos.slos.slosReadById 
@id='{{ id }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
<TabItem value="slosUpdateById">

Update a slo or folder in the slos library.

```sql
EXEC sumologic.slos.slos.slosUpdateById 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"name": "{{ name }}", 
"description": "{{ description }}", 
"version": {{ version }}, 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="slosDeleteById">

Delete a slo or folder from the slos library.

```sql
EXEC sumologic.slos.slos.slosDeleteById 
@id='{{ id }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
</Tabs>
