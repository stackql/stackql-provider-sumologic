--- 
title: folders_admin_recommended_result
hide_title: false
hide_table_of_contents: false
keywords:
  - folders_admin_recommended_result
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

Creates, updates, deletes, gets or lists a <code>folders_admin_recommended_result</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>folders_admin_recommended_result</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.content.folders_admin_recommended_result" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getAdminRecommendedFolderAsyncResult"
    values={[
        { label: 'getAdminRecommendedFolderAsyncResult', value: 'getAdminRecommendedFolderAsyncResult' }
    ]}
>
<TabItem value="getAdminRecommendedFolderAsyncResult">

Admin Recommended folder.

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
    <td><a href="#getAdminRecommendedFolderAsyncResult"><CopyableCode code="getAdminRecommendedFolderAsyncResult" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-jobId"><code>jobId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get result of an Admin Recommended job for the given job identifier. The result will be "Admin Recommended" folder with a list of top-level Admin Recommended content items in `children` field.</td>
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
<tr id="parameter-jobId">
    <td><CopyableCode code="jobId" /></td>
    <td><code>string</code></td>
    <td>The identifier of the asynchronous Admin Recommended folder job.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getAdminRecommendedFolderAsyncResult"
    values={[
        { label: 'getAdminRecommendedFolderAsyncResult', value: 'getAdminRecommendedFolderAsyncResult' }
    ]}
>
<TabItem value="getAdminRecommendedFolderAsyncResult">

Get result of an Admin Recommended job for the given job identifier. The result will be "Admin Recommended" folder with a list of top-level Admin Recommended content items in `children` field.

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
FROM sumologic.content.folders_admin_recommended_result
WHERE jobId = '{{ jobId }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
