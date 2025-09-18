--- 
title: tracequery_rows_traces
hide_title: false
hide_table_of_contents: false
keywords:
  - tracequery_rows_traces
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

Creates, updates, deletes, gets or lists a <code>tracequery_rows_traces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>tracequery_rows_traces</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.tracing.tracequery_rows_traces" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getTraceQueryResult"
    values={[
        { label: 'getTraceQueryResult', value: 'getTraceQueryResult' }
    ]}
>
<TabItem value="getTraceQueryResult">

Details about the given span query.

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
    <td><CopyableCode code="next" /></td>
    <td><code>string</code></td>
    <td>Next continuation token. (example: 10001)</td>
</tr>
<tr>
    <td><CopyableCode code="results" /></td>
    <td><code>array</code></td>
    <td>List of traces matching the query.</td>
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
    <td><a href="#getTraceQueryResult"><CopyableCode code="getTraceQueryResult" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-queryId"><code>queryId</code></a>, <a href="#parameter-rowId"><code>rowId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Get a list of traces matching a query with the specified id. The response is paginated with a default limit of 100 traces per page.</td>
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
<tr id="parameter-queryId">
    <td><CopyableCode code="queryId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the executed query.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-rowId">
    <td><CopyableCode code="rowId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the query row.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit of the number of traces returned in the response.</td>
</tr>
<tr id="parameter-token">
    <td><CopyableCode code="token" /></td>
    <td><code>string</code></td>
    <td>Continuation token to get the next page of results. A page object with the next continuation token is returned in the response body. Subsequent GET requests should specify the continuation token to get the next page of results. `token` is set to null when no more pages are left.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getTraceQueryResult"
    values={[
        { label: 'getTraceQueryResult', value: 'getTraceQueryResult' }
    ]}
>
<TabItem value="getTraceQueryResult">

Get a list of traces matching a query with the specified id. The response is paginated with a default limit of 100 traces per page.

```sql
SELECT
next,
results
FROM sumologic.tracing.tracequery_rows_traces
WHERE queryId = '{{ queryId }}' -- required
AND rowId = '{{ rowId }}' -- required
AND region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>
