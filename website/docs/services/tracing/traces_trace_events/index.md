--- 
title: traces_trace_events
hide_title: false
hide_table_of_contents: false
keywords:
  - traces_trace_events
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

Creates, updates, deletes, gets or lists a <code>traces_trace_events</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>traces_trace_events</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.tracing.traces_trace_events" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getTraceLightEvents"
    values={[
        { label: 'getTraceLightEvents', value: 'getTraceLightEvents' }
    ]}
>
<TabItem value="getTraceLightEvents">

Map of spans to events relations.

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
    <td>Next continuation token. (example: dlFXd0lhSkxzRjAwYnpVZkMrRmlhYnF4cGtNMWdnVEI)</td>
</tr>
<tr>
    <td><CopyableCode code="spanEvents" /></td>
    <td><code>object</code></td>
    <td>Map of span ids to lists of their events, without their attributes.</td>
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
    <td><a href="#getTraceLightEvents"><CopyableCode code="getTraceLightEvents" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-traceId"><code>traceId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Gets a list of the events (without their attributes) attached to each span in a given trace. The response is paginated with a default limit of 100 spans per page.</td>
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
    <td>Identifier of the trace for which span events will be returned.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of spans with events returned by a single query.</td>
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
    defaultValue="getTraceLightEvents"
    values={[
        { label: 'getTraceLightEvents', value: 'getTraceLightEvents' }
    ]}
>
<TabItem value="getTraceLightEvents">

Gets a list of the events (without their attributes) attached to each span in a given trace. The response is paginated with a default limit of 100 spans per page.

```sql
SELECT
next,
spanEvents
FROM sumologic.tracing.traces_trace_events
WHERE traceId = '{{ traceId }}' -- required
AND region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>
