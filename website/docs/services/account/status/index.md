--- 
title: status
hide_title: false
hide_table_of_contents: false
keywords:
  - status
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

Creates, updates, deletes, gets or lists a <code>status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>status</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.account.status" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getStatus"
    values={[
        { label: 'getStatus', value: 'getStatus' }
    ]}
>
<TabItem value="getStatus">

Overview of the account.

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
    <td><CopyableCode code="accountActivated" /></td>
    <td><code>boolean</code></td>
    <td>If the account is activated or not</td>
</tr>
<tr>
    <td><CopyableCode code="applicationUse" /></td>
    <td><code>string</code></td>
    <td>The current usage of the application. (pattern: <code>^(ALLOWED|ALLOWED_WITH_WARNING|THROTTLED|RESTRICTED)$</code>, example: ALLOWED)</td>
</tr>
<tr>
    <td><CopyableCode code="canUpdatePlan" /></td>
    <td><code>boolean</code></td>
    <td>If the plan can be updated by the given user</td>
</tr>
<tr>
    <td><CopyableCode code="planExpirationDays" /></td>
    <td><code>integer</code></td>
    <td>The number of days in which the plan will expire</td>
</tr>
<tr>
    <td><CopyableCode code="planType" /></td>
    <td><code>string</code></td>
    <td>Whether the account is `Free`/`Trial`/`Paid` (pattern: <code>^(Free|Trial|Paid)$</code>, example: Free)</td>
</tr>
<tr>
    <td><CopyableCode code="pricingModel" /></td>
    <td><code>string</code></td>
    <td>Whether the account is `cloudflex` or `credits` (pattern: <code>^(credits|cloudflex)$</code>, example: credits)</td>
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
    <td><a href="#getStatus"><CopyableCode code="getStatus" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get information related to the account's plan, pricing model, expiration and payment status.</td>
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
    defaultValue="getStatus"
    values={[
        { label: 'getStatus', value: 'getStatus' }
    ]}
>
<TabItem value="getStatus">

Get information related to the account's plan, pricing model, expiration and payment status.

```sql
SELECT
accountActivated,
applicationUse,
canUpdatePlan,
planExpirationDays,
planType,
pricingModel
FROM sumologic.account.status
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
