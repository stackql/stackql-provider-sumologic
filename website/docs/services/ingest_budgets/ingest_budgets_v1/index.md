--- 
title: ingest_budgets_v1
hide_title: false
hide_table_of_contents: false
keywords:
  - ingest_budgets_v1
  - ingest_budgets
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

Creates, updates, deletes, gets or lists an <code>ingest_budgets_v1</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>ingest_budgets_v1</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.ingest_budgets.ingest_budgets_v1" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getIngestBudget"
    values={[
        { label: 'getIngestBudget', value: 'getIngestBudget' },
        { label: 'listIngestBudgets', value: 'listIngestBudgets' }
    ]}
>
<TabItem value="getIngestBudget">

Ingest budget object that was requested.

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
    <td>Unique identifier for the ingest budget.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Display name of the ingest budget. (example: Developer Budget)</td>
</tr>
<tr>
    <td><CopyableCode code="action" /></td>
    <td><code>string</code></td>
    <td>Action to take when ingest budget's capacity is reached. All actions are audited. Supported values are:   * `stopCollecting`   * `keepCollecting` (pattern: <code>^(keepCollecting|stopCollecting)$</code>, example: stopCollecting, x-pattern-message: must be either `keepCollecting` or `stopCollecting`)</td>
</tr>
<tr>
    <td><CopyableCode code="auditThreshold" /></td>
    <td><code>integer (int32)</code></td>
    <td>The threshold as a percentage of when an ingest budget's capacity usage is logged in the Audit Index.</td>
