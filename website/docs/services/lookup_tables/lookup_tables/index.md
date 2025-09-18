--- 
title: lookup_tables
hide_title: false
hide_table_of_contents: false
keywords:
  - lookup_tables
  - lookup_tables
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

Creates, updates, deletes, gets or lists a <code>lookup_tables</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>lookup_tables</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.lookup_tables.lookup_tables" /></td></tr>
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
    <td><a href="#createTable"><CopyableCode code="createTable" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__description"><code>data__description</code></a>, <a href="#parameter-data__fields"><code>data__fields</code></a>, <a href="#parameter-data__primaryKeys"><code>data__primaryKeys</code></a></td>
    <td></td>
    <td>Create a new lookup table by providing a schema and specifying its configuration. Providing parentFolderId<br /> is mandatory. Use the [getItemByPath] endpoint to get content id of a path.<br />Please check [Content management API] and [Folder management API] for all available options.</td>
</tr>
<tr>
    <td><a href="#deleteTable"><CopyableCode code="deleteTable" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a lookup table completely. <br /> **Warning:** `This operation cannot be undone`.</td>
</tr>
<tr>
    <td><a href="#lookupTableById"><CopyableCode code="lookupTableById" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a lookup table for the given identifier.</td>
</tr>
<tr>
    <td><a href="#updateTable"><CopyableCode code="updateTable" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-description"><code>description</code></a>, <a href="#parameter-ttl"><code>ttl</code></a></td>
    <td></td>
    <td>Edit the lookup table data. All the fields are mandatory in the request.</td>
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
    <td>Identifier of the lookup table.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="createTable"
    values={[
        { label: 'createTable', value: 'createTable' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createTable">

Create a new lookup table by providing a schema and specifying its configuration. Providing parentFolderId<br /> is mandatory. Use the [getItemByPath] endpoint to get content id of a path.<br />Please check [Content management API] and [Folder management API] for all available options.

```sql
INSERT INTO sumologic.lookup_tables.lookup_tables (
data__description,
data__fields,
data__primaryKeys,
data__ttl,
data__sizeLimitAction,
data__name,
data__parentFolderId,
region
)
SELECT 
'{{ description }}' /* required */,
'{{ fields }}' /* required */,
'{{ primaryKeys }}' /* required */,
{{ ttl }},
'{{ sizeLimitAction }}',
'{{ name }}',
'{{ parentFolderId }}',
'{{ region }}'
RETURNING
id,
name,
contentPath,
createdAt,
createdBy,
description,
fields,
modifiedAt,
modifiedBy,
parentFolderId,
primaryKeys,
size,
sizeLimitAction,
ttl
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: lookup_tables
  props:
    - name: region
      value: string
      description: Required parameter for the lookup_tables resource.
    - name: description
      value: string
      description: |
        The description of the lookup table.
    - name: fields
      value: array
      description: |
        The list of fields in the lookup table.
    - name: primaryKeys
      value: array
      description: |
        The names of the fields that make up the primary key for the lookup table. These will be a subset of the fields that the table will contain.
    - name: ttl
      value: integer
      description: |
        A time to live for each entry in the lookup table (in minutes). 365 days is the maximum time to live for each entry that you can specify. Setting it to 0 means that the records will not expire automatically.
      default: 0
    - name: sizeLimitAction
      value: string
      description: |
        The action that needs to be taken when the size limit is reached for the table. The possible values can be `StopIncomingMessages` or `DeleteOldData`. DeleteOldData will start deleting old data once size limit is reached whereas StopIncomingMessages will discard all the updates made to the lookup table once size limit is reached.
      default: StopIncomingMessages
    - name: name
      value: string
      description: |
        The name of the lookup table.
    - name: parentFolderId
      value: string
      description: |
        The parent-folder-path identifier of the lookup table in the Library.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteTable"
    values={[
        { label: 'deleteTable', value: 'deleteTable' }
    ]}
>
<TabItem value="deleteTable">

Delete a lookup table completely. <br /> **Warning:** `This operation cannot be undone`.

```sql
DELETE FROM sumologic.lookup_tables.lookup_tables
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="lookupTableById"
    values={[
        { label: 'lookupTableById', value: 'lookupTableById' },
        { label: 'updateTable', value: 'updateTable' }
    ]}
>
<TabItem value="lookupTableById">

Get a lookup table for the given identifier.

```sql
EXEC sumologic.lookup_tables.lookup_tables.lookupTableById 
@id='{{ id }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
<TabItem value="updateTable">

Edit the lookup table data. All the fields are mandatory in the request.

```sql
EXEC sumologic.lookup_tables.lookup_tables.updateTable 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"ttl": {{ ttl }}, 
"description": "{{ description }}", 
"sizeLimitAction": "{{ sizeLimitAction }}"
}'
;
```
</TabItem>
</Tabs>
