--- 
title: folders_global
hide_title: false
hide_table_of_contents: false
keywords:
  - folders_global
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

Creates, updates, deletes, gets or lists a <code>folders_global</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>folders_global</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.content.folders_global" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getGlobalFolderAsync"
    values={[
        { label: 'getGlobalFolderAsync', value: 'getGlobalFolderAsync' }
    ]}
>
<TabItem value="getGlobalFolderAsync">

An asynchronous job to get a list of all content items been scheduled.

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
    <td>Identifier to get the status of an asynchronous job. (example: C03E086C137F38B4)</td>
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
    <td><a href="#getGlobalFolderAsync"><CopyableCode code="getGlobalFolderAsync" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-isAdminMode"><code>isAdminMode</code></a></td>
    <td>Schedule an asynchronous job to get Global View. Global View contains all top-level content items that a user has permissions to view in the organization. User can traverse the top-level folders using [GetFolder API] to get rest of the content items. Make sure you set `isAdminMode` header parameter to `true` when traversing top-level items.<br /><br />_Global View is not a real folder, therefore there is no folder identifier associated with it_.<br /><br />_You get back a identifier of asynchronous job in response to this endpoint. See [Asynchronous-Request] section for more details on how to work with asynchronous request._</td>
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
    defaultValue="getGlobalFolderAsync"
    values={[
        { label: 'getGlobalFolderAsync', value: 'getGlobalFolderAsync' }
    ]}
>
<TabItem value="getGlobalFolderAsync">

Schedule an asynchronous job to get Global View. Global View contains all top-level content items that a user has permissions to view in the organization. User can traverse the top-level folders using [GetFolder API] to get rest of the content items. Make sure you set `isAdminMode` header parameter to `true` when traversing top-level items.<br /><br />_Global View is not a real folder, therefore there is no folder identifier associated with it_.<br /><br />_You get back a identifier of asynchronous job in response to this endpoint. See [Asynchronous-Request] section for more details on how to work with asynchronous request._

```sql
SELECT
id
FROM sumologic.content.folders_global
WHERE region = '{{ region }}' -- required
AND isAdminMode = '{{ isAdminMode }}'
;
```
</TabItem>
</Tabs>
