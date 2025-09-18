--- 
title: subdomain
hide_title: false
hide_table_of_contents: false
keywords:
  - subdomain
  - account
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

Creates, updates, deletes, gets or lists a <code>subdomain</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>subdomain</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.account.subdomain" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getSubdomain"
    values={[
        { label: 'getSubdomain', value: 'getSubdomain' }
    ]}
>
<TabItem value="getSubdomain">

The subdomain's definition.

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
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Creation timestamp in UTC in [RFC3339](https://tools.ietf.org/html/rfc3339) format. </td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user who created the resource.</td>
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
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>The new subdomain. (example: my-company)</td>
</tr>
<tr>
    <td><CopyableCode code="url" /></td>
    <td><code>string</code></td>
    <td>Login URL corresponding to the subdomain. (example: https://your-company.sumologic.com)</td>
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
    <td><a href="#getSubdomain"><CopyableCode code="getSubdomain" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the configured subdomain.</td>
</tr>
<tr>
    <td><a href="#createSubdomain"><CopyableCode code="createSubdomain" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__subdomain"><code>data__subdomain</code></a></td>
    <td></td>
    <td>Create a subdomain. Only the Account Owner can create a subdomain.</td>
</tr>
<tr>
    <td><a href="#deleteSubdomain"><CopyableCode code="deleteSubdomain" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete the configured subdomain.</td>
</tr>
<tr>
    <td><a href="#updateSubdomain"><CopyableCode code="updateSubdomain" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Update a subdomain. Only the Account Owner can update the subdomain.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getSubdomain"
    values={[
        { label: 'getSubdomain', value: 'getSubdomain' }
    ]}
>
<TabItem value="getSubdomain">

Get the configured subdomain.

```sql
SELECT
createdAt,
createdBy,
modifiedAt,
modifiedBy,
subdomain,
url
FROM sumologic.account.subdomain
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createSubdomain"
    values={[
        { label: 'createSubdomain', value: 'createSubdomain' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createSubdomain">

Create a subdomain. Only the Account Owner can create a subdomain.

```sql
INSERT INTO sumologic.account.subdomain (
data__subdomain,
region
)
SELECT 
'{{ subdomain }}' /* required */,
'{{ region }}'
RETURNING
createdAt,
createdBy,
modifiedAt,
modifiedBy,
subdomain,
url
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: subdomain
  props:
    - name: region
      value: string
      description: Required parameter for the subdomain resource.
    - name: subdomain
      value: string
      description: |
        The new subdomain.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteSubdomain"
    values={[
        { label: 'deleteSubdomain', value: 'deleteSubdomain' }
    ]}
>
<TabItem value="deleteSubdomain">

Delete the configured subdomain.

```sql
DELETE FROM sumologic.account.subdomain
WHERE region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateSubdomain"
    values={[
        { label: 'updateSubdomain', value: 'updateSubdomain' }
    ]}
>
<TabItem value="updateSubdomain">

Update a subdomain. Only the Account Owner can update the subdomain.

```sql
EXEC sumologic.account.subdomain.updateSubdomain 
@region='{{ region }}' --required 
@@json=
'{
"subdomain": "{{ subdomain }}"
}'
;
```
</TabItem>
</Tabs>
