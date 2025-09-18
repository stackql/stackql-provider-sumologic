--- 
title: traces_critical_path_breakdown_service
hide_title: false
hide_table_of_contents: false
keywords:
  - traces_critical_path_breakdown_service
  - tracing
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

Creates, updates, deletes, gets or lists a <code>traces_critical_path_breakdown_service</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>traces_critical_path_breakdown_service</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.tracing.traces_critical_path_breakdown_service" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getCriticalPathServiceBreakdown"
    values={[
        { label: 'getCriticalPathServiceBreakdown', value: 'getCriticalPathServiceBreakdown' }
    ]}
>
<TabItem value="getCriticalPathServiceBreakdown">

List of elements representing the critical path service breakdown.

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
    <td><CopyableCode code="elements" /></td>
    <td><code>array</code></td>
    <td>List of elements representing the critical path service breakdown.</td>
</tr>
<tr>
    <td><CopyableCode code="idleTime" /></td>
    <td><code>integer (int64)</code></td>
    <td>Overall time in nanoseconds when no particular operation was in progress.</td>
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
    <td><a href="#getCriticalPathServiceBreakdown"><CopyableCode code="getCriticalPathServiceBreakdown" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-traceId"><code>traceId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a critical path breakdown by services of the spans contributing to the critical path of a trace with the given identifier.</td>
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
<tr id="parameter-traceId">
    <td><CopyableCode code="traceId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the trace.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getCriticalPathServiceBreakdown"
    values={[
        { label: 'getCriticalPathServiceBreakdown', value: 'getCriticalPathServiceBreakdown' }
    ]}
>
<TabItem value="getCriticalPathServiceBreakdown">

Get a critical path breakdown by services of the spans contributing to the critical path of a trace with the given identifier.

```sql
SELECT
elements,
idleTime
FROM sumologic.tracing.traces_critical_path_breakdown_service
WHERE traceId = '{{ traceId }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
