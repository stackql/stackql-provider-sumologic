--- 
title: personal
hide_title: false
hide_table_of_contents: false
keywords:
  - personal
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

Creates, updates, deletes, gets or lists a <code>personal</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>personal</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.access_keys.personal" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="listPersonalAccessKeys"
    values={[
        { label: 'listPersonalAccessKeys', value: 'listPersonalAccessKeys' }
    ]}
>
<TabItem value="listPersonalAccessKeys">

A list of all access keys that belong to the user making the request.

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
    <td><a href="#listPersonalAccessKeys"><CopyableCode code="listPersonalAccessKeys" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>List all access keys that belong to your user.</td>
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
    defaultValue="listPersonalAccessKeys"
    values={[
        { label: 'listPersonalAccessKeys', value: 'listPersonalAccessKeys' }
    ]}
>
<TabItem value="listPersonalAccessKeys">

List all access keys that belong to your user.

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
FROM sumologic.access_keys.personal
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
