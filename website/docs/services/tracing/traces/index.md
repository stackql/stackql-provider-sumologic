--- 
title: traces
hide_title: false
hide_table_of_contents: false
keywords:
  - traces
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

Creates, updates, deletes, gets or lists a <code>traces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>traces</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.tracing.traces" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getTrace"
    values={[
        { label: 'getTrace', value: 'getTrace' }
    ]}
>
<TabItem value="getTrace">

Details of the trace with the given identifier.

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
    <td>Trace identifier. (example: 00000000000120CB)</td>
</tr>
<tr>
    <td><CopyableCode code="criticalPathServiceBreakdownSummary" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="metrics" /></td>
    <td><code>object</code></td>
    <td>Calculated trace metrics.</td>
</tr>
<tr>
    <td><CopyableCode code="rootOperationName" /></td>
    <td><code>string</code></td>
    <td>The name of the operation given to the root span. (example: retrieveAccount)</td>
</tr>
<tr>
    <td><CopyableCode code="rootResource" /></td>
    <td><code>string</code></td>
    <td>Root resource on which the trace was started. Examples: `db.query`, `http.request`, `rpc.call`, `container` (example: http.request)</td>
</tr>
<tr>
    <td><CopyableCode code="rootService" /></td>
    <td><code>string</code></td>
    <td>Root service which started the trace. Examples: `user-service`, `authentication-service`, `payment-service`, `/shopping-cart` (example: user-service)</td>
</tr>
<tr>
    <td><CopyableCode code="rootStatus" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="startedAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Date and time the trace was started in [ISO 8601 / RFC3339](https://tools.ietf.org/html/rfc3339) format. (example: 2019-11-22T09:00:00Z)</td>
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
    <td><a href="#getTrace"><CopyableCode code="getTrace" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-traceId"><code>traceId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get details of a trace with the given identifier.</td>
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
    <td>Identifier of the trace to get the details.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getTrace"
    values={[
        { label: 'getTrace', value: 'getTrace' }
    ]}
>
<TabItem value="getTrace">

Get details of a trace with the given identifier.

```sql
SELECT
id,
criticalPathServiceBreakdownSummary,
metrics,
rootOperationName,
rootResource,
rootService,
rootStatus,
startedAt
FROM sumologic.tracing.traces
WHERE traceId = '{{ traceId }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
