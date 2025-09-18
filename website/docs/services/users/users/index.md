--- 
title: users
hide_title: false
hide_table_of_contents: false
keywords:
  - users
  - users
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
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.users.users" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getUser"
    values={[
        { label: 'getUser', value: 'getUser' },
        { label: 'listUsers', value: 'listUsers' }
    ]}
>
<TabItem value="getUser">

User object that was requested.

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
    <td>Unique identifier for the user. (example: 000000000FE20FE2)</td>
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
    <td><CopyableCode code="email" /></td>
    <td><code>string (email)</code></td>
    <td>Email address of the user. (example: johndoe@acme.com)</td>
</tr>
<tr>
    <td><CopyableCode code="firstName" /></td>
    <td><code>string</code></td>
    <td>First name of the user. (example: John)</td>
</tr>
<tr>
    <td><CopyableCode code="isActive" /></td>
    <td><code>boolean</code></td>
    <td>True if the user is active.</td>
</tr>
<tr>
    <td><CopyableCode code="isLocked" /></td>
    <td><code>boolean</code></td>
    <td>This has the value `true` if the user's account has been locked. If a user tries to log into their account several times and fails, his or her account will be locked for security reasons.</td>
</tr>
<tr>
    <td><CopyableCode code="isMfaEnabled" /></td>
    <td><code>boolean</code></td>
    <td>True if multi factor authentication is enabled for the user.</td>
</tr>
<tr>
    <td><CopyableCode code="lastLoginTimestamp" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp of the last login for the user in UTC. Will be null if the user has never logged in.</td>
</tr>
<tr>
    <td><CopyableCode code="lastName" /></td>
    <td><code>string</code></td>
    <td>Last name of the user. (example: Doe)</td>
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
    <td><CopyableCode code="roleIds" /></td>
    <td><code>array</code></td>
    <td>List of roleIds associated with the user.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="listUsers">

A paginated list of users in the organization.

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
    <td>Unique identifier for the user. (example: 000000000FE20FE2)</td>
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
    <td><CopyableCode code="email" /></td>
    <td><code>string (email)</code></td>
    <td>Email address of the user. (example: johndoe@acme.com)</td>
</tr>
<tr>
    <td><CopyableCode code="firstName" /></td>
    <td><code>string</code></td>
    <td>First name of the user. (example: John)</td>
</tr>
<tr>
    <td><CopyableCode code="isActive" /></td>
    <td><code>boolean</code></td>
    <td>True if the user is active.</td>
</tr>
<tr>
    <td><CopyableCode code="isLocked" /></td>
    <td><code>boolean</code></td>
    <td>This has the value `true` if the user's account has been locked. If a user tries to log into their account several times and fails, his or her account will be locked for security reasons.</td>
</tr>
<tr>
    <td><CopyableCode code="isMfaEnabled" /></td>
    <td><code>boolean</code></td>
    <td>True if multi factor authentication is enabled for the user.</td>
</tr>
<tr>
    <td><CopyableCode code="lastLoginTimestamp" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp of the last login for the user in UTC. Will be null if the user has never logged in.</td>
</tr>
<tr>
    <td><CopyableCode code="lastName" /></td>
    <td><code>string</code></td>
    <td>Last name of the user. (example: Doe)</td>
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
    <td><CopyableCode code="roleIds" /></td>
    <td><code>array</code></td>
    <td>List of roleIds associated with the user.</td>
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
    <td><a href="#getUser"><CopyableCode code="getUser" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a user with the given identifier from the organization.</td>
</tr>
<tr>
    <td><a href="#listUsers"><CopyableCode code="listUsers" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a>, <a href="#parameter-sortBy"><code>sortBy</code></a>, <a href="#parameter-email"><code>email</code></a></td>
    <td>Get a list of all users in the organization. The response is paginated with a default limit of 100 users per page.</td>
</tr>
<tr>
    <td><a href="#createUser"><CopyableCode code="createUser" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__email"><code>data__email</code></a>, <a href="#parameter-data__firstName"><code>data__firstName</code></a>, <a href="#parameter-data__lastName"><code>data__lastName</code></a>, <a href="#parameter-data__roleIds"><code>data__roleIds</code></a></td>
    <td></td>
    <td>Create a new user in the organization.</td>
</tr>
<tr>
    <td><a href="#deleteUser"><CopyableCode code="deleteUser" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-transferTo"><code>transferTo</code></a>, <a href="#parameter-deleteContent"><code>deleteContent</code></a></td>
    <td>Delete a user with the given identifier from the organization and transfer their content to the user with the identifier specified in "transferTo".</td>
