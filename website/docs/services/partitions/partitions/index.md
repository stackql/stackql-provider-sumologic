--- 
title: partitions
hide_title: false
hide_table_of_contents: false
keywords:
  - partitions
  - partitions
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

Creates, updates, deletes, gets or lists a <code>partitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>partitions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.partitions.partitions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getPartition"
    values={[
        { label: 'getPartition', value: 'getPartition' },
        { label: 'listPartitions', value: 'listPartitions' }
    ]}
>
<TabItem value="getPartition">

Partition object that was requested.

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
    <td>Unique identifier for the partition. (example: 1)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the partition. (example: apache)</td>
</tr>
<tr>
    <td><CopyableCode code="analyticsTier" /></td>
    <td><code>string</code></td>
    <td>The Data Tier where the data in the partition will reside. Possible values are:               1. `continuous`               2. `frequent`               3. `infrequent` Note: The "infrequent" and "frequent" tiers are only available to Cloud Flex Credits Enterprise Suite accounts. (pattern: <code>^(frequent|infrequent|continuous)$</code>, example: continuous, default: continuous, x-pattern-message: must be one of `continuous`, `frequent` or `infrequent`)</td>
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
    <td><CopyableCode code="dataForwardingId" /></td>
    <td><code>string</code></td>
    <td>Id of the data forwarding configuration to be used by the partition.</td>
</tr>
<tr>
    <td><CopyableCode code="indexType" /></td>
    <td><code>string</code></td>
    <td>This has the value `DefaultIndex`, `AuditIndex`or `Partition` depending upon the type of partition. (pattern: <code>^(DefaultIndex|AuditIndex|Partition)$</code>, example: Partition)</td>
</tr>
<tr>
    <td><CopyableCode code="isActive" /></td>
    <td><code>boolean</code></td>
    <td>This has the value `true` if the partition is active and `false` if it has been decommissioned.</td>
</tr>
<tr>
    <td><CopyableCode code="isCompliant" /></td>
    <td><code>boolean</code></td>
    <td>Whether the partition is compliant or not. Mark a partition as compliant if it contains data used for compliance or audit purpose. Retention for a compliant partition can only be increased and cannot be reduced after the partition is marked compliant. A partition once marked compliant, cannot be marked non-compliant later.</td>
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
    <td><CopyableCode code="newRetentionPeriod" /></td>
    <td><code>integer (int32)</code></td>
    <td>If the retention period is scheduled to be updated in the future (i.e., if retention period is previously reduced with value of reduceRetentionPeriodImmediately as false), this property gives the future value of retention period while retentionPeriod gives the current value. retentionPeriod will take up the value of newRetentionPeriod after the scheduled time.</td>
</tr>
<tr>
    <td><CopyableCode code="retentionEffectiveAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>When the newRetentionPeriod will become effective in UTC format.</td>
</tr>
<tr>
    <td><CopyableCode code="retentionPeriod" /></td>
    <td><code>integer</code></td>
    <td>The number of days to retain data in the partition, or -1 to use the default value for your account.  Only relevant if your account has variable retention enabled.</td>
</tr>
<tr>
    <td><CopyableCode code="routingExpression" /></td>
    <td><code>string</code></td>
    <td>The query that defines the data to be included in the partition. (example: _sourcecategory=*/Apache)</td>
</tr>
<tr>
    <td><CopyableCode code="totalBytes" /></td>
    <td><code>integer (int64)</code></td>
    <td>Size of data in partition in bytes.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="listPartitions">

A paginated list of partitions in the organization.

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
    <td>List of partitions.</td>
</tr>
<tr>
    <td><CopyableCode code="next" /></td>
    <td><code>string</code></td>
    <td>Next continuation token. (example: 1)</td>
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
    <td><a href="#getPartition"><CopyableCode code="getPartition" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a partition with the given identifier from the organization.</td>
</tr>
<tr>
    <td><a href="#listPartitions"><CopyableCode code="listPartitions" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a>, <a href="#parameter-viewTypes"><code>viewTypes</code></a></td>
    <td>Get a list of all partitions in the organization. The response is paginated with a default limit of 100 partitions per page.</td>
</tr>
<tr>
    <td><a href="#createPartition"><CopyableCode code="createPartition" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__routingExpression"><code>data__routingExpression</code></a></td>
    <td></td>
    <td>Create a new partition.</td>
