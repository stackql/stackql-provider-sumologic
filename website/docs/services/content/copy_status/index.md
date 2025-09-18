--- 
title: copy_status
hide_title: false
hide_table_of_contents: false
keywords:
  - copy_status
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

Creates, updates, deletes, gets or lists a <code>copy_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>copy_status</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.content.copy_status" /></td></tr>
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
    <td><a href="#asyncCopyStatus"><CopyableCode code="asyncCopyStatus" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-jobId"><code>jobId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-isAdminMode"><code>isAdminMode</code></a></td>
    <td>Get the status of the copy request with the given job identifier. On success, field `statusMessage` will contain identifier of the newly copied content in format: `id: &#123;hexIdentifier&#125;`.<br /></td>
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
    <td>The identifier of the content which was copied.</td>
</tr>
<tr id="parameter-jobId">
    <td><CopyableCode code="jobId" /></td>
    <td><code>string</code></td>
    <td>The identifier of the asynchronous copy request job.</td>
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
    defaultValue="asyncCopyStatus"
    values={[
        { label: 'asyncCopyStatus', value: 'asyncCopyStatus' }
    ]}
>
<TabItem value="asyncCopyStatus">

Get the status of the copy request with the given job identifier. On success, field `statusMessage` will contain identifier of the newly copied content in format: `id: &#123;hexIdentifier&#125;`.<br />

```sql
EXEC sumologic.content.copy_status.asyncCopyStatus 
@id='{{ id }}' --required, 
@jobId='{{ jobId }}' --required, 
@region='{{ region }}' --required, 
@isAdminMode='{{ isAdminMode }}'
;
```
</TabItem>
</Tabs>
