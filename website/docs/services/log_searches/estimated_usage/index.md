--- 
title: estimated_usage
hide_title: false
hide_table_of_contents: false
keywords:
  - estimated_usage
  - log_searches
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

Creates, updates, deletes, gets or lists an <code>estimated_usage</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>estimated_usage</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.log_searches.estimated_usage" /></td></tr>
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
    <td><a href="#getLogSearchEstimatedUsage"><CopyableCode code="getLogSearchEstimatedUsage" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-queryString"><code>queryString</code></a>, <a href="#parameter-timeRange"><code>timeRange</code></a></td>
    <td></td>
    <td>Gets the estimated volume of data that would be scanned for a given log search in the Infrequent data tier.<br /></td>
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
    defaultValue="getLogSearchEstimatedUsage"
    values={[
        { label: 'getLogSearchEstimatedUsage', value: 'getLogSearchEstimatedUsage' }
    ]}
>
<TabItem value="getLogSearchEstimatedUsage">

Gets the estimated volume of data that would be scanned for a given log search in the Infrequent data tier.<br />

```sql
EXEC sumologic.log_searches.estimated_usage.getLogSearchEstimatedUsage 
@region='{{ region }}' --required 
@@json=
'{
"queryString": "{{ queryString }}", 
"timeRange": "{{ timeRange }}", 
"runByReceiptTime": {{ runByReceiptTime }}, 
"queryParameters": "{{ queryParameters }}", 
"parsingMode": "{{ parsingMode }}", 
"timezone": "{{ timezone }}"
}'
;
```
</TabItem>
</Tabs>
