--- 
title: folders_import
hide_title: false
hide_table_of_contents: false
keywords:
  - folders_import
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

Creates, updates, deletes, gets or lists a <code>folders_import</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>folders_import</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.content.folders_import" /></td></tr>
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
    <td><a href="#beginAsyncImport"><CopyableCode code="beginAsyncImport" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-folderId"><code>folderId</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td><a href="#parameter-isAdminMode"><code>isAdminMode</code></a>, <a href="#parameter-overwrite"><code>overwrite</code></a></td>
    <td>Schedule an asynchronous import of content inside an existing folder with the given identifier. Import requests can be used to create or update content within a folder. Content items need to have a unique name within their folder. If there is already a content item with the same name in the folder, you can set the `overwrite` parameter to `true` to overwrite existing content items. By default, the `overwrite` parameter is set to `false`, where the import will fail if a content item with the same name already exist. Keep in mind when importing large folders that there is a limit of 1000 content objects that can be imported at once. If you want to import more than 1000 content objects, then be sure to split the import into batches of 1000 objects or less.</td>
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
<tr id="parameter-folderId">
    <td><CopyableCode code="folderId" /></td>
    <td><code>string</code></td>
    <td>The identifier of the folder to import into. Identifiers from the Library in the Sumo user interface are provided in decimal format which is incompatible with this API. The identifier needs to be in hexadecimal format.</td>
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
<tr id="parameter-overwrite">
    <td><CopyableCode code="overwrite" /></td>
    <td><code>boolean</code></td>
    <td>Set this to "true" to overwrite a content item if the name already exists.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="beginAsyncImport"
    values={[
        { label: 'beginAsyncImport', value: 'beginAsyncImport' }
    ]}
>
<TabItem value="beginAsyncImport">

Schedule an asynchronous import of content inside an existing folder with the given identifier. Import requests can be used to create or update content within a folder. Content items need to have a unique name within their folder. If there is already a content item with the same name in the folder, you can set the `overwrite` parameter to `true` to overwrite existing content items. By default, the `overwrite` parameter is set to `false`, where the import will fail if a content item with the same name already exist. Keep in mind when importing large folders that there is a limit of 1000 content objects that can be imported at once. If you want to import more than 1000 content objects, then be sure to split the import into batches of 1000 objects or less.

```sql
EXEC sumologic.content.folders_import.beginAsyncImport 
@folderId='{{ folderId }}' --required, 
@region='{{ region }}' --required, 
@isAdminMode='{{ isAdminMode }}', 
@overwrite={{ overwrite }} 
@@json=
'{
"type": "{{ type }}", 
"name": "{{ name }}"
}'
;
```
</TabItem>
</Tabs>
