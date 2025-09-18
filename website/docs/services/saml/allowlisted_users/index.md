--- 
title: allowlisted_users
hide_title: false
hide_table_of_contents: false
keywords:
  - allowlisted_users
  - saml
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

Creates, updates, deletes, gets or lists an <code>allowlisted_users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>allowlisted_users</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.saml.allowlisted_users" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getAllowlistedUsers"
    values={[
        { label: 'getAllowlistedUsers', value: 'getAllowlistedUsers' }
    ]}
>
<TabItem value="getAllowlistedUsers">

A list of allowlisted users from the organization.

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
    <td><CopyableCode code="canManageSaml" /></td>
    <td><code>boolean</code></td>
    <td>If the user can manage SAML Configurations.</td>
</tr>
<tr>
    <td><CopyableCode code="email" /></td>
    <td><code>string</code></td>
    <td>Email of the user. (example: john@sumologic.com)</td>
</tr>
<tr>
    <td><CopyableCode code="firstName" /></td>
    <td><code>string</code></td>
    <td>First name of the user.</td>
</tr>
<tr>
    <td><CopyableCode code="isActive" /></td>
    <td><code>boolean</code></td>
    <td>Checks if the user is active.</td>
</tr>
<tr>
    <td><CopyableCode code="lastLogin" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp of the last login of the user.</td>
</tr>
<tr>
    <td><CopyableCode code="lastName" /></td>
    <td><code>string</code></td>
    <td>Last name of the user.</td>
</tr>
<tr>
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>Unique identifier of the user.</td>
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
    <td><a href="#getAllowlistedUsers"><CopyableCode code="getAllowlistedUsers" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a list of allowlisted users.</td>
</tr>
<tr>
    <td><a href="#createAllowlistedUser"><CopyableCode code="createAllowlistedUser" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Allowlist a user from SAML lockdown allowing them to sign in using a password in addition to SAML.</td>
</tr>
<tr>
    <td><a href="#deleteAllowlistedUser"><CopyableCode code="deleteAllowlistedUser" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Remove an allowlisted user requiring them to sign in using SAML.</td>
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
<tr id="parameter-userId">
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>Identifier of user that will no longer be allowlisted from SAML Lockdown.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getAllowlistedUsers"
    values={[
        { label: 'getAllowlistedUsers', value: 'getAllowlistedUsers' }
    ]}
>
<TabItem value="getAllowlistedUsers">

Get a list of allowlisted users.

```sql
SELECT
canManageSaml,
email,
firstName,
isActive,
lastLogin,
lastName,
userId
FROM sumologic.saml.allowlisted_users
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createAllowlistedUser"
    values={[
        { label: 'createAllowlistedUser', value: 'createAllowlistedUser' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createAllowlistedUser">

Allowlist a user from SAML lockdown allowing them to sign in using a password in addition to SAML.

```sql
INSERT INTO sumologic.saml.allowlisted_users (
userId,
region
)
SELECT 
'{{ userId }}',
'{{ region }}'
RETURNING
canManageSaml,
email,
firstName,
isActive,
lastLogin,
lastName,
userId
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: allowlisted_users
  props:
    - name: userId
      value: string
      description: Required parameter for the allowlisted_users resource.
    - name: region
      value: string
      description: Required parameter for the allowlisted_users resource.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteAllowlistedUser"
    values={[
        { label: 'deleteAllowlistedUser', value: 'deleteAllowlistedUser' }
    ]}
>
<TabItem value="deleteAllowlistedUser">

Remove an allowlisted user requiring them to sign in using SAML.

```sql
DELETE FROM sumologic.saml.allowlisted_users
WHERE userId = '{{ userId }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
