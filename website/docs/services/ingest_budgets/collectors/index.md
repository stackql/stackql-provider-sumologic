--- 
title: collectors
hide_title: false
hide_table_of_contents: false
keywords:
  - collectors
  - ingest_budgets
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

Creates, updates, deletes, gets or lists a <code>collectors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>collectors</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.ingest_budgets.collectors" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getAssignedCollectors"
    values={[
        { label: 'getAssignedCollectors', value: 'getAssignedCollectors' }
    ]}
>
<TabItem value="getAssignedCollectors">

A paginated list of Collectors.

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
    <td>Unique identifier for the Collector.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the Collector.</td>
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
    <td><a href="#getAssignedCollectors"><CopyableCode code="getAssignedCollectors" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Get a list of Collectors assigned to an ingest budget. The response is paginated with a default limit of 100 Collectors per page.</td>
</tr>
<tr>
    <td><a href="#removeCollectorFromBudget"><CopyableCode code="removeCollectorFromBudget" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-collectorId"><code>collectorId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Remove Collector from a budget.</td>
</tr>
<tr>
    <td><a href="#assignCollectorToBudget"><CopyableCode code="assignCollectorToBudget" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-collectorId"><code>collectorId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Assign a Collector to a budget.</td>
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
<tr id="parameter-collectorId">
    <td><CopyableCode code="collectorId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the Collector to assign.</td>
</tr>
<tr id="parameter-id">
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Identifier of the ingest budget to assign to the Collector.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit the number of Collectors returned in the response. The number of Collectors returned may be less than the `limit`.</td>
</tr>
<tr id="parameter-token">
    <td><CopyableCode code="token" /></td>
    <td><code>string</code></td>
    <td>Continuation token to get the next page of results. A page object with the next continuation token is returned in the response body. Subsequent GET requests should specify the continuation token to get the next page of results.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getAssignedCollectors"
    values={[
        { label: 'getAssignedCollectors', value: 'getAssignedCollectors' }
    ]}
>
<TabItem value="getAssignedCollectors">

Get a list of Collectors assigned to an ingest budget. The response is paginated with a default limit of 100 Collectors per page.

```sql
SELECT
id,
name
FROM sumologic.ingest_budgets.collectors
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="removeCollectorFromBudget"
    values={[
        { label: 'removeCollectorFromBudget', value: 'removeCollectorFromBudget' }
    ]}
>
<TabItem value="removeCollectorFromBudget">

Remove Collector from a budget.

```sql
DELETE FROM sumologic.ingest_budgets.collectors
WHERE id = '{{ id }}' --required
AND collectorId = '{{ collectorId }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="assignCollectorToBudget"
    values={[
        { label: 'assignCollectorToBudget', value: 'assignCollectorToBudget' }
    ]}
>
<TabItem value="assignCollectorToBudget">

Assign a Collector to a budget.

```sql
EXEC sumologic.ingest_budgets.collectors.assignCollectorToBudget 
@id='{{ id }}' --required, 
@collectorId='{{ collectorId }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
</Tabs>
