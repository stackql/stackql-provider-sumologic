--- 
title: spanquery
hide_title: false
hide_table_of_contents: false
keywords:
  - spanquery
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

Creates, updates, deletes, gets or lists a <code>spanquery</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>spanquery</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.tracing.spanquery" /></td></tr>
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
    <td><a href="#createSpanQuery"><CopyableCode code="createSpanQuery" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__queryRows"><code>data__queryRows</code></a>, <a href="#parameter-data__timeRange"><code>data__timeRange</code></a></td>
    <td></td>
    <td>Execute a span analytics query and get the id to fetch its status and results. Use the [Span Query Status] endpoint to check a query status. When the query has been completed, use the [Span Query Result] endpoint to get the result of the asynchronous query.</td>
</tr>
<tr>
    <td><a href="#cancelSpanQuery"><CopyableCode code="cancelSpanQuery" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-queryId"><code>queryId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Cancel a currently processed span search query with the given id.</td>
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
    <td>Identifier of the query to cancel.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="createSpanQuery"
    values={[
        { label: 'createSpanQuery', value: 'createSpanQuery' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createSpanQuery">

Execute a span analytics query and get the id to fetch its status and results. Use the [Span Query Status] endpoint to check a query status. When the query has been completed, use the [Span Query Result] endpoint to get the result of the asynchronous query.

```sql
INSERT INTO sumologic.tracing.spanquery (
data__queryRows,
data__timeRange,
data__timeZone,
region
)
SELECT 
'{{ queryRows }}' /* required */,
'{{ timeRange }}' /* required */,
'{{ timeZone }}',
'{{ region }}'
RETURNING
hasErrors,
queryId,
queryRows,
timeRange
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: spanquery
  props:
    - name: region
      value: string
      description: Required parameter for the spanquery resource.
    - name: queryRows
      value: array
      description: |
        A list of span analytics queries.
    - name: timeRange
      value: object
    - name: timeZone
      value: string
      description: |
        Time zone for the query time ranges. Follow the format in the [IANA Time Zone Database](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).
      default: UTC
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="cancelSpanQuery"
    values={[
        { label: 'cancelSpanQuery', value: 'cancelSpanQuery' }
    ]}
>
<TabItem value="cancelSpanQuery">

Cancel a currently processed span search query with the given id.

```sql
EXEC sumologic.tracing.spanquery.cancelSpanQuery 
@queryId='{{ queryId }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
</Tabs>