</tr>
<tr>
    <td><CopyableCode code="capacityBytes" /></td>
    <td><code>integer (int64)</code></td>
    <td>Capacity of the ingest budget, in bytes. It takes a few minutes for Collectors to stop collecting when capacity is reached. We recommend setting a soft limit that is lower than your needed hard limit.</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Creation timestamp in UTC in [RFC3339](https://tools.ietf.org/html/rfc3339) format.</td>
</tr>
<tr>
    <td><CopyableCode code="createdByUser" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the ingest budget.</td>
</tr>
<tr>
    <td><CopyableCode code="fieldValue" /></td>
    <td><code>string</code></td>
    <td>Custom field value that is used to assign Collectors to the ingest budget. (example: dev_30_gb)</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Last modification timestamp in UTC in [RFC3339](https://tools.ietf.org/html/rfc3339) format.</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedByUser" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="numberOfCollectors" /></td>
    <td><code>integer (int64)</code></td>
    <td>Number of collectors assigned to the ingest budget.</td>
</tr>
<tr>
    <td><CopyableCode code="resetTime" /></td>
    <td><code>string</code></td>
    <td>Reset time of the ingest budget in HH:MM format. (example: 23:30)</td>
</tr>
<tr>
    <td><CopyableCode code="timezone" /></td>
    <td><code>string</code></td>
    <td>Time zone of the reset time for the ingest budget. Follow the format in the [IANA Time Zone Database](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List). (example: America/Los_Angeles)</td>
</tr>
<tr>
    <td><CopyableCode code="usageBytes" /></td>
    <td><code>integer (int64)</code></td>
    <td>Current usage since the last reset, in bytes.</td>
</tr>
<tr>
    <td><CopyableCode code="usageStatus" /></td>
    <td><code>string</code></td>
    <td>Status of the current usage. Can be `Normal`, `Approaching`, `Exceeded`, or `Unknown` (unable to retrieve usage). (example: Approaching)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="listIngestBudgets">

A paginated list of budgets.

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
    <td>List of ingest budgets.</td>
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
    <td><a href="#getIngestBudget"><CopyableCode code="getIngestBudget" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get an ingest budget by the given identifier.</td>
</tr>
<tr>
    <td><a href="#listIngestBudgets"><CopyableCode code="listIngestBudgets" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Get a list of all ingest budgets. The response is paginated with a default limit of 100 budgets per page.</td>
</tr>
<tr>
    <td><a href="#createIngestBudget"><CopyableCode code="createIngestBudget" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__action"><code>data__action</code></a>, <a href="#parameter-data__capacityBytes"><code>data__capacityBytes</code></a>, <a href="#parameter-data__fieldValue"><code>data__fieldValue</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__resetTime"><code>data__resetTime</code></a>, <a href="#parameter-data__timezone"><code>data__timezone</code></a></td>
    <td></td>
    <td>Create a new ingest budget.</td>
</tr>
<tr>
    <td><a href="#deleteIngestBudget"><CopyableCode code="deleteIngestBudget" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete an ingest budget with the given identifier.</td>
</tr>
<tr>
    <td><a href="#updateIngestBudget"><CopyableCode code="updateIngestBudget" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-action"><code>action</code></a>, <a href="#parameter-capacityBytes"><code>capacityBytes</code></a>, <a href="#parameter-fieldValue"><code>fieldValue</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-resetTime"><code>resetTime</code></a>, <a href="#parameter-timezone"><code>timezone</code></a></td>
    <td></td>
    <td>Update an existing ingest budget. All properties specified in the request are required.</td>
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
    <td>Identifier of the ingest budget to update.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit the number of budgets returned in the response. The number of budgets returned may be less than the `limit`.</td>
</tr>
<tr id="parameter-token">
    <td><CopyableCode code="token" /></td>
    <td><code>string</code></td>
    <td>Continuation token to get the next page of results. A page object with the next continuation token is returned in the response body. Subsequent GET requests should specify the continuation token to get the next page of results.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getIngestBudget"
    values={[
        { label: 'getIngestBudget', value: 'getIngestBudget' },
        { label: 'listIngestBudgets', value: 'listIngestBudgets' }
    ]}
>
<TabItem value="getIngestBudget">

Get an ingest budget by the given identifier.

```sql
SELECT
id,
name,
action,
auditThreshold,
capacityBytes,
createdAt,
createdByUser,
description,
fieldValue,
modifiedAt,
modifiedByUser,
numberOfCollectors,
resetTime,
timezone,
usageBytes,
usageStatus
FROM sumologic.ingest_budgets.ingest_budgets_v1
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="listIngestBudgets">

Get a list of all ingest budgets. The response is paginated with a default limit of 100 budgets per page.

```sql
SELECT
data,
next
FROM sumologic.ingest_budgets.ingest_budgets_v1
WHERE region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createIngestBudget"
    values={[
        { label: 'createIngestBudget', value: 'createIngestBudget' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createIngestBudget">

Create a new ingest budget.

```sql
INSERT INTO sumologic.ingest_budgets.ingest_budgets_v1 (
data__name,
data__fieldValue,
data__capacityBytes,
data__timezone,
data__resetTime,
data__description,
data__action,
data__auditThreshold,
region
)
SELECT 
'{{ name }}' /* required */,
'{{ fieldValue }}' /* required */,
{{ capacityBytes }} /* required */,
'{{ timezone }}' /* required */,
'{{ resetTime }}' /* required */,
'{{ description }}',
'{{ action }}' /* required */,
{{ auditThreshold }},
'{{ region }}'
RETURNING
id,
name,
action,
auditThreshold,
capacityBytes,
createdAt,
createdByUser,
description,
fieldValue,
modifiedAt,
modifiedByUser,
numberOfCollectors,
resetTime,
timezone,
usageBytes,
usageStatus
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: ingest_budgets_v1
  props:
    - name: region
      value: string
      description: Required parameter for the ingest_budgets_v1 resource.
    - name: name
      value: string
      description: |
        Display name of the ingest budget.
    - name: fieldValue
      value: string
      description: |
        Custom field value that is used to assign Collectors to the ingest budget.
    - name: capacityBytes
      value: integer
      description: |
        Capacity of the ingest budget, in bytes. It takes a few minutes for Collectors to stop collecting when capacity is reached. We recommend setting a soft limit that is lower than your needed hard limit.
    - name: timezone
      value: string
      description: |
        Time zone of the reset time for the ingest budget. Follow the format in the [IANA Time Zone Database](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).
    - name: resetTime
      value: string
      description: |
        Reset time of the ingest budget in HH:MM format.
    - name: description
      value: string
      description: |
        Description of the ingest budget.
    - name: action
      value: string
      description: |
        Action to take when ingest budget's capacity is reached. All actions are audited. Supported values are:
        * `stopCollecting`
        * `keepCollecting`
    - name: auditThreshold
      value: integer
      description: |
        The threshold as a percentage of when an ingest budget's capacity usage is logged in the Audit Index.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteIngestBudget"
    values={[
        { label: 'deleteIngestBudget', value: 'deleteIngestBudget' }
    ]}
>
<TabItem value="deleteIngestBudget">

Delete an ingest budget with the given identifier.

```sql
DELETE FROM sumologic.ingest_budgets.ingest_budgets_v1
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateIngestBudget"
    values={[
        { label: 'updateIngestBudget', value: 'updateIngestBudget' }
    ]}
>
<TabItem value="updateIngestBudget">

Update an existing ingest budget. All properties specified in the request are required.

```sql
EXEC sumologic.ingest_budgets.ingest_budgets_v1.updateIngestBudget 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"name": "{{ name }}", 
"fieldValue": "{{ fieldValue }}", 
"capacityBytes": {{ capacityBytes }}, 
"timezone": "{{ timezone }}", 
"resetTime": "{{ resetTime }}", 
"description": "{{ description }}", 
"action": "{{ action }}", 
"auditThreshold": {{ auditThreshold }}
}'
;
```
</TabItem>
</Tabs>
