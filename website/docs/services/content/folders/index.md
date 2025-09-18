--- 
title: folders
hide_title: false
hide_table_of_contents: false
keywords:
  - folders
  - content
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

Creates, updates, deletes, gets or lists a <code>folders</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>folders</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.content.folders" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getFolder"
    values={[
        { label: 'getFolder', value: 'getFolder' }
    ]}
>
<TabItem value="getFolder">

Folder that was requested.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Identifier of the content item. (example: 000000000C1C17C6)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the content item. (example: Personal)</td>
</tr>
<tr>
    <td><CopyableCode code="children" /></td>
    <td><code>array</code></td>
    <td>A list of the content items.</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Creation timestamp in UTC in [RFC3339](https://tools.ietf.org/html/rfc3339) format. (example: 2018-10-16T09:10:00Z)</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user who created the resource. (example: 0000000006743FDD)</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>The description of the folder. (example: This is a sample folder.)</td>
</tr>
<tr>
    <td><CopyableCode code="itemType" /></td>
    <td><code>string</code></td>
    <td>Type of the content item. Supported values are:   1. Folder   2. Search   3. Report (for old dashboards)   4. Dashboard (for new dashboards)   5. Lookups (example: Folder)</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Last modification timestamp in UTC. (example: 2018-10-16T09:10:00Z)</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedBy" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user who last modified the resource. (example: 0000000006743FE8)</td>
</tr>
<tr>
    <td><CopyableCode code="parentId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the parent content item. (example: 0000000001C41EF2)</td>
</tr>
<tr>
    <td><CopyableCode code="permissions" /></td>
    <td><code>array</code></td>
    <td>List of permissions the user has on the content item.</td>
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
    <td><a href="#getFolder"><CopyableCode code="getFolder" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-isAdminMode"><code>isAdminMode</code></a></td>
    <td>Get a folder with the given identifier. Set the header parameter `isAdminMode` to `"true"` if fetching a folder inside "Admin Recommended" folder.</td>
</tr>
<tr>
    <td><a href="#createFolder"><CopyableCode code="createFolder" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__parentId"><code>data__parentId</code></a></td>
    <td><a href="#parameter-isAdminMode"><code>isAdminMode</code></a></td>
    <td>Creates a new folder under the given parent folder. Set the header parameter `isAdminMode` to `"true"` to create a folder inside "Admin Recommended" folder.</td>
</tr>
<tr>
    <td><a href="#updateFolder"><CopyableCode code="updateFolder" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-isAdminMode"><code>isAdminMode</code></a></td>
    <td>Update an existing folder with the given identifier. Set the header parameter `isAdminMode` to `"true"` if updating a folder inside "Admin Recommended" folder.</td>
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
    <td>Identifier of the folder to update.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-isAdminMode">
    <td><CopyableCode code="isAdminMode" /></td>
    <td><code>string</code></td>
    <td>Set this to "true" if you want to perform the request as a Content Administrator.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getFolder"
    values={[
        { label: 'getFolder', value: 'getFolder' }
    ]}
>
<TabItem value="getFolder">

Get a folder with the given identifier. Set the header parameter `isAdminMode` to `"true"` if fetching a folder inside "Admin Recommended" folder.

```sql
SELECT
id,
name,
children,
createdAt,
createdBy,
description,
itemType,
modifiedAt,
modifiedBy,
parentId,
permissions
FROM sumologic.content.folders
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
AND isAdminMode = '{{ isAdminMode }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createFolder"
    values={[
        { label: 'createFolder', value: 'createFolder' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createFolder">

Creates a new folder under the given parent folder. Set the header parameter `isAdminMode` to `"true"` to create a folder inside "Admin Recommended" folder.

```sql
INSERT INTO sumologic.content.folders (
data__name,
data__description,
data__parentId,
region,
isAdminMode
)
SELECT 
'{{ name }}' /* required */,
'{{ description }}',
'{{ parentId }}' /* required */,
'{{ region }}',
'{{ isAdminMode }}'
RETURNING
id,
name,
children,
createdAt,
createdBy,
description,
itemType,
modifiedAt,
modifiedBy,
parentId,
permissions
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: folders
  props:
    - name: region
      value: string
      description: Required parameter for the folders resource.
    - name: name
      value: string
      description: |
        The name of the folder.
    - name: description
      value: string
      description: |
        The description of the folder.
    - name: parentId
      value: string
      description: |
        The identifier of the parent folder.
    - name: isAdminMode
      value: string
      description: Set this to "true" if you want to perform the request as a Content Administrator.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateFolder"
    values={[
        { label: 'updateFolder', value: 'updateFolder' }
    ]}
>
<TabItem value="updateFolder">

Update an existing folder with the given identifier. Set the header parameter `isAdminMode` to `"true"` if updating a folder inside "Admin Recommended" folder.

```sql
EXEC sumologic.content.folders.updateFolder 
@id='{{ id }}' --required, 
@region='{{ region }}' --required, 
@isAdminMode='{{ isAdminMode }}' 
@@json=
'{
"name": "{{ name }}", 
"description": "{{ description }}"
}'
;
```
</TabItem>
</Tabs>
