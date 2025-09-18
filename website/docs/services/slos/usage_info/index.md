--- 
title: usage_info
hide_title: false
hide_table_of_contents: false
keywords:
  - usage_info
  - slos
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

Creates, updates, deletes, gets or lists a <code>usage_info</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>usage_info</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.slos.usage_info" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getSloUsageInfo"
    values={[
        { label: 'getSloUsageInfo', value: 'getSloUsageInfo' }
    ]}
>
<TabItem value="getSloUsageInfo">

SLO Usage Info has been retrieved successfully.

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
    <td><CopyableCode code="limit" /></td>
    <td><code>integer</code></td>
    <td>The limit of active Logs/Metrics/Monitors SLOs.</td>
</tr>
<tr>
    <td><CopyableCode code="sliType" /></td>
    <td><code>string</code></td>
    <td>The type of SLO usage info (Logs/Metrics/Monitor based). (pattern: <code>^(Logs|Metrics|Monitors)$</code>, example: Logs, x-pattern-message: Either `Logs` or `Metrics` or `Monitors`.)</td>
</tr>
<tr>
    <td><CopyableCode code="usage" /></td>
    <td><code>integer</code></td>
    <td>Current number of active Logs/Metrics/Monitors SLOs.</td>
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
    <td><a href="#getSloUsageInfo"><CopyableCode code="getSloUsageInfo" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the current number and the allowed number of log and metrics SLOs.</td>
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
    defaultValue="getSloUsageInfo"
    values={[
        { label: 'getSloUsageInfo', value: 'getSloUsageInfo' }
    ]}
>
<TabItem value="getSloUsageInfo">

Get the current number and the allowed number of log and metrics SLOs.

```sql
SELECT
limit,
sliType,
usage
FROM sumologic.slos.usage_info
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
