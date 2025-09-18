--- 
title: spanquery_rows_facets
hide_title: false
hide_table_of_contents: false
keywords:
  - spanquery_rows_facets
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

Creates, updates, deletes, gets or lists a <code>spanquery_rows_facets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>spanquery_rows_facets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.tracing.spanquery_rows_facets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getSpanQueryFacets"
    values={[
        { label: 'getSpanQueryFacets', value: 'getSpanQueryFacets' }
    ]}
>
<TabItem value="getSpanQueryFacets">

The list of facets from the executed query.

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
    <td><CopyableCode code="facets" /></td>
    <td><code>array</code></td>
    <td>List of facets.</td>
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
    <td><a href="#getSpanQueryFacets"><CopyableCode code="getSpanQueryFacets" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-queryId"><code>queryId</code></a>, <a href="#parameter-rowId"><code>rowId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a list of facets of a span analytics query with the specified id.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getSpanQueryFacets"
    values={[
        { label: 'getSpanQueryFacets', value: 'getSpanQueryFacets' }
    ]}
>
<TabItem value="getSpanQueryFacets">

Get a list of facets of a span analytics query with the specified id.

```sql
SELECT
facets
FROM sumologic.tracing.spanquery_rows_facets
WHERE queryId = '{{ queryId }}' -- required
AND rowId = '{{ rowId }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
