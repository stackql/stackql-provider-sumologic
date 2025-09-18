--- 
title: permissions
hide_title: false
hide_table_of_contents: false
keywords:
  - permissions
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

Creates, updates, deletes, gets or lists a <code>permissions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>permissions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.content.permissions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getContentPermissions"
    values={[
        { label: 'getContentPermissions', value: 'getContentPermissions' }
    ]}
>
<TabItem value="getContentPermissions">

A list of permissions for the requested content item.

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
    <td><CopyableCode code="explicitPermissions" /></td>
    <td><code>array</code></td>
    <td>Explicitly assigned content permissions.</td>
</tr>
<tr>
    <td><CopyableCode code="implicitPermissions" /></td>
    <td><code>array</code></td>
    <td>Implicitly inherited content permissions.</td>
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
    <td><a href="#getContentPermissions"><CopyableCode code="getContentPermissions" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-explicitOnly"><code>explicitOnly</code></a>, <a href="#parameter-isAdminMode"><code>isAdminMode</code></a></td>
    <td>Returns content permissions of a content item with the given identifier.</td>
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
    <td>The identifier of the content item.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-explicitOnly">
    <td><CopyableCode code="explicitOnly" /></td>
    <td><code>boolean</code></td>
    <td>There are two permission types: explicit and implicit. Permissions specifically assigned to the content item are explicit. Permissions derived from a parent content item, like a folder are implicit. To return only explicit permissions set this to true.</td>
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
    defaultValue="getContentPermissions"
    values={[
        { label: 'getContentPermissions', value: 'getContentPermissions' }
    ]}
>
<TabItem value="getContentPermissions">

Returns content permissions of a content item with the given identifier.

```sql
SELECT
explicitPermissions,
implicitPermissions
FROM sumologic.content.permissions
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
AND explicitOnly = '{{ explicitOnly }}'
AND isAdminMode = '{{ isAdminMode }}'
;
```
</TabItem>
</Tabs>