</tr>
<tr>
    <td><a href="#updateUser"><CopyableCode code="updateUser" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-firstName"><code>firstName</code></a>, <a href="#parameter-isActive"><code>isActive</code></a>, <a href="#parameter-lastName"><code>lastName</code></a>, <a href="#parameter-roleIds"><code>roleIds</code></a></td>
    <td></td>
    <td>Update an existing user in the organization.</td>
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
    <td>Identifier of the user to update.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-deleteContent">
    <td><CopyableCode code="deleteContent" /></td>
    <td><code>boolean</code></td>
    <td>Whether to delete content from the deleted user or not. <br /> **Warning:** If `deleteContent` is set to `true`, all of the content for the user being deleted is permanently deleted and cannot be recovered.</td>
</tr>
<tr id="parameter-email">
    <td><CopyableCode code="email" /></td>
    <td><code>string</code></td>
    <td>Find user with the given email address.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit the number of users returned in the response. The number of users returned may be less than the `limit`.</td>
</tr>
<tr id="parameter-sortBy">
    <td><CopyableCode code="sortBy" /></td>
    <td><code>string</code></td>
    <td>Sort the list of users by the `firstName`, `lastName`, or `email` field.</td>
</tr>
<tr id="parameter-token">
    <td><CopyableCode code="token" /></td>
    <td><code>string</code></td>
    <td>Continuation token to get the next page of results. A page object with the next continuation token is returned in the response body. Subsequent GET requests should specify the continuation token to get the next page of results. `token` is set to null when no more pages are left.</td>
</tr>
<tr id="parameter-transferTo">
    <td><CopyableCode code="transferTo" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user to receive the transfer of content from the deleted user. <br /> **Note:** If `deleteContent` is not set to `true`, and no user identifier is specified in `transferTo`, content from the deleted user is transferred to the executing user.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getUser"
    values={[
        { label: 'getUser', value: 'getUser' },
        { label: 'listUsers', value: 'listUsers' }
    ]}
>
<TabItem value="getUser">

Get a user with the given identifier from the organization.

```sql
SELECT
id,
createdAt,
createdBy,
email,
firstName,
isActive,
isLocked,
isMfaEnabled,
lastLoginTimestamp,
lastName,
modifiedAt,
modifiedBy,
roleIds
FROM sumologic.users.users
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="listUsers">

Get a list of all users in the organization. The response is paginated with a default limit of 100 users per page.

```sql
SELECT
id,
createdAt,
createdBy,
email,
firstName,
isActive,
isLocked,
isMfaEnabled,
lastLoginTimestamp,
lastName,
modifiedAt,
modifiedBy,
roleIds
FROM sumologic.users.users
WHERE region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
AND sortBy = '{{ sortBy }}'
AND email = '{{ email }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createUser"
    values={[
        { label: 'createUser', value: 'createUser' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createUser">

Create a new user in the organization.

```sql
INSERT INTO sumologic.users.users (
data__firstName,
data__lastName,
data__email,
data__roleIds,
region
)
SELECT 
'{{ firstName }}' /* required */,
'{{ lastName }}' /* required */,
'{{ email }}' /* required */,
'{{ roleIds }}' /* required */,
'{{ region }}'
RETURNING
id,
createdAt,
createdBy,
email,
firstName,
isActive,
isLocked,
isMfaEnabled,
lastLoginTimestamp,
lastName,
modifiedAt,
modifiedBy,
roleIds
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: users
  props:
    - name: region
      value: string
      description: Required parameter for the users resource.
    - name: firstName
      value: string
      description: |
        First name of the user.
    - name: lastName
      value: string
      description: |
        Last name of the user.
    - name: email
      value: string
      description: |
        Email address of the user.
    - name: roleIds
      value: array
      description: |
        List of roleIds associated with the user.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteUser"
    values={[
        { label: 'deleteUser', value: 'deleteUser' }
    ]}
>
<TabItem value="deleteUser">

Delete a user with the given identifier from the organization and transfer their content to the user with the identifier specified in "transferTo".

```sql
DELETE FROM sumologic.users.users
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
AND transferTo = '{{ transferTo }}'
AND deleteContent = '{{ deleteContent }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateUser"
    values={[
        { label: 'updateUser', value: 'updateUser' }
    ]}
>
<TabItem value="updateUser">

Update an existing user in the organization.

```sql
EXEC sumologic.users.users.updateUser 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"firstName": "{{ firstName }}", 
"lastName": "{{ lastName }}", 
"isActive": {{ isActive }}, 
"roleIds": "{{ roleIds }}"
}'
;
```
</TabItem>
</Tabs>
