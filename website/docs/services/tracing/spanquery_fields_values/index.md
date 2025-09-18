--- 
title: spanquery_fields_values
hide_title: false
hide_table_of_contents: false
keywords:
  - spanquery_fields_values
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

Creates, updates, deletes, gets or lists a <code>spanquery_fields_values</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>spanquery_fields_values</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.tracing.spanquery_fields_values" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getSpanQueryFieldValues"
    values={[
        { label: 'getSpanQueryFieldValues', value: 'getSpanQueryFieldValues' }
    ]}
>
<TabItem value="getSpanQueryFieldValues">

List of available filter values for the given field.

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
    <td><CopyableCode code="fieldValues" /></td>
    <td><code>array</code></td>
    <td>List of filter field values.</td>
</tr>
<tr>
    <td><CopyableCode code="next" /></td>
    <td><code>string</code></td>
    <td>Next continuation token. (example: Mi93V0ZqTTBzaW89)</td>
</tr>
<tr>
    <td><CopyableCode code="totalCount" /></td>
    <td><code>integer (int64)</code></td>
    <td>Total number of values for a field matching the query. Can be approximated when it's above 3000.</td>
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
    <td><a href="#getSpanQueryFieldValues"><CopyableCode code="getSpanQueryFieldValues" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-field"><code>field</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-query"><code>query</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Get a list of available values for the given span analytics query filter field. Not all fields support value listing. The response is paginated with a default limit of 10 field values per page.</td>
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
<tr id="parameter-field">
    <td><CopyableCode code="field" /></td>
    <td><code>string</code></td>
    <td>Field identifier.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of results to fetch.</td>
</tr>
<tr id="parameter-query">
    <td><CopyableCode code="query" /></td>
    <td><code>string</code></td>
    <td>Search filter to apply on the values to be returned. Only values containing the search query term will be returned.</td>
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
    defaultValue="getSpanQueryFieldValues"
    values={[
        { label: 'getSpanQueryFieldValues', value: 'getSpanQueryFieldValues' }
    ]}
>
<TabItem value="getSpanQueryFieldValues">

Get a list of available values for the given span analytics query filter field. Not all fields support value listing. The response is paginated with a default limit of 10 field values per page.

```sql
SELECT
fieldValues,
next,
totalCount
FROM sumologic.tracing.spanquery_fields_values
WHERE field = '{{ field }}' -- required
AND region = '{{ region }}' -- required
AND query = '{{ query }}'
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>
