--- 
title: monitors
hide_title: false
hide_table_of_contents: false
keywords:
  - monitors
  - monitors
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

Creates, updates, deletes, gets or lists a <code>monitors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>monitors</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.monitors.monitors" /></td></tr>
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
    <td><a href="#monitorsReadByIds"><CopyableCode code="monitorsReadByIds" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-ids"><code>ids</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Bulk read a monitor or folder by the given identifiers from the monitors library.</td>
</tr>
<tr>
    <td><a href="#monitorsCreate"><CopyableCode code="monitorsCreate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-parentId"><code>parentId</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Create a monitor or folder in the monitors library.</td>
</tr>
<tr>
    <td><a href="#monitorsDeleteByIds"><CopyableCode code="monitorsDeleteByIds" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-ids"><code>ids</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Bulk delete a monitor or folder by the given identifiers in the monitors library.</td>
</tr>
<tr>
    <td><a href="#monitorsReadById"><CopyableCode code="monitorsReadById" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a monitor or folder from the monitors library.</td>
</tr>
<tr>
    <td><a href="#monitorsUpdateById"><CopyableCode code="monitorsUpdateById" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a>, <a href="#parameter-version"><code>version</code></a></td>
    <td></td>
    <td>Update a monitor or folder in the monitors library.</td>
</tr>
<tr>
    <td><a href="#monitorsDeleteById"><CopyableCode code="monitorsDeleteById" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a monitor or folder from the monitors library.</td>
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
    <td>Identifier of the monitor or folder to delete.</td>
</tr>
<tr id="parameter-ids">
    <td><CopyableCode code="ids" /></td>
    <td><code>array</code></td>
    <td>A comma-separated list of identifiers. (example: 0000000000000001,0000000000000002,0000000000000003)</td>
</tr>
<tr id="parameter-parentId">
    <td><CopyableCode code="parentId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the parent folder in which to create the monitor or folder.</td>
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
    defaultValue="monitorsReadByIds"
    values={[
        { label: 'monitorsReadByIds', value: 'monitorsReadByIds' },
        { label: 'monitorsCreate', value: 'monitorsCreate' },
        { label: 'monitorsDeleteByIds', value: 'monitorsDeleteByIds' },
        { label: 'monitorsReadById', value: 'monitorsReadById' },
        { label: 'monitorsUpdateById', value: 'monitorsUpdateById' },
        { label: 'monitorsDeleteById', value: 'monitorsDeleteById' }
    ]}
>
<TabItem value="monitorsReadByIds">

Bulk read a monitor or folder by the given identifiers from the monitors library.

```sql
EXEC sumologic.monitors.monitors.monitorsReadByIds 
@ids='{{ ids }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
<TabItem value="monitorsCreate">

Create a monitor or folder in the monitors library.

```sql
EXEC sumologic.monitors.monitors.monitorsCreate 
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
<TabItem value="monitorsDeleteByIds">

Bulk delete a monitor or folder by the given identifiers in the monitors library.

```sql
EXEC sumologic.monitors.monitors.monitorsDeleteByIds 
@ids='{{ ids }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
<TabItem value="monitorsReadById">

Get a monitor or folder from the monitors library.

```sql
EXEC sumologic.monitors.monitors.monitorsReadById 
@id='{{ id }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
<TabItem value="monitorsUpdateById">

Update a monitor or folder in the monitors library.

```sql
EXEC sumologic.monitors.monitors.monitorsUpdateById 
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
<TabItem value="monitorsDeleteById">

Delete a monitor or folder from the monitors library.

```sql
EXEC sumologic.monitors.monitors.monitorsDeleteById 
@id='{{ id }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
</Tabs>
