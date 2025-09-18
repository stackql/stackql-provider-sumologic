--- 
title: connections
hide_title: false
hide_table_of_contents: false
keywords:
  - connections
  - connections
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

Creates, updates, deletes, gets or lists a <code>connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.connections.connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getConnection"
    values={[
        { label: 'getConnection', value: 'getConnection' },
        { label: 'listConnections', value: 'listConnections' }
    ]}
>
<TabItem value="getConnection">

Connection object that was requested.

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
    <td>Unique identifier for the connection.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the connection.</td>
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
    <td>Description of the connection.</td>
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
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of connection. Valid values are `WebhookConnection`, `ServiceNowConnection`.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="listConnections">

A paginated list of connections in the organization.

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
    <td>List of connections.</td>
</tr>
<tr>
    <td><CopyableCode code="next" /></td>
    <td><code>string</code></td>
    <td>Next continuation token.</td>
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
    <td><a href="#getConnection"><CopyableCode code="getConnection" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-type"><code>type</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a connection with the given identifier.</td>
</tr>
<tr>
    <td><a href="#listConnections"><CopyableCode code="listConnections" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Get a list of all connections in the organization. The response is paginated with a default limit of 100 connections per page.</td>
</tr>
<tr>
    <td><a href="#createConnection"><CopyableCode code="createConnection" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__type"><code>data__type</code></a></td>
    <td></td>
    <td>Create a new connection in the organization.</td>
</tr>
<tr>
    <td><a href="#deleteConnection"><CopyableCode code="deleteConnection" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-type"><code>type</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a connection with the given identifier.</td>
</tr>
<tr>
    <td><a href="#updateConnection"><CopyableCode code="updateConnection" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Update an existing connection.</td>
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
    <td>Identifier of the connection to update.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-type">
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of connection to delete. Valid values are `WebhookConnection`, `ServiceNowConnection`.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit the number of connections returned in the response. The number of connections returned may be less than the `limit`.</td>
</tr>
<tr id="parameter-token">
    <td><CopyableCode code="token" /></td>
    <td><code>string</code></td>
    <td>Continuation token to get the next page of results. A page object with the next continuation token is returned in the response body. Subsequent GET requests should specify the continuation token to get the next page of results. `token` is set to null when no more pages are left.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getConnection"
    values={[
        { label: 'getConnection', value: 'getConnection' },
        { label: 'listConnections', value: 'listConnections' }
    ]}
>
<TabItem value="getConnection">

Get a connection with the given identifier.

```sql
SELECT
id,
name,
createdAt,
createdBy,
description,
modifiedAt,
modifiedBy,
type
FROM sumologic.connections.connections
WHERE id = '{{ id }}' -- required
AND type = '{{ type }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="listConnections">

Get a list of all connections in the organization. The response is paginated with a default limit of 100 connections per page.

```sql
SELECT
data,
next
FROM sumologic.connections.connections
WHERE region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createConnection"
    values={[
        { label: 'createConnection', value: 'createConnection' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createConnection">

Create a new connection in the organization.

```sql
INSERT INTO sumologic.connections.connections (
data__type,
data__name,
data__description,
region
)
SELECT 
'{{ type }}' /* required */,
'{{ name }}' /* required */,
'{{ description }}',
'{{ region }}'
RETURNING
id,
name,
createdAt,
createdBy,
description,
modifiedAt,
modifiedBy,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: connections
  props:
    - name: region
      value: string
      description: Required parameter for the connections resource.
    - name: type
      value: string
      description: |
        Type of connection. Valid values are `WebhookDefinition`, `ServiceNowDefinition`.
    - name: name
      value: string
      description: |
        Name of the connection.
    - name: description
      value: string
      description: |
        Description of the connection.
      default: 
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteConnection"
    values={[
        { label: 'deleteConnection', value: 'deleteConnection' }
    ]}
>
<TabItem value="deleteConnection">

Delete a connection with the given identifier.

```sql
DELETE FROM sumologic.connections.connections
WHERE id = '{{ id }}' --required
AND type = '{{ type }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateConnection"
    values={[
        { label: 'updateConnection', value: 'updateConnection' }
    ]}
>
<TabItem value="updateConnection">

Update an existing connection.

```sql
EXEC sumologic.connections.connections.updateConnection 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"type": "{{ type }}", 
"name": "{{ name }}", 
"description": "{{ description }}"
}'
;
```
</TabItem>
</Tabs>
