--- 
title: report_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - report_jobs
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

Creates, updates, deletes, gets or lists a <code>report_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>report_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.dashboards.report_jobs" /></td></tr>
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
    <td><a href="#generateDashboardReport"><CopyableCode code="generateDashboardReport" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-action"><code>action</code></a>, <a href="#parameter-exportFormat"><code>exportFormat</code></a>, <a href="#parameter-template"><code>template</code></a>, <a href="#parameter-timezone"><code>timezone</code></a></td>
    <td></td>
    <td>Schedule an asynchronous job to generate a report from a template. All items in the template will be included unless specified. See template section for more details on individual templates. Reports can be generated in Pdf or Png format and exported in various methods (ex. direct download). You will get back an asynchronous job identifier on success. Use the [getAsyncReportGenerationStatus] endpoint and the job identifier you got back in the response to track the status of an asynchronous report generation job.<br /></td>
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
    defaultValue="generateDashboardReport"
    values={[
        { label: 'generateDashboardReport', value: 'generateDashboardReport' }
    ]}
>
<TabItem value="generateDashboardReport">

Schedule an asynchronous job to generate a report from a template. All items in the template will be included unless specified. See template section for more details on individual templates. Reports can be generated in Pdf or Png format and exported in various methods (ex. direct download). You will get back an asynchronous job identifier on success. Use the [getAsyncReportGenerationStatus] endpoint and the job identifier you got back in the response to track the status of an asynchronous report generation job.<br />

```sql
EXEC sumologic.dashboards.report_jobs.generateDashboardReport 
@region='{{ region }}' --required 
@@json=
'{
"action": "{{ action }}", 
"exportFormat": "{{ exportFormat }}", 
"timezone": "{{ timezone }}", 
"template": "{{ template }}"
}'
;
```
</TabItem>
</Tabs>
