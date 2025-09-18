--- 
title: tokens
hide_title: false
hide_table_of_contents: false
keywords:
  - tokens
  - tokens
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

Creates, updates, deletes, gets or lists a <code>tokens</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>tokens</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.tokens.tokens" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getToken"
    values={[
        { label: 'getToken', value: 'getToken' },
        { label: 'listTokens', value: 'listTokens' }
    ]}
>
<TabItem value="getToken">

Token object that was requested.

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
    <td>Identifier of the token.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the token. (example: token-name)</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Creation timestamp in UTC in [RFC3339](https://tools.ietf.org/html/rfc3339) format.</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user who created the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the token. (example: token description: for test.)</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Last modification timestamp in UTC.</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedBy" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user who last modified the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the token. Can be `Active`, or `Inactive`. (pattern: <code>^(Active|Inactive)$</code>, example: Active, x-pattern-message: must be either `Active` or `Inactive`)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the token. Valid values: 1) CollectorRegistrationTokenResponse (pattern: <code>^(CollectorRegistrationTokenResponse)$</code>, example: CollectorRegistrationTokenResponse, x-pattern-message: must be `CollectorRegistrationTokenResponse`)</td>
</tr>
<tr>
    <td><CopyableCode code="version" /></td>
    <td><code>integer (int64)</code></td>
    <td>Version of the token.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="listTokens">

A list of tokens.

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
    <td><CopyableCode code="data" /></td>
    <td><code>array</code></td>
    <td>List of tokens.</td>
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
    <td><a href="#getToken"><CopyableCode code="getToken" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a token with the given identifier in the token library.</td>
</tr>
<tr>
    <td><a href="#listTokens"><CopyableCode code="listTokens" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a list of all tokens in the token library.</td>
</tr>
<tr>
    <td><a href="#createToken"><CopyableCode code="createToken" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__status"><code>data__status</code></a>, <a href="#parameter-data__type"><code>data__type</code></a></td>
    <td></td>
    <td>Create a token in the token library.</td>
</tr>
<tr>
    <td><a href="#deleteToken"><CopyableCode code="deleteToken" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a token with the given identifier in the token library.</td>
</tr>
<tr>
    <td><a href="#updateToken"><CopyableCode code="updateToken" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-status"><code>status</code></a>, <a href="#parameter-type"><code>type</code></a>, <a href="#parameter-version"><code>version</code></a></td>
    <td></td>
    <td>Update a token with the given identifier in the token library.</td>
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
    <td>Identifier of the token to update.</td>
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
    defaultValue="getToken"
    values={[
        { label: 'getToken', value: 'getToken' },
        { label: 'listTokens', value: 'listTokens' }
    ]}
>
<TabItem value="getToken">

Get a token with the given identifier in the token library.

```sql
SELECT
id,
name,
createdAt,
createdBy,
description,
modifiedAt,
modifiedBy,
status,
type,
version
FROM sumologic.tokens.tokens
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="listTokens">

Get a list of all tokens in the token library.

```sql
SELECT
data
FROM sumologic.tokens.tokens
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createToken"
    values={[
        { label: 'createToken', value: 'createToken' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createToken">

Create a token in the token library.

```sql
INSERT INTO sumologic.tokens.tokens (
data__name,
data__description,
data__status,
data__type,
region
)
SELECT 
'{{ name }}' /* required */,
'{{ description }}',
'{{ status }}' /* required */,
'{{ type }}' /* required */,
'{{ region }}'
RETURNING
id,
name,
createdAt,
createdBy,
description,
modifiedAt,
modifiedBy,
status,
type,
version
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: tokens
  props:
    - name: region
      value: string
      description: Required parameter for the tokens resource.
    - name: name
      value: string
      description: |
        Name of the token.
    - name: description
      value: string
      description: |
        Description of the token.
    - name: status
      value: string
      description: |
        Status of the token. Can be `Active`, or `Inactive`.
    - name: type
      value: string
      description: |
        Type of the token. Valid values: 1) CollectorRegistration
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteToken"
    values={[
        { label: 'deleteToken', value: 'deleteToken' }
    ]}
>
<TabItem value="deleteToken">

Delete a token with the given identifier in the token library.

```sql
DELETE FROM sumologic.tokens.tokens
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateToken"
    values={[
        { label: 'updateToken', value: 'updateToken' }
    ]}
>
<TabItem value="updateToken">

Update a token with the given identifier in the token library.

```sql
EXEC sumologic.tokens.tokens.updateToken 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"name": "{{ name }}", 
"description": "{{ description }}", 
"status": "{{ status }}", 
"type": "{{ type }}", 
"version": {{ version }}
}'
;
```
</TabItem>
</Tabs>
