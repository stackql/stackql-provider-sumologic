--- 
title: scheduled_views
hide_title: false
hide_table_of_contents: false
keywords:
  - scheduled_views
  - scheduled_views
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

Creates, updates, deletes, gets or lists a <code>scheduled_views</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>scheduled_views</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.scheduled_views.scheduled_views" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getScheduledView"
    values={[
        { label: 'getScheduledView', value: 'getScheduledView' },
        { label: 'listScheduledViews', value: 'listScheduledViews' }
    ]}
>
<TabItem value="getScheduledView">

Scheduled view object that was requested.

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
    <td>Identifier for the scheduled view.</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Creation timestamp in UTC.</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user who created the scheduled view. (example: 0000000006743FE8)</td>
</tr>
<tr>
    <td><CopyableCode code="createdByOptimizeIt" /></td>
    <td><code>boolean</code></td>
    <td>If the scheduled view is created by OptimizeIt.</td>
</tr>
<tr>
    <td><CopyableCode code="dataForwardingId" /></td>
    <td><code>string</code></td>
    <td>An optional ID of a data forwarding configuration to be used by the scheduled view.</td>
</tr>
<tr>
    <td><CopyableCode code="error" /></td>
    <td><code>string</code></td>
    <td>Errors related to the scheduled view.</td>
</tr>
<tr>
    <td><CopyableCode code="filledRanges" /></td>
    <td><code>array</code></td>
    <td>List of the different units of filled ranges since the autoview has been created.</td>
</tr>
<tr>
    <td><CopyableCode code="indexId" /></td>
    <td><code>string</code></td>
    <td>The `id` of the Index where the output from Scheduled view is stored. (example: 1)</td>
