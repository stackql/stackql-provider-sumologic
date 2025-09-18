--- 
title: access_keys
hide_title: false
hide_table_of_contents: false
keywords:
  - access_keys
  - access_keys
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

Creates, updates, deletes, gets or lists an <code>access_keys</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>access_keys</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.access_keys.access_keys" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="listAccessKeys"
    values={[
        { label: 'listAccessKeys', value: 'listAccessKeys' }
    ]}
>
<TabItem value="listAccessKeys">

A list of all access keys in your account.

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
    <td>Identifier of the access key. (example: su0w3Q37CBzHUM)</td>
</tr>
<tr>
    <td><CopyableCode code="corsHeaders" /></td>
    <td><code>array</code></td>
    <td>An array of domains for which the access key is valid. Whether Sumo Logic accepts or rejects an API request depends on whether it contains an ORIGIN header and the entries in the allowlist. Sumo Logic will reject:   1. Requests with an ORIGIN header but the allowlist is empty.   2. Requests with an ORIGIN header that don't match any entry in the allowlist.</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Creation timestamp in UTC in [RFC3339](https://tools.ietf.org/html/rfc3339) format. (example: 2018-10-16T09:10:00Z)</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user who created the access key. (example: 0000000006743FDD)</td>
</tr>
<tr>
    <td><CopyableCode code="disabled" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether the access key is disabled or not.</td>
</tr>
<tr>
    <td><CopyableCode code="label" /></td>
    <td><code>string</code></td>
    <td>The name of the access key. (example: collector access key)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUsed" /></td>
    <td><code>string (date-time)</code></td>
    <td>Last used timestamp in UTC.  <br /> **Note:** Property not in use, it is part of an upcoming feature. (example: 2018-10-16T09:10:00Z)</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Last modification timestamp in UTC. (example: 2018-10-16T09:10:00Z)</td>
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
    <td><a href="#listAccessKeys"><CopyableCode code="listAccessKeys" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>List all access keys in your account.</td>
</tr>
<tr>
    <td><a href="#createAccessKey"><CopyableCode code="createAccessKey" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__label"><code>data__label</code></a></td>
    <td></td>
    <td>Creates a new access ID and key pair. The new access key can be used from the domains specified in corsHeaders field. Whether Sumo Logic accepts or rejects an API request depends on whether it contains an ORIGIN header and the entries in the allowlist. Sumo Logic will reject:<br />  1. Requests with an ORIGIN header but the allowlist is empty.<br />  2. Requests with an ORIGIN header that don't match any entry in the allowlist.</td>
</tr>
<tr>
    <td><a href="#deleteAccessKey"><CopyableCode code="deleteAccessKey" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Deletes the access key with the given accessId.</td>
</tr>
<tr>
    <td><a href="#updateAccessKey"><CopyableCode code="updateAccessKey" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-disabled"><code>disabled</code></a></td>
    <td></td>
    <td>Updates the properties of existing accessKey by accessId. It can be used to enable or disable the access key and to update the corsHeaders list.</td>
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
    <td>The accessId of the access key to update.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit the number of access keys returned in the response. The number of access keys returned may be less than the `limit`.</td>
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
    defaultValue="listAccessKeys"
    values={[
        { label: 'listAccessKeys', value: 'listAccessKeys' }
    ]}
>
<TabItem value="listAccessKeys">

List all access keys in your account.

```sql
SELECT
id,
corsHeaders,
createdAt,
createdBy,
disabled,
label,
lastUsed,
modifiedAt
FROM sumologic.access_keys.access_keys
WHERE region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createAccessKey"
    values={[
        { label: 'createAccessKey', value: 'createAccessKey' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createAccessKey">

Creates a new access ID and key pair. The new access key can be used from the domains specified in corsHeaders field. Whether Sumo Logic accepts or rejects an API request depends on whether it contains an ORIGIN header and the entries in the allowlist. Sumo Logic will reject:<br />  1. Requests with an ORIGIN header but the allowlist is empty.<br />  2. Requests with an ORIGIN header that don't match any entry in the allowlist.

```sql
INSERT INTO sumologic.access_keys.access_keys (
data__label,
data__corsHeaders,
region
)
SELECT 
'{{ label }}' /* required */,
'{{ corsHeaders }}',
'{{ region }}'
RETURNING
id,
corsHeaders,
createdAt,
createdBy,
disabled,
key,
label,
lastUsed,
modifiedAt
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: access_keys
  props:
    - name: region
      value: string
      description: Required parameter for the access_keys resource.
    - name: label
      value: string
      description: |
        A name for the access key to be created.
    - name: corsHeaders
      value: array
      description: |
        An array of domains for which the access key is valid. Whether Sumo Logic accepts or rejects an API request
        depends on whether it contains an ORIGIN header and the entries in the allowlist.
        Sumo Logic will reject:
        1. Requests with an ORIGIN header but the allowlist is empty.
        2. Requests with an ORIGIN header that don't match any entry in the allowlist.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteAccessKey"
    values={[
        { label: 'deleteAccessKey', value: 'deleteAccessKey' }
    ]}
>
<TabItem value="deleteAccessKey">

Deletes the access key with the given accessId.

```sql
DELETE FROM sumologic.access_keys.access_keys
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateAccessKey"
    values={[
        { label: 'updateAccessKey', value: 'updateAccessKey' }
    ]}
>
<TabItem value="updateAccessKey">

Updates the properties of existing accessKey by accessId. It can be used to enable or disable the access key and to update the corsHeaders list.

```sql
EXEC sumologic.access_keys.access_keys.updateAccessKey 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"disabled": {{ disabled }}, 
"corsHeaders": "{{ corsHeaders }}"
}'
;
```
</TabItem>
</Tabs>
