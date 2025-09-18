--- 
title: usage_info
hide_title: false
hide_table_of_contents: false
keywords:
  - usage_info
  - monitors
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
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.monitors.usage_info" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getMonitorUsageInfo"
    values={[
        { label: 'getMonitorUsageInfo', value: 'getMonitorUsageInfo' }
    ]}
>
<TabItem value="getMonitorUsageInfo">

MonitorUsageInfo has been retrieved successfully.

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
    <td>The limit of active Logs/Metrics monitors.</td>
</tr>
<tr>
    <td><CopyableCode code="monitorType" /></td>
    <td><code>string</code></td>
    <td>The type of monitor usage info (Logs or Metrics). (example: Logs)</td>
</tr>
<tr>
    <td><CopyableCode code="total" /></td>
    <td><code>integer</code></td>
    <td>The total number of monitors created. (Including both active and disabled Logs/Metrics monitors)</td>
</tr>
<tr>
    <td><CopyableCode code="usage" /></td>
    <td><code>integer</code></td>
    <td>Current number of active Logs/Metrics monitors.</td>
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
    <td><a href="#getMonitorUsageInfo"><CopyableCode code="getMonitorUsageInfo" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the current number and the allowed number of log and metrics monitors.</td>
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
    defaultValue="getMonitorUsageInfo"
    values={[
        { label: 'getMonitorUsageInfo', value: 'getMonitorUsageInfo' }
    ]}
>
<TabItem value="getMonitorUsageInfo">

Get the current number and the allowed number of log and metrics monitors.

```sql
SELECT
limit,
monitorType,
total,
usage
FROM sumologic.monitors.usage_info
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
