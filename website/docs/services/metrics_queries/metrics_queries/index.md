--- 
title: metrics_queries
hide_title: false
hide_table_of_contents: false
keywords:
  - metrics_queries
  - metrics_queries
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

Creates, updates, deletes, gets or lists a <code>metrics_queries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>metrics_queries</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.metrics_queries.metrics_queries" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#runMetricsQueries"><CopyableCode code="runMetricsQueries" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-queries"><code>queries</code></a>, <a href="#parameter-timeRange"><code>timeRange</code></a></td>
    <td></td>
    <td>Execute up to six metrics queries. If you specify multiple queries, each is returned as a separate set of time series. A metric query returns a maximum of 300 data points per metric. A metric query will process a maximum of 15K unique time series to calculate the query results. Query results are limited to 1000 unique time series.<br />For more information see [Metrics Queries](https://help.sumologic.com/?cid=10144).</td>
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

## Lifecycle Methods

<Tabs
    defaultValue="runMetricsQueries"
    values={[
        { label: 'runMetricsQueries', value: 'runMetricsQueries' }
    ]}
>
<TabItem value="runMetricsQueries">

Execute up to six metrics queries. If you specify multiple queries, each is returned as a separate set of time series. A metric query returns a maximum of 300 data points per metric. A metric query will process a maximum of 15K unique time series to calculate the query results. Query results are limited to 1000 unique time series.<br />For more information see [Metrics Queries](https://help.sumologic.com/?cid=10144).

```sql
EXEC sumologic.metrics_queries.metrics_queries.runMetricsQueries 
@region='{{ region }}' --required 
@@json=
'{
"queries": "{{ queries }}", 
"timeRange": "{{ timeRange }}"
}'
;
```
</TabItem>
</Tabs>
