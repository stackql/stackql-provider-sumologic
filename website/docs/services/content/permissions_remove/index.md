--- 
title: permissions_remove
hide_title: false
hide_table_of_contents: false
keywords:
  - permissions_remove
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

Creates, updates, deletes, gets or lists a <code>permissions_remove</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>permissions_remove</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.content.permissions_remove" /></td></tr>
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
    <td><a href="#removeContentPermissions"><CopyableCode code="removeContentPermissions" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-contentPermissionAssignments"><code>contentPermissionAssignments</code></a>, <a href="#parameter-notificationMessage"><code>notificationMessage</code></a>, <a href="#parameter-notifyRecipients"><code>notifyRecipients</code></a></td>
    <td><a href="#parameter-isAdminMode"><code>isAdminMode</code></a></td>
    <td>Remove permissions from a content item with the given identifier.</td>
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
<tr id="parameter-isAdminMode">
    <td><CopyableCode code="isAdminMode" /></td>
    <td><code>string</code></td>
    <td>Set this to "true" if you want to perform the request as a Content Administrator.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="removeContentPermissions"
    values={[
        { label: 'removeContentPermissions', value: 'removeContentPermissions' }
    ]}
>
<TabItem value="removeContentPermissions">

Remove permissions from a content item with the given identifier.

```sql
EXEC sumologic.content.permissions_remove.removeContentPermissions 
@id='{{ id }}' --required, 
@region='{{ region }}' --required, 
@isAdminMode='{{ isAdminMode }}' 
@@json=
'{
"contentPermissionAssignments": "{{ contentPermissionAssignments }}", 
"notifyRecipients": {{ notifyRecipients }}, 
"notificationMessage": "{{ notificationMessage }}"
}'
;
```
</TabItem>
</Tabs>
