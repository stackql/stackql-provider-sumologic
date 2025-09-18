--- 
title: jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - jobs
  - archive
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

Creates, updates, deletes, gets or lists a <code>jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>jobs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.archive.jobs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="listArchiveJobsBySourceId"
    values={[
        { label: 'listArchiveJobsBySourceId', value: 'listArchiveJobsBySourceId' }
    ]}
>
<TabItem value="listArchiveJobsBySourceId">

A paginated list of ingestion jobs for an Archive Source.

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
    <td>The unique identifier of the ingestion job. (example: 4e214571-cf27-4114-93e6-69a98c017f3)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the ingestion job.</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>The creation timestamp in UTC of the ingestion job. (example: 2018-10-16T09:10:00Z)</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>The identifier of the user who created the ingestion job. (example: 0000000006743FDD)</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The ending timestamp of the ingestion job. (example: 2018-10-16T10:10:00Z)</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The starting timestamp of the ingestion job. (example: 2018-10-16T09:10:00Z)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the ingestion job, either `Pending`,`Scanning`,`Ingesting`,`Failed`, or `Succeeded`. (example: Scanning)</td>
</tr>
<tr>
    <td><CopyableCode code="totalBytesIngested" /></td>
    <td><code>integer (int64)</code></td>
    <td>The total bytes ingested by the ingestion job.</td>
</tr>
<tr>
    <td><CopyableCode code="totalObjectsIngested" /></td>
    <td><code>integer (int64)</code></td>
    <td>The total number of objects ingested by the ingestion job.</td>
</tr>
<tr>
    <td><CopyableCode code="totalObjectsScanned" /></td>
    <td><code>integer (int64)</code></td>
    <td>The total number of objects scanned by the ingestion job.</td>
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
    <td><a href="#listArchiveJobsBySourceId"><CopyableCode code="listArchiveJobsBySourceId" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-sourceId"><code>sourceId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Get a list of all the ingestion jobs created on an Archive Source. The response is paginated with a default limit of 10 jobs per page.</td>
</tr>
<tr>
    <td><a href="#createArchiveJob"><CopyableCode code="createArchiveJob" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-sourceId"><code>sourceId</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__endTime"><code>data__endTime</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__startTime"><code>data__startTime</code></a></td>
    <td></td>
    <td>Create an ingestion job to pull data from your S3 bucket.</td>
</tr>
<tr>
    <td><a href="#deleteArchiveJob"><CopyableCode code="deleteArchiveJob" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-sourceId"><code>sourceId</code></a>, <a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete an ingestion job with the given identifier from the organization. The delete operation is only possible for jobs with a Succeeded or Failed status.</td>
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
    <td>The identifier of the ingestion job to delete.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-sourceId">
    <td><CopyableCode code="sourceId" /></td>
    <td><code>string</code></td>
    <td>The identifier of the Archive Source.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit the number of jobs returned in the response. The number of jobs returned may be less than the `limit`.</td>
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
    defaultValue="listArchiveJobsBySourceId"
    values={[
        { label: 'listArchiveJobsBySourceId', value: 'listArchiveJobsBySourceId' }
    ]}
>
<TabItem value="listArchiveJobsBySourceId">

Get a list of all the ingestion jobs created on an Archive Source. The response is paginated with a default limit of 10 jobs per page.

```sql
SELECT
id,
name,
createdAt,
createdBy,
endTime,
startTime,
status,
totalBytesIngested,
totalObjectsIngested,
totalObjectsScanned
FROM sumologic.archive.jobs
WHERE sourceId = '{{ sourceId }}' -- required
AND region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createArchiveJob"
    values={[
        { label: 'createArchiveJob', value: 'createArchiveJob' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createArchiveJob">

Create an ingestion job to pull data from your S3 bucket.

```sql
INSERT INTO sumologic.archive.jobs (
data__name,
data__startTime,
data__endTime,
sourceId,
region
)
SELECT 
'{{ name }}' /* required */,
'{{ startTime }}' /* required */,
'{{ endTime }}' /* required */,
'{{ sourceId }}',
'{{ region }}'
RETURNING
id,
name,
createdAt,
createdBy,
endTime,
startTime,
status,
totalBytesIngested,
totalObjectsIngested,
totalObjectsScanned
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: jobs
  props:
    - name: sourceId
      value: string
      description: Required parameter for the jobs resource.
    - name: region
      value: string
      description: Required parameter for the jobs resource.
    - name: name
      value: string
      description: |
        The name of the ingestion job.
    - name: startTime
      value: string
      description: |
        The starting timestamp of the ingestion job.
    - name: endTime
      value: string
      description: |
        The ending timestamp of the ingestion job.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteArchiveJob"
    values={[
        { label: 'deleteArchiveJob', value: 'deleteArchiveJob' }
    ]}
>
<TabItem value="deleteArchiveJob">

Delete an ingestion job with the given identifier from the organization. The delete operation is only possible for jobs with a Succeeded or Failed status.

```sql
DELETE FROM sumologic.archive.jobs
WHERE sourceId = '{{ sourceId }}' --required
AND id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
