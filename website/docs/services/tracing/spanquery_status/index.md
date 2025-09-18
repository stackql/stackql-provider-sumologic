--- 
title: spanquery_status
hide_title: false
hide_table_of_contents: false
keywords:
  - spanquery_status
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

Creates, updates, deletes, gets or lists a <code>spanquery_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>spanquery_status</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.tracing.spanquery_status" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getSpanQueryStatus"
    values={[
        { label: 'getSpanQueryStatus', value: 'getSpanQueryStatus' }
    ]}
>
<TabItem value="getSpanQueryStatus">

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
    <td><CopyableCode code="queryRows" /></td>
    <td><code>array</code></td>
    <td>A list of span analytics queries.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the query. Possible values: `Processing`, `Finished`, `Error`, `Paused` (pattern: <code>^(Processing|Finished|Error|Paused)$</code>, example: Processing, x-pattern-message: Should be either `Processing`, `Finished`, `Error`, `Paused`.)</td>
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
    <td><a href="#getSpanQueryStatus"><CopyableCode code="getSpanQueryStatus" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-queryId"><code>queryId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a status of a span analytics query with the given id. When the query has been completed, use the [Span Query Result] endpoint to get the result of the asynchronous query.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getSpanQueryStatus"
    values={[
        { label: 'getSpanQueryStatus', value: 'getSpanQueryStatus' }
    ]}
>
<TabItem value="getSpanQueryStatus">

Get a status of a span analytics query with the given id. When the query has been completed, use the [Span Query Result] endpoint to get the result of the asynchronous query.

```sql
SELECT
queryRows,
status
FROM sumologic.tracing.spanquery_status
WHERE queryId = '{{ queryId }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
