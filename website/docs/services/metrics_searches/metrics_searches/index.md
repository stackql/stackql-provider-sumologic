--- 
title: metrics_searches
hide_title: false
hide_table_of_contents: false
keywords:
  - metrics_searches
  - metrics_searches
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

Creates, updates, deletes, gets or lists a <code>metrics_searches</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>metrics_searches</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.metrics_searches.metrics_searches" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getMetricsSearch"
    values={[
        { label: 'getMetricsSearch', value: 'getMetricsSearch' }
    ]}
>
<TabItem value="getMetricsSearch">

A metrics search object with metadata.

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
    <td>Identifier of the metrics search. (example: 000000000000001A)</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Creation timestamp in UTC in [RFC3339](https://tools.ietf.org/html/rfc3339) format. (example: 2018-10-16T09:10:00Z)</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user who created the resource. (example: 0000000006743FDD)</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Item description in the content library. (example: Long and detailed description)</td>
</tr>
<tr>
    <td><CopyableCode code="desiredQuantizationInSecs" /></td>
    <td><code>integer (int32)</code></td>
    <td>Desired quantization in seconds.</td>
</tr>
<tr>
    <td><CopyableCode code="logQuery" /></td>
    <td><code>string</code></td>
    <td>Log query used to add an overlay to the chart. (example: my_metric | timeslice 1m | count by _timeslice)</td>
</tr>
<tr>
    <td><CopyableCode code="metricsQueries" /></td>
    <td><code>array</code></td>
    <td>Metrics queries, up to the maximum of six.</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Last modification timestamp in UTC. (example: 2018-10-16T09:10:00Z)</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedBy" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user who last modified the resource. (example: 0000000006743FE8)</td>
</tr>
<tr>
    <td><CopyableCode code="parentId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the parent element in the content library, such as folder. (example: 0000000000007D2B)</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>string</code></td>
    <td>Chart properties, like line width, color palette, and the fill missing data method. Leave this field empty to use the defaults. This property contains JSON object encoded as a string.  (example: &#123; \"key\": \"value\" &#125;)</td>
</tr>
<tr>
    <td><CopyableCode code="timeRange" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="title" /></td>
    <td><code>string</code></td>
    <td>Item title in the content library. (pattern: <code>^[a-zA-Z0-9 +%-@.,_()]+$</code>, example: Short title)</td>
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
    <td><a href="#getMetricsSearch"><CopyableCode code="getMetricsSearch" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Returns a metrics search with the specified identifier.</td>
</tr>
<tr>
    <td><a href="#createMetricsSearch"><CopyableCode code="createMetricsSearch" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__description"><code>data__description</code></a>, <a href="#parameter-data__metricsQueries"><code>data__metricsQueries</code></a>, <a href="#parameter-data__timeRange"><code>data__timeRange</code></a>, <a href="#parameter-data__title"><code>data__title</code></a></td>
    <td></td>
    <td>Saves a metrics search in the content library. Metrics search consists of one or more queries, a time range, a quantization period and a set of chart properties like line width.</td>
</tr>
<tr>
    <td><a href="#deleteMetricsSearch"><CopyableCode code="deleteMetricsSearch" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Deletes a metrics search from the content library.</td>
</tr>
<tr>
    <td><a href="#updateMetricsSearch"><CopyableCode code="updateMetricsSearch" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-description"><code>description</code></a>, <a href="#parameter-metricsQueries"><code>metricsQueries</code></a>, <a href="#parameter-timeRange"><code>timeRange</code></a>, <a href="#parameter-title"><code>title</code></a></td>
    <td></td>
    <td>Updates a metrics search with the specified identifier. Partial updates are not supported, you must provide values for all fields.</td>
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
<tr id="parameter-id">
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Identifier of the metrics search.</td>
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
    defaultValue="getMetricsSearch"
    values={[
        { label: 'getMetricsSearch', value: 'getMetricsSearch' }
    ]}
>
<TabItem value="getMetricsSearch">

Returns a metrics search with the specified identifier.

```sql
SELECT
id,
createdAt,
createdBy,
description,
desiredQuantizationInSecs,
logQuery,
metricsQueries,
modifiedAt,
modifiedBy,
parentId,
properties,
timeRange,
title
FROM sumologic.metrics_searches.metrics_searches
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createMetricsSearch"
    values={[
        { label: 'createMetricsSearch', value: 'createMetricsSearch' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createMetricsSearch">

Saves a metrics search in the content library. Metrics search consists of one or more queries, a time range, a quantization period and a set of chart properties like line width.

```sql
INSERT INTO sumologic.metrics_searches.metrics_searches (
data__title,
data__description,
data__timeRange,
data__logQuery,
data__metricsQueries,
data__desiredQuantizationInSecs,
data__properties,
data__parentId,
region
)
SELECT 
'{{ title }}' /* required */,
'{{ description }}' /* required */,
'{{ timeRange }}' /* required */,
'{{ logQuery }}',
'{{ metricsQueries }}' /* required */,
{{ desiredQuantizationInSecs }},
'{{ properties }}',
'{{ parentId }}',
'{{ region }}'
RETURNING
id,
createdAt,
createdBy,
description,
desiredQuantizationInSecs,
logQuery,
metricsQueries,
modifiedAt,
modifiedBy,
parentId,
properties,
timeRange,
title
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: metrics_searches
  props:
    - name: region
      value: string
      description: Required parameter for the metrics_searches resource.
    - name: title
      value: string
      description: |
        Item title in the content library.
    - name: description
      value: string
      description: |
        Item description in the content library.
    - name: timeRange
      value: object
    - name: logQuery
      value: string
      description: |
        Log query used to add an overlay to the chart.
    - name: metricsQueries
      value: array
      description: |
        Metrics queries, up to the maximum of six.
    - name: desiredQuantizationInSecs
      value: integer
      description: |
        Desired quantization in seconds.
      default: 0
    - name: properties
      value: string
      description: |
        Chart properties, like line width, color palette, and the fill missing data method. Leave this field empty to use the defaults.
        This property contains JSON object encoded as a string.
    - name: parentId
      value: string
      description: |
        Identifier of a folder to which the metrics search should be added.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteMetricsSearch"
    values={[
        { label: 'deleteMetricsSearch', value: 'deleteMetricsSearch' }
    ]}
>
<TabItem value="deleteMetricsSearch">

Deletes a metrics search from the content library.

```sql
DELETE FROM sumologic.metrics_searches.metrics_searches
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateMetricsSearch"
    values={[
        { label: 'updateMetricsSearch', value: 'updateMetricsSearch' }
    ]}
>
<TabItem value="updateMetricsSearch">

Updates a metrics search with the specified identifier. Partial updates are not supported, you must provide values for all fields.

```sql
EXEC sumologic.metrics_searches.metrics_searches.updateMetricsSearch 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"title": "{{ title }}", 
"description": "{{ description }}", 
"timeRange": "{{ timeRange }}", 
"logQuery": "{{ logQuery }}", 
"metricsQueries": "{{ metricsQueries }}", 
"desiredQuantizationInSecs": {{ desiredQuantizationInSecs }}, 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
