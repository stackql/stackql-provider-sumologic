--- 
title: enable
hide_title: false
hide_table_of_contents: false
keywords:
  - enable
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

Creates, updates, deletes, gets or lists an <code>enable</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>enable</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.service_allowlist.enable" /></td></tr>
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
    <td><a href="#enableAllowlisting"><CopyableCode code="enableAllowlisting" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-allowlistType"><code>allowlistType</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Enable service allowlisting functionality for the organization. The service allowlisting can be for 1. Login: If enabled, access to Sumo Logic is granted only to CIDRs/IP addresses that are allowlisted. 2. Content: If enabled, dashboards can be shared with users connecting from CIDRs/IP addresses that are allowlisted without logging in.</td>
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
<tr id="parameter-allowlistType">
    <td><CopyableCode code="allowlistType" /></td>
    <td><code>string</code></td>
    <td>The type of allowlisting to be enabled. It can be one of: `Login`, `Content`, or `Both`.</td>
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
    defaultValue="enableAllowlisting"
    values={[
        { label: 'enableAllowlisting', value: 'enableAllowlisting' }
    ]}
>
<TabItem value="enableAllowlisting">

Enable service allowlisting functionality for the organization. The service allowlisting can be for 1. Login: If enabled, access to Sumo Logic is granted only to CIDRs/IP addresses that are allowlisted. 2. Content: If enabled, dashboards can be shared with users connecting from CIDRs/IP addresses that are allowlisted without logging in.

```sql
EXEC sumologic.service_allowlist.enable.enableAllowlisting 
@allowlistType='{{ allowlistType }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
</Tabs>
