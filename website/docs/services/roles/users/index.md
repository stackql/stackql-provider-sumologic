--- 
title: users
hide_title: false
hide_table_of_contents: false
keywords:
  - users
  - roles
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

Creates, updates, deletes, gets or lists a <code>users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>users</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.roles.users" /></td></tr>
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
    <td><a href="#removeRoleFromUser"><CopyableCode code="removeRoleFromUser" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-roleId"><code>roleId</code></a>, <a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Remove a role from a user in the organization.</td>
</tr>
<tr>
    <td><a href="#assignRoleToUser"><CopyableCode code="assignRoleToUser" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-roleId"><code>roleId</code></a>, <a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Assign a role to a user in the organization.</td>
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
<tr id="parameter-roleId">
    <td><CopyableCode code="roleId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the role to assign.</td>
</tr>
<tr id="parameter-userId">
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user to assign the role to.</td>
</tr>
</tbody>
</table>

## `DELETE` examples

<Tabs
    defaultValue="removeRoleFromUser"
    values={[
        { label: 'removeRoleFromUser', value: 'removeRoleFromUser' }
    ]}
>
<TabItem value="removeRoleFromUser">

Remove a role from a user in the organization.

```sql
DELETE FROM sumologic.roles.users
WHERE roleId = '{{ roleId }}' --required
AND userId = '{{ userId }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="assignRoleToUser"
    values={[
        { label: 'assignRoleToUser', value: 'assignRoleToUser' }
    ]}
>
<TabItem value="assignRoleToUser">

Assign a role to a user in the organization.

```sql
EXEC sumologic.roles.users.assignRoleToUser 
@roleId='{{ roleId }}' --required, 
@userId='{{ userId }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
</Tabs>