</tr>
<tr>
    <td><a href="#updatePartition"><CopyableCode code="updatePartition" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Update an existing partition in the organization.</td>
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
    <td>Identifier of the partition to update.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit the number of partitions returned in the response. The number of partitions returned may be less than the `limit`.</td>
</tr>
<tr id="parameter-token">
    <td><CopyableCode code="token" /></td>
    <td><code>string</code></td>
    <td>Continuation token to get the next page of results. A page object with the next continuation token is returned in the response body. Subsequent GET requests should specify the continuation token to get the next page of results. `token` is set to null when no more pages are left.</td>
</tr>
<tr id="parameter-viewTypes">
    <td><CopyableCode code="viewTypes" /></td>
    <td><code>array</code></td>
    <td>The type of partitions to retrieve. Valid values are:   1. `DefaultView`: To get General Index partition.   2. `Partition`: To get user defined views/partitions.   3. `AuditIndex`: To get the internal audit indexes. Eg. sumologic_audit_events.  More than one type of partitions can be retrieved in same request. (example: [AuditIndex, Partition])</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getPartition"
    values={[
        { label: 'getPartition', value: 'getPartition' },
        { label: 'listPartitions', value: 'listPartitions' }
    ]}
>
<TabItem value="getPartition">

Get a partition with the given identifier from the organization.

```sql
SELECT
id,
name,
analyticsTier,
createdAt,
createdBy,
dataForwardingId,
indexType,
isActive,
isCompliant,
modifiedAt,
modifiedBy,
newRetentionPeriod,
retentionEffectiveAt,
retentionPeriod,
routingExpression,
totalBytes
FROM sumologic.partitions.partitions
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="listPartitions">

Get a list of all partitions in the organization. The response is paginated with a default limit of 100 partitions per page.

```sql
SELECT
data,
next
FROM sumologic.partitions.partitions
WHERE region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
AND viewTypes = '{{ viewTypes }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createPartition"
    values={[
        { label: 'createPartition', value: 'createPartition' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createPartition">

Create a new partition.

```sql
INSERT INTO sumologic.partitions.partitions (
data__name,
data__routingExpression,
data__analyticsTier,
data__retentionPeriod,
data__isCompliant,
region
)
SELECT 
'{{ name }}' /* required */,
'{{ routingExpression }}' /* required */,
'{{ analyticsTier }}',
{{ retentionPeriod }},
{{ isCompliant }},
'{{ region }}'
RETURNING
id,
name,
analyticsTier,
createdAt,
createdBy,
dataForwardingId,
indexType,
isActive,
isCompliant,
modifiedAt,
modifiedBy,
newRetentionPeriod,
retentionEffectiveAt,
retentionPeriod,
routingExpression,
totalBytes
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: partitions
  props:
    - name: region
      value: string
      description: Required parameter for the partitions resource.
    - name: name
      value: string
      description: |
        The name of the partition.
    - name: routingExpression
      value: string
      description: |
        The query that defines the data to be included in the partition.
    - name: analyticsTier
      value: string
      description: |
        The Data Tier where the data in the partition will reside. Possible values are:
        1. `continuous`
        2. `frequent`
        3. `infrequent`
        Note: The "infrequent" and "frequent" tiers are only available to Cloud Flex Credits Enterprise Suite accounts.
      default: continuous
    - name: retentionPeriod
      value: integer
      description: |
        The number of days to retain data in the partition, or -1 to use the default value for your account.  Only relevant if your account has variable retention enabled.
      default: -1
    - name: isCompliant
      value: boolean
      description: |
        Whether the partition is compliant or not. Mark a partition as compliant if it contains data used for compliance or audit purpose. Retention for a compliant partition can only be increased and cannot be reduced after the partition is marked compliant. A partition once marked compliant, cannot be marked non-compliant later.
      default: false
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updatePartition"
    values={[
        { label: 'updatePartition', value: 'updatePartition' }
    ]}
>
<TabItem value="updatePartition">

Update an existing partition in the organization.

```sql
EXEC sumologic.partitions.partitions.updatePartition 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"retentionPeriod": {{ retentionPeriod }}, 
"reduceRetentionPeriodImmediately": {{ reduceRetentionPeriodImmediately }}, 
"isCompliant": {{ isCompliant }}, 
"routingExpression": "{{ routingExpression }}"
}'
;
```
</TabItem>
</Tabs>
