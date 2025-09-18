--- 
title: upload
hide_title: false
hide_table_of_contents: false
keywords:
  - upload
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

Creates, updates, deletes, gets or lists a <code>upload</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>upload</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.lookup_tables.upload" /></td></tr>
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
    <td><a href="#uploadFile"><CopyableCode code="uploadFile" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-file"><code>file</code></a></td>
    <td><a href="#parameter-merge"><code>merge</code></a>, <a href="#parameter-fileEncoding"><code>fileEncoding</code></a></td>
    <td>Create a request to populate a lookup table with a CSV file.</td>
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
    <td>Identifier of the lookup table to populate.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-fileEncoding">
    <td><CopyableCode code="fileEncoding" /></td>
    <td><code>string</code></td>
    <td>File encoding of file being uploaded.</td>
</tr>
<tr id="parameter-merge">
    <td><CopyableCode code="merge" /></td>
    <td><code>boolean</code></td>
    <td>This indicates whether the file contents will be merged with existing data in the lookup table or not. If this is true then data with the same primary keys will be updated while the rest of the rows will be appended. By default, merge is false. The response includes a request identifier that you need to use in the [Request Status API] to track the status of the upload request.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="uploadFile"
    values={[
        { label: 'uploadFile', value: 'uploadFile' }
    ]}
>
<TabItem value="uploadFile">

Create a request to populate a lookup table with a CSV file.

```sql
EXEC sumologic.lookup_tables.upload.uploadFile 
@id='{{ id }}' --required, 
@region='{{ region }}' --required, 
@merge={{ merge }}, 
@fileEncoding='{{ fileEncoding }}' 
@@json=
'{
"file": "{{ file }}"
}'
;
```
</TabItem>
</Tabs>
