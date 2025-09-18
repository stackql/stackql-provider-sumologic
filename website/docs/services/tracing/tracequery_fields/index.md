--- 
title: tracequery_fields
hide_title: false
hide_table_of_contents: false
keywords:
  - tracequery_fields
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

Creates, updates, deletes, gets or lists a <code>tracequery_fields</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>tracequery_fields</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.tracing.tracequery_fields" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getTraceQueryFields"
    values={[
        { label: 'getTraceQueryFields', value: 'getTraceQueryFields' }
    ]}
>
<TabItem value="getTraceQueryFields">

List of available fields.

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
    <td><CopyableCode code="fields" /></td>
    <td><code>array</code></td>
    <td>List of filter fields.</td>
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
    <td><a href="#getTraceQueryFields"><CopyableCode code="getTraceQueryFields" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a list of available fields which can be used in trace search queries.</td>
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
    defaultValue="getTraceQueryFields"
    values={[
        { label: 'getTraceQueryFields', value: 'getTraceQueryFields' }
    ]}
>
<TabItem value="getTraceQueryFields">

Get a list of available fields which can be used in trace search queries.

```sql
SELECT
fields
FROM sumologic.tracing.tracequery_fields
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
