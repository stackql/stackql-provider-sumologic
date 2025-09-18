--- 
title: pending_update_request
hide_title: false
hide_table_of_contents: false
keywords:
  - pending_update_request
  - plan
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

Creates, updates, deletes, gets or lists a <code>pending_update_request</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>pending_update_request</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.plan.pending_update_request" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getPendingUpdateRequest"
    values={[
        { label: 'getPendingUpdateRequest', value: 'getPendingUpdateRequest' }
    ]}
>
<TabItem value="getPendingUpdateRequest">

Pending plan update request.

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
    <td><CopyableCode code="createdOn" /></td>
    <td><code>string (date)</code></td>
    <td>The date on which the update request was created.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>Current plan of the account.</td>
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
    <td><a href="#getPendingUpdateRequest"><CopyableCode code="getPendingUpdateRequest" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the pending plan update request which will be applicable from next billing cycle.</td>
</tr>
<tr>
    <td><a href="#deletePendingUpdateRequest"><CopyableCode code="deletePendingUpdateRequest" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete the pending plan update request which would be applicable from next billing cycle.</td>
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
    defaultValue="getPendingUpdateRequest"
    values={[
        { label: 'getPendingUpdateRequest', value: 'getPendingUpdateRequest' }
    ]}
>
<TabItem value="getPendingUpdateRequest">

Get the pending plan update request which will be applicable from next billing cycle.

```sql
SELECT
createdOn,
plan
FROM sumologic.plan.pending_update_request
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deletePendingUpdateRequest"
    values={[
        { label: 'deletePendingUpdateRequest', value: 'deletePendingUpdateRequest' }
    ]}
>
<TabItem value="deletePendingUpdateRequest">

Delete the pending plan update request which would be applicable from next billing cycle.

```sql
DELETE FROM sumologic.plan.pending_update_request
WHERE region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
