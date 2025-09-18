--- 
title: report_jobs_status
hide_title: false
hide_table_of_contents: false
keywords:
  - report_jobs_status
  - dashboards
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

Creates, updates, deletes, gets or lists a <code>report_jobs_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>report_jobs_status</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.dashboards.report_jobs_status" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getAsyncReportGenerationStatus"
    values={[
        { label: 'getAsyncReportGenerationStatus', value: 'getAsyncReportGenerationStatus' }
    ]}
>
<TabItem value="getAsyncReportGenerationStatus">

The status of the report generation job.

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
    <td><CopyableCode code="error" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Whether or not the request is in progress (`InProgress`), has completed successfully (`Success`), or has completed with an error (`Failed`).</td>
</tr>
<tr>
    <td><CopyableCode code="statusMessage" /></td>
    <td><code>string</code></td>
    <td>Additional status message generated if the status is not `Failed`.</td>
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
    <td><a href="#getAsyncReportGenerationStatus"><CopyableCode code="getAsyncReportGenerationStatus" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-jobId"><code>jobId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the status of an asynchronous report generation request for the given job identifier. On success, use the [getReportGenerationResult] endpoint to get the result of the report generation job.</td>
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
<tr id="parameter-jobId">
    <td><CopyableCode code="jobId" /></td>
    <td><code>string</code></td>
    <td>The identifier of the asynchronous report generation job.</td>
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
    defaultValue="getAsyncReportGenerationStatus"
    values={[
        { label: 'getAsyncReportGenerationStatus', value: 'getAsyncReportGenerationStatus' }
    ]}
>
<TabItem value="getAsyncReportGenerationStatus">

Get the status of an asynchronous report generation request for the given job identifier. On success, use the [getReportGenerationResult] endpoint to get the result of the report generation job.

```sql
SELECT
error,
status,
statusMessage
FROM sumologic.dashboards.report_jobs_status
WHERE jobId = '{{ jobId }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
