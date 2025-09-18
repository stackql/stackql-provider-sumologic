--- 
title: path
hide_title: false
hide_table_of_contents: false
keywords:
  - path
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

Creates, updates, deletes, gets or lists a <code>path</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>path</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.content.path" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getPathById"
    values={[
        { label: 'getPathById', value: 'getPathById' },
        { label: 'getItemByPath', value: 'getItemByPath' }
    ]}
>
<TabItem value="getPathById">

Full path of the content item.

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
    <td><CopyableCode code="path" /></td>
    <td><code>string</code></td>
    <td>Path of the content item. (example: /Library/Users/user@test.com/SampleFolder)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="getItemByPath">

Content item corresponding to the given path.

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
    <td><a href="#getPathById"><CopyableCode code="getPathById" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-contentId"><code>contentId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get full path of a content item with the given identifier.<br /></td>
</tr>
<tr>
    <td><a href="#getItemByPath"><CopyableCode code="getItemByPath" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-path"><code>path</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a content item corresponding to the given path.<br /><br />_Path is specified in the required query parameter `path`. The path should be URL encoded._ For example, to get "Acme Corp" folder of a user "user@sumo.com" you can use the following curl command:<br />  ```bash<br />  curl https://api.sumologic.com/api/v2/content/path?path=/Library/Users/user%40sumo.com/Acme%20Corp<br />  ```<br /><br /><br />The absolute path to a content item should be specified to get the item. The content library has "Library" folder at the root level. For items in "Personal" folder, the base path is "/Library/Users/user@sumo.com" where "user@sumo.com" is the email address of the user. For example if a user with email address `wile@acme.com` has `Rockets` folder inside Personal folder, the path of Rockets folder will be `/Library/Users/wile@acme.com/Rockets`.<br /><br />For items in "Admin Recommended" folder, the base path is "/Library/Admin Recommended". For example, given a folder `Acme` in Admin Recommended folder, the path will be `/Library/Admin Recommended/Acme`.</td>
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
    <td>Identifier of the content item to get the path.</td>
</tr>
<tr id="parameter-path">
    <td><CopyableCode code="path" /></td>
    <td><code>string</code></td>
    <td>Path of the content item to retrieve. (example: /Library/Users/user@sumo.com/SampleFolder)</td>
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
    defaultValue="getPathById"
    values={[
        { label: 'getPathById', value: 'getPathById' },
        { label: 'getItemByPath', value: 'getItemByPath' }
    ]}
>
<TabItem value="getPathById">

Get full path of a content item with the given identifier.<br />

```sql
SELECT
path
FROM sumologic.content.path
WHERE contentId = '{{ contentId }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="getItemByPath">

Get a content item corresponding to the given path.<br /><br />_Path is specified in the required query parameter `path`. The path should be URL encoded._ For example, to get "Acme Corp" folder of a user "user@sumo.com" you can use the following curl command:<br />  ```bash<br />  curl https://api.sumologic.com/api/v2/content/path?path=/Library/Users/user%40sumo.com/Acme%20Corp<br />  ```<br /><br /><br />The absolute path to a content item should be specified to get the item. The content library has "Library" folder at the root level. For items in "Personal" folder, the base path is "/Library/Users/user@sumo.com" where "user@sumo.com" is the email address of the user. For example if a user with email address `wile@acme.com` has `Rockets` folder inside Personal folder, the path of Rockets folder will be `/Library/Users/wile@acme.com/Rockets`.<br /><br />For items in "Admin Recommended" folder, the base path is "/Library/Admin Recommended". For example, given a folder `Acme` in Admin Recommended folder, the path will be `/Library/Admin Recommended/Acme`.

```sql
SELECT
id,
name,
createdAt,
createdBy,
itemType,
modifiedAt,
modifiedBy,
parentId,
permissions
FROM sumologic.content.path
WHERE path = '{{ path }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
