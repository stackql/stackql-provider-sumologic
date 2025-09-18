--- 
title: email_request_change
hide_title: false
hide_table_of_contents: false
keywords:
  - email_request_change
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

Creates, updates, deletes, gets or lists an <code>email_request_change</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>email_request_change</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.users.email_request_change" /></td></tr>
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
    <td><a href="#requestChangeEmail"><CopyableCode code="requestChangeEmail" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-email"><code>email</code></a></td>
    <td></td>
    <td>An email with an activation link is sent to the user’s new email address. The user must click the link in the email within seven days to complete the email address change, or the link will expire.</td>
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
    <td>Identifier of the user to change email address.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="requestChangeEmail"
    values={[
        { label: 'requestChangeEmail', value: 'requestChangeEmail' }
    ]}
>
<TabItem value="requestChangeEmail">

An email with an activation link is sent to the user’s new email address. The user must click the link in the email within seven days to complete the email address change, or the link will expire.

```sql
EXEC sumologic.users.email_request_change.requestChangeEmail 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"email": "{{ email }}"
}'
;
```
</TabItem>
</Tabs>
