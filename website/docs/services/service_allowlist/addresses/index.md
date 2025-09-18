--- 
title: addresses
hide_title: false
hide_table_of_contents: false
keywords:
  - addresses
  - service_allowlist
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

Creates, updates, deletes, gets or lists an <code>addresses</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>addresses</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.service_allowlist.addresses" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="listAllowlistedCidrs"
    values={[
        { label: 'listAllowlistedCidrs', value: 'listAllowlistedCidrs' }
    ]}
>
<TabItem value="listAllowlistedCidrs">

List of all allowlisted CIDR notations and/or IP addresses for the organization.

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
    <td><CopyableCode code="cidr" /></td>
    <td><code>string</code></td>
    <td>The string representation of the CIDR notation or IP address. (pattern: <code>^(([0-9]|[1-9][0-9]|1[0-9]&#123;2&#125;|2[0-4][0-9]|25[0-5])\.)&#123;3&#125;([0-9]|[1-9][0-9]|1[0-9]&#123;2&#125;|2[0-4][0-9]|25[0-5])(\/([0-9]|[1-2][0-9]|3[0-2]))?$</code>, example: 192.35.24.1, x-pattern-message: Invalid CIDR/IP)</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the CIDR notation or IP address. (example: Accountant)</td>
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
    <td><a href="#listAllowlistedCidrs"><CopyableCode code="listAllowlistedCidrs" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a list of all allowlisted CIDR notations and/or IP addresses for the organization.</td>
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
    defaultValue="listAllowlistedCidrs"
    values={[
        { label: 'listAllowlistedCidrs', value: 'listAllowlistedCidrs' }
    ]}
>
<TabItem value="listAllowlistedCidrs">

Get a list of all allowlisted CIDR notations and/or IP addresses for the organization.

```sql
SELECT
cidr,
description
FROM sumologic.service_allowlist.addresses
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