</tr>
<tr>
    <td><CopyableCode code="indexName" /></td>
    <td><code>string</code></td>
    <td>Name of the index for the scheduled view. (example: TestScheduledView)</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Last modification timestamp in UTC in [RFC3339](https://tools.ietf.org/html/rfc3339) format.</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedBy" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user who last modified the resource. (example: 0000000006743FE8)</td>
</tr>
<tr>
    <td><CopyableCode code="newRetentionPeriod" /></td>
    <td><code>integer (int32)</code></td>
    <td>If the retention period is scheduled to be updated in the future (i.e., if retention period is previously reduced with value of reduceRetentionPeriodImmediately as false), this property gives the future value of retention period while retentionPeriod gives the current value. retentionPeriod will take up the value of newRetentionPeriod after the scheduled time.</td>
</tr>
<tr>
    <td><CopyableCode code="parsingMode" /></td>
    <td><code>string</code></td>
    <td>Define the parsing mode to scan the JSON format log messages. Possible values are:   1. `AutoParse`   2. `Manual` In AutoParse mode, the system automatically figures out fields to parse based on the search query. While in the Manual mode, no fields are parsed out automatically. For more information see [Dynamic Parsing](https://help.sumologic.com/?cid=0011). (pattern: <code>^(AutoParse|Manual)$</code>, example: AutoParse, default: Manual, x-pattern-message: should be either AutoParse or Manual)</td>
</tr>
<tr>
    <td><CopyableCode code="query" /></td>
    <td><code>string</code></td>
    <td>The query that defines the data to be included in the scheduled view. (example: _sourceCategory=*/Apache)</td>
</tr>
<tr>
    <td><CopyableCode code="retentionEffectiveAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>When the newRetentionPeriod will become effective in UTC format.</td>
</tr>
<tr>
    <td><CopyableCode code="retentionPeriod" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of days to retain data in the scheduled view, or -1 to use the default value for your account. Only relevant if your account has multi-retention enabled.</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Start timestamp in UTC in [RFC3339](https://tools.ietf.org/html/rfc3339) format.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the scheduled view.</td>
</tr>
<tr>
    <td><CopyableCode code="totalBytes" /></td>
    <td><code>integer (int64)</code></td>
    <td>Total storage consumed by the scheduled view.</td>
</tr>
<tr>
    <td><CopyableCode code="totalMessageCount" /></td>
    <td><code>integer (int64)</code></td>
    <td>Total number of messages for the scheduled view.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="listScheduledViews">

A paginated list of scheduled views in the organization.

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
    <td><CopyableCode code="data" /></td>
    <td><code>array</code></td>
    <td>List of scheduled views.</td>
</tr>
<tr>
    <td><CopyableCode code="next" /></td>
    <td><code>string</code></td>
    <td>Next continuation token.</td>
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
    <td><a href="#getScheduledView"><CopyableCode code="getScheduledView" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a scheduled view with the given identifier.</td>
</tr>
<tr>
    <td><a href="#listScheduledViews"><CopyableCode code="listScheduledViews" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Get a list of all scheduled views in the organization. The response is paginated with a default limit of 100 scheduled views per page.</td>
</tr>
<tr>
    <td><a href="#createScheduledView"><CopyableCode code="createScheduledView" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__indexName"><code>data__indexName</code></a>, <a href="#parameter-data__query"><code>data__query</code></a>, <a href="#parameter-data__startTime"><code>data__startTime</code></a></td>
    <td></td>
    <td>Creates a new scheduled view in the organization.</td>
</tr>
<tr>
    <td><a href="#updateScheduledView"><CopyableCode code="updateScheduledView" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Update an existing scheduled view.</td>
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
    <td>Identifier of the scheduled view to update.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit the number of scheduled views returned in the response. The number of scheduled views returned may be less than the `limit`.</td>
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
    defaultValue="getScheduledView"
    values={[
        { label: 'getScheduledView', value: 'getScheduledView' },
        { label: 'listScheduledViews', value: 'listScheduledViews' }
    ]}
>
<TabItem value="getScheduledView">

Get a scheduled view with the given identifier.

```sql
SELECT
id,
createdAt,
createdBy,
createdByOptimizeIt,
dataForwardingId,
error,
filledRanges,
indexId,
indexName,
modifiedAt,
modifiedBy,
newRetentionPeriod,
parsingMode,
query,
retentionEffectiveAt,
retentionPeriod,
startTime,
status,
totalBytes,
totalMessageCount
FROM sumologic.scheduled_views.scheduled_views
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="listScheduledViews">

Get a list of all scheduled views in the organization. The response is paginated with a default limit of 100 scheduled views per page.

```sql
SELECT
data,
next
FROM sumologic.scheduled_views.scheduled_views
WHERE region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createScheduledView"
    values={[
        { label: 'createScheduledView', value: 'createScheduledView' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createScheduledView">

Creates a new scheduled view in the organization.

```sql
INSERT INTO sumologic.scheduled_views.scheduled_views (
data__query,
data__indexName,
data__startTime,
data__retentionPeriod,
data__dataForwardingId,
data__parsingMode,
region
)
SELECT 
'{{ query }}' /* required */,
'{{ indexName }}' /* required */,
'{{ startTime }}' /* required */,
{{ retentionPeriod }},
'{{ dataForwardingId }}',
'{{ parsingMode }}',
'{{ region }}'
RETURNING
id,
createdAt,
createdBy,
createdByOptimizeIt,
dataForwardingId,
error,
filledRanges,
indexId,
indexName,
modifiedAt,
modifiedBy,
newRetentionPeriod,
parsingMode,
query,
retentionEffectiveAt,
retentionPeriod,
startTime,
status,
totalBytes,
totalMessageCount
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: scheduled_views
  props:
    - name: region
      value: string
      description: Required parameter for the scheduled_views resource.
    - name: query
      value: string
      description: |
        The query that defines the data to be included in the scheduled view.
    - name: indexName
      value: string
      description: |
        Name of the index for the scheduled view.
    - name: startTime
      value: string
      description: |
        Start timestamp in UTC in [RFC3339](https://tools.ietf.org/html/rfc3339) format.
    - name: retentionPeriod
      value: integer
      description: |
        The number of days to retain data in the scheduled view, or -1 to use the default value for your account. Only relevant if your account has multi-retention enabled.
      default: -1
    - name: dataForwardingId
      value: string
      description: |
        An optional ID of a data forwarding configuration to be used by the scheduled view.
    - name: parsingMode
      value: string
      description: |
        Define the parsing mode to scan the JSON format log messages. Possible values are:
        1. `AutoParse`
        2. `Manual`
        In AutoParse mode, the system automatically figures out fields to parse based on the search query. While in the Manual mode, no fields are parsed out automatically. For more information see [Dynamic Parsing](https://help.sumologic.com/?cid=0011).
      default: Manual
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateScheduledView"
    values={[
        { label: 'updateScheduledView', value: 'updateScheduledView' }
    ]}
>
<TabItem value="updateScheduledView">

Update an existing scheduled view.

```sql
EXEC sumologic.scheduled_views.scheduled_views.updateScheduledView 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"dataForwardingId": "{{ dataForwardingId }}", 
"retentionPeriod": {{ retentionPeriod }}, 
"reduceRetentionPeriodImmediately": {{ reduceRetentionPeriodImmediately }}
}'
;
```
</TabItem>
</Tabs>
