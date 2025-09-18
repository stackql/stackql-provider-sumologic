--- 
title: copy
hide_title: false
hide_table_of_contents: false
keywords:
  - copy
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

Creates, updates, deletes, gets or lists a <code>copy</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>copy</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.content.copy" /></td></tr>
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
    <td><a href="#beginAsyncCopy"><CopyableCode code="beginAsyncCopy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-destinationFolder"><code>destinationFolder</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-isAdminMode"><code>isAdminMode</code></a></td>
    <td>Start an asynchronous content copy job with the given identifier to the destination folder. If the content item is a folder, everything under the folder is copied recursively.</td>
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
<tr id="parameter-destinationFolder">
    <td><CopyableCode code="destinationFolder" /></td>
    <td><code>string</code></td>
    <td>The identifier of the destination folder.</td>
</tr>
<tr id="parameter-id">
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The identifier of the content item to copy. Identifiers from the Library in the Sumo user interface are provided in decimal format which is incompatible with this API. The identifier needs to be in hexadecimal format.</td>
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

## Lifecycle Methods

<Tabs
    defaultValue="beginAsyncCopy"
    values={[
        { label: 'beginAsyncCopy', value: 'beginAsyncCopy' }
    ]}
>
<TabItem value="beginAsyncCopy">

Start an asynchronous content copy job with the given identifier to the destination folder. If the content item is a folder, everything under the folder is copied recursively.

```sql
EXEC sumologic.content.copy.beginAsyncCopy 
@id='{{ id }}' --required, 
@destinationFolder='{{ destinationFolder }}' --required, 
@region='{{ region }}' --required, 
@isAdminMode='{{ isAdminMode }}'
;
```
</TabItem>
</Tabs>
