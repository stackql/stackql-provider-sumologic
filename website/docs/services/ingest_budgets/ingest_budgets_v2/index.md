--- 
title: ingest_budgets_v2
hide_title: false
hide_table_of_contents: false
keywords:
  - ingest_budgets_v2
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

Creates, updates, deletes, gets or lists an <code>ingest_budgets_v2</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>ingest_budgets_v2</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.ingest_budgets.ingest_budgets_v2" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getIngestBudgetV2"
    values={[
        { label: 'getIngestBudgetV2', value: 'getIngestBudgetV2' },
        { label: 'listIngestBudgetsV2', value: 'listIngestBudgetsV2' }
    ]}
>
<TabItem value="getIngestBudgetV2">

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
    <td>Unique identifier for the ingest budget. (example: 0000000003343FDD)</td>
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
    <td><CopyableCode code="budgetVersion" /></td>
    <td><code>integer (int32)</code></td>
    <td>The version of the Ingest Budget</td>
</tr>
<tr>
    <td><CopyableCode code="capacityBytes" /></td>
    <td><code>integer (int64)</code></td>
    <td>Capacity of the ingest budget, in bytes. It takes a few minutes for Collectors to stop collecting when capacity is reached. We recommend setting a soft limit that is lower than your needed hard limit.</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>The creation timestamp in UTC of the Ingest Budget. (example: 2018-10-16T09:10:00Z)</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>The identifier of the user who created the Ingest Budget. (example: 0000000006743FDD)</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the ingest budget.</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>The modified timestamp in UTC of the Ingest Budget. (example: 2018-10-16T09:10:00Z)</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedBy" /></td>
    <td><code>string</code></td>
    <td>The identifier of the user who modified the Ingest Budget. (example: 0000000001243FDD)</td>
</tr>
<tr>
    <td><CopyableCode code="resetTime" /></td>
    <td><code>string</code></td>
    <td>Reset time of the ingest budget in HH:MM format. (example: 23:30)</td>
</tr>
<tr>
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>A scope is a constraint that will be used to identify the messages on which budget needs to be applied. A scope is consists of key and value separated by =. The field must be enabled in the fields table. Value supports wildcard. e.g. _sourceCategory=*prod*payment*, cluster=kafka. If the scope is defined _sourceCategory=*nginx* in this budget will be applied on messages having fields _sourceCategory=prod/nginx, _sourceCategory=dev/nginx, or _sourceCategory=dev/nginx/error (example: _sourceCategory=*prod*nginx*)</td>
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
    <td>Status of the current usage. Can be `Normal`, `Approaching`, `Exceeded`, or `Unknown` (unable to retrieve usage). (pattern: <code>^(Normal|Approaching|Exceeded|Unknown)$</code>, example: Approaching, x-pattern-message: must be either `Normal`, `Approaching`, `Exceeded`, or `Unknown`)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="listIngestBudgetsV2">

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
    <td><a href="#getIngestBudgetV2"><CopyableCode code="getIngestBudgetV2" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get an ingest budget by the given identifier.</td>
</tr>
<tr>
    <td><a href="#listIngestBudgetsV2"><CopyableCode code="listIngestBudgetsV2" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Get a list of all ingest budgets. The response is paginated with a default limit of 100 budgets per page.</td>
</tr>
<tr>
    <td><a href="#createIngestBudgetV2"><CopyableCode code="createIngestBudgetV2" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__action"><code>data__action</code></a>, <a href="#parameter-data__capacityBytes"><code>data__capacityBytes</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__resetTime"><code>data__resetTime</code></a>, <a href="#parameter-data__scope"><code>data__scope</code></a>, <a href="#parameter-data__timezone"><code>data__timezone</code></a></td>
    <td></td>
    <td>Create a new ingest budget.</td>
</tr>
<tr>
    <td><a href="#deleteIngestBudgetV2"><CopyableCode code="deleteIngestBudgetV2" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete an ingest budget with the given identifier.</td>
</tr>
<tr>
    <td><a href="#updateIngestBudgetV2"><CopyableCode code="updateIngestBudgetV2" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-action"><code>action</code></a>, <a href="#parameter-capacityBytes"><code>capacityBytes</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-resetTime"><code>resetTime</code></a>, <a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-timezone"><code>timezone</code></a></td>
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
    defaultValue="getIngestBudgetV2"
    values={[
        { label: 'getIngestBudgetV2', value: 'getIngestBudgetV2' },
        { label: 'listIngestBudgetsV2', value: 'listIngestBudgetsV2' }
    ]}
>
<TabItem value="getIngestBudgetV2">

Get an ingest budget by the given identifier.

```sql
SELECT
id,
name,
action,
auditThreshold,
budgetVersion,
capacityBytes,
createdAt,
createdBy,
description,
modifiedAt,
modifiedBy,
resetTime,
scope,
timezone,
usageBytes,
usageStatus
FROM sumologic.ingest_budgets.ingest_budgets_v2
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="listIngestBudgetsV2">

Get a list of all ingest budgets. The response is paginated with a default limit of 100 budgets per page.

```sql
SELECT
data,
next
FROM sumologic.ingest_budgets.ingest_budgets_v2
WHERE region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createIngestBudgetV2"
    values={[
        { label: 'createIngestBudgetV2', value: 'createIngestBudgetV2' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createIngestBudgetV2">

Create a new ingest budget.

```sql
INSERT INTO sumologic.ingest_budgets.ingest_budgets_v2 (
data__name,
data__scope,
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
'{{ scope }}' /* required */,
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
budgetVersion,
capacityBytes,
createdAt,
createdBy,
description,
modifiedAt,
modifiedBy,
resetTime,
scope,
timezone,
usageBytes,
usageStatus
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: ingest_budgets_v2
  props:
    - name: region
      value: string
      description: Required parameter for the ingest_budgets_v2 resource.
    - name: name
      value: string
      description: |
        Display name of the ingest budget.
    - name: scope
      value: string
      description: |
        A scope is a constraint that will be used to identify the messages on which budget needs to be applied. A scope is consists of key and value separated by =. The field must be enabled in the fields table. Value supports wildcard. e.g. _sourceCategory=*prod*payment*, cluster=kafka. If the scope is defined _sourceCategory=*nginx* in this budget will be applied on messages having fields _sourceCategory=prod/nginx, _sourceCategory=dev/nginx, or _sourceCategory=dev/nginx/error
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
    defaultValue="deleteIngestBudgetV2"
    values={[
        { label: 'deleteIngestBudgetV2', value: 'deleteIngestBudgetV2' }
    ]}
>
<TabItem value="deleteIngestBudgetV2">

Delete an ingest budget with the given identifier.

```sql
DELETE FROM sumologic.ingest_budgets.ingest_budgets_v2
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateIngestBudgetV2"
    values={[
        { label: 'updateIngestBudgetV2', value: 'updateIngestBudgetV2' }
    ]}
>
<TabItem value="updateIngestBudgetV2">

Update an existing ingest budget. All properties specified in the request are required.

```sql
EXEC sumologic.ingest_budgets.ingest_budgets_v2.updateIngestBudgetV2 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"name": "{{ name }}", 
"scope": "{{ scope }}", 
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
