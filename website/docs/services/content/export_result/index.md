--- 
title: export_result
hide_title: false
hide_table_of_contents: false
keywords:
  - export_result
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

Creates, updates, deletes, gets or lists an <code>export_result</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>export_result</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.content.export_result" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getAsyncExportResult"
    values={[
        { label: 'getAsyncExportResult', value: 'getAsyncExportResult' }
    ]}
>
<TabItem value="getAsyncExportResult">

The result of export job.

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the item.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The content item type. **Note:**  - `MewboardSyncDefinition` _is depreciated, and will soon be removed. Please use_ `DashboardV2SyncDefinition`    _instead_.  - Dashboard links are not supported for dashboards.</td>
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
    <td><a href="#getAsyncExportResult"><CopyableCode code="getAsyncExportResult" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-contentId"><code>contentId</code></a>, <a href="#parameter-jobId"><code>jobId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-isAdminMode"><code>isAdminMode</code></a></td>
    <td>Get results from content export job for the given job identifier. The results from this export are incompatible with the Library import feature in the Sumo user interface.</td>
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
<tr id="parameter-contentId">
    <td><CopyableCode code="contentId" /></td>
    <td><code>string</code></td>
    <td>The identifier of the exported content item.</td>
</tr>
<tr id="parameter-jobId">
    <td><CopyableCode code="jobId" /></td>
    <td><code>string</code></td>
    <td>The identifier of the asynchronous job.</td>
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
    defaultValue="getAsyncExportResult"
    values={[
        { label: 'getAsyncExportResult', value: 'getAsyncExportResult' }
    ]}
>
<TabItem value="getAsyncExportResult">

Get results from content export job for the given job identifier. The results from this export are incompatible with the Library import feature in the Sumo user interface.

```sql
SELECT
name,
type
FROM sumologic.content.export_result
WHERE contentId = '{{ contentId }}' -- required
AND jobId = '{{ jobId }}' -- required
AND region = '{{ region }}' -- required
AND isAdminMode = '{{ isAdminMode }}'
;
```
</TabItem>
</Tabs>
