--- 
title: traces_critical_path
hide_title: false
hide_table_of_contents: false
keywords:
  - traces_critical_path
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

Creates, updates, deletes, gets or lists a <code>traces_critical_path</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>traces_critical_path</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.tracing.traces_critical_path" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getCriticalPath"
    values={[
        { label: 'getCriticalPath', value: 'getCriticalPath' }
    ]}
>
<TabItem value="getCriticalPath">

List of span segments composing the critical path.

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
    <td>Next continuation token. (example: Mi93V0ZqTTBzaW89)</td>
</tr>
<tr>
    <td><CopyableCode code="segments" /></td>
    <td><code>array</code></td>
    <td>List of span segments from the critical path.</td>
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
    <td><a href="#getCriticalPath"><CopyableCode code="getCriticalPath" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-traceId"><code>traceId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Get a list of span segments composing the critical path of the trace. A span segment represents the processing time that was consumed within the span itself and does not incorporate the processing time of its children. The critical path is the sequence of span segments that contribute to the total trace duration. An increase of the processing time of any segment from the critical path would result in an increase of the total trace processing time.</td>
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
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of results to fetch.</td>
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
    defaultValue="getCriticalPath"
    values={[
        { label: 'getCriticalPath', value: 'getCriticalPath' }
    ]}
>
<TabItem value="getCriticalPath">

Get a list of span segments composing the critical path of the trace. A span segment represents the processing time that was consumed within the span itself and does not incorporate the processing time of its children. The critical path is the sequence of span segments that contribute to the total trace duration. An increase of the processing time of any segment from the critical path would result in an increase of the total trace processing time.

```sql
SELECT
next,
segments
FROM sumologic.tracing.traces_critical_path
WHERE traceId = '{{ traceId }}' -- required
AND region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>
