--- 
title: rules
hide_title: false
hide_table_of_contents: false
keywords:
  - rules
  - logs_data_forwarding
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

Creates, updates, deletes, gets or lists a <code>rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.logs_data_forwarding.rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getDataForwardingRule"
    values={[
        { label: 'getDataForwardingRule', value: 'getDataForwardingRule' },
        { label: 'getRulesAndBuckets', value: 'getRulesAndBuckets' }
    ]}
>
<TabItem value="getDataForwardingRule">

Data forwarding rule that was requested.

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
    <td>The unique identifier of the data forwarding rule. (example: 1)</td>
</tr>
<tr>
    <td><CopyableCode code="bucket" /></td>
    <td><code>object</code></td>
    <td></td>
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
    <td><CopyableCode code="destinationId" /></td>
    <td><code>string</code></td>
    <td>The data forwarding destination id. (example: 1)</td>
</tr>
<tr>
    <td><CopyableCode code="enabled" /></td>
    <td><code>boolean</code></td>
    <td>True when the data forwarding rule is enabled.</td>
</tr>
<tr>
    <td><CopyableCode code="fileFormat" /></td>
    <td><code>string</code></td>
    <td>Specify the path prefix to a directory in the S3 bucket and how to format the file name. (example: &#123;index&#125;&#95;&#123;day&#125;&#95;&#123;hour&#125;&#95;&#123;minute&#125;&#95;&#123;second&#125;)</td>
</tr>
<tr>
    <td><CopyableCode code="format" /></td>
    <td><code>string</code></td>
    <td>Format of the payload. (pattern: <code>^(csv|raw|json)$</code>, example: csv, default: csv, x-pattern-message: should be one of the following: 'csv', 'raw', or 'json')</td>
</tr>
<tr>
    <td><CopyableCode code="indexId" /></td>
    <td><code>string</code></td>
    <td>The `id` of the Partition or Scheduled View the rule applies to. (example: 1)</td>
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
    <td><CopyableCode code="payloadSchema" /></td>
    <td><code>string</code></td>
    <td>Schema for the payload. (pattern: <code>^(default|builtInFields|allFields)$</code>, example: default, default: default, x-pattern-message: should be one of the following: 'default', 'builtInFields', or 'allFields')</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="getRulesAndBuckets">

List of all S3 data forwarding rules.

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
    <td>List of S3 data forwarding rules.</td>
</tr>
<tr>
    <td><CopyableCode code="nextToken" /></td>
    <td><code>string</code></td>
    <td>Next continuation token. (example: VEZuRU4veXF2UWFCUURYSDNQUzJxWlpRRUsvTlBieXA)</td>
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
    <td><a href="#getDataForwardingRule"><CopyableCode code="getDataForwardingRule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-indexId"><code>indexId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the details of an S3 data forwarding rule by its Partition or Scheduled View identifier.</td>
</tr>
<tr>
    <td><a href="#getRulesAndBuckets"><CopyableCode code="getRulesAndBuckets" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Get a list of all S3 data forwarding rules.</td>
</tr>
<tr>
    <td><a href="#createDataForwardingRule"><CopyableCode code="createDataForwardingRule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__destinationId"><code>data__destinationId</code></a>, <a href="#parameter-data__indexId"><code>data__indexId</code></a></td>
    <td></td>
    <td>Create a data forwarding rule to send data from a Partition or Scheduled View to an S3 bucket.</td>
</tr>
<tr>
    <td><a href="#deleteDataForwardingRule"><CopyableCode code="deleteDataForwardingRule" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-indexId"><code>indexId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete an S3 data forwarding rule by its Partition or Scheduled View identifier.</td>
</tr>
<tr>
    <td><a href="#updateDataForwardingRule"><CopyableCode code="updateDataForwardingRule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-indexId"><code>indexId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Update an S3 data forwarding rule by its Partition or Scheduled View identifier.</td>
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
<tr id="parameter-indexId">
    <td><CopyableCode code="indexId" /></td>
    <td><code>string</code></td>
    <td>The `id` of the Partition or Scheduled View with the data forwarding rule to update. (example: 1)</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit the number of data forwarding rules returned in the response. The number of data forwarding rules returned may be less than the `limit`.</td>
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
    defaultValue="getDataForwardingRule"
    values={[
        { label: 'getDataForwardingRule', value: 'getDataForwardingRule' },
        { label: 'getRulesAndBuckets', value: 'getRulesAndBuckets' }
    ]}
>
<TabItem value="getDataForwardingRule">

Get the details of an S3 data forwarding rule by its Partition or Scheduled View identifier.

```sql
SELECT
id,
bucket,
createdAt,
createdBy,
destinationId,
enabled,
fileFormat,
format,
indexId,
modifiedAt,
modifiedBy,
payloadSchema
FROM sumologic.logs_data_forwarding.rules
WHERE indexId = '{{ indexId }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="getRulesAndBuckets">

Get a list of all S3 data forwarding rules.

```sql
SELECT
data,
nextToken
FROM sumologic.logs_data_forwarding.rules
WHERE region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createDataForwardingRule"
    values={[
        { label: 'createDataForwardingRule', value: 'createDataForwardingRule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createDataForwardingRule">

Create a data forwarding rule to send data from a Partition or Scheduled View to an S3 bucket.

```sql
INSERT INTO sumologic.logs_data_forwarding.rules (
data__indexId,
data__destinationId,
data__enabled,
data__fileFormat,
data__payloadSchema,
data__format,
region
)
SELECT 
'{{ indexId }}' /* required */,
'{{ destinationId }}' /* required */,
{{ enabled }},
'{{ fileFormat }}',
'{{ payloadSchema }}',
'{{ format }}',
'{{ region }}'
RETURNING
id,
createdAt,
createdBy,
destinationId,
enabled,
fileFormat,
format,
indexId,
modifiedAt,
modifiedBy,
payloadSchema
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: rules
  props:
    - name: region
      value: string
      description: Required parameter for the rules resource.
    - name: indexId
      value: string
      description: |
        The `id` of the Partition or Scheduled View the rule applies to.
    - name: destinationId
      value: string
      description: |
        The data forwarding destination id.
    - name: enabled
      value: boolean
      description: |
        True when the data forwarding rule is enabled.
    - name: fileFormat
      value: string
      description: |
        Specify the path prefix to a directory in the S3 bucket and how to format the file name.
    - name: payloadSchema
      value: string
      description: |
        Schema for the payload.
      default: default
    - name: format
      value: string
      description: |
        Format of the payload.
      default: csv
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteDataForwardingRule"
    values={[
        { label: 'deleteDataForwardingRule', value: 'deleteDataForwardingRule' }
    ]}
>
<TabItem value="deleteDataForwardingRule">

Delete an S3 data forwarding rule by its Partition or Scheduled View identifier.

```sql
DELETE FROM sumologic.logs_data_forwarding.rules
WHERE indexId = '{{ indexId }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateDataForwardingRule"
    values={[
        { label: 'updateDataForwardingRule', value: 'updateDataForwardingRule' }
    ]}
>
<TabItem value="updateDataForwardingRule">

Update an S3 data forwarding rule by its Partition or Scheduled View identifier.

```sql
EXEC sumologic.logs_data_forwarding.rules.updateDataForwardingRule 
@indexId='{{ indexId }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"destinationId": "{{ destinationId }}", 
"enabled": {{ enabled }}, 
"fileFormat": "{{ fileFormat }}", 
"payloadSchema": "{{ payloadSchema }}", 
"format": "{{ format }}"
}'
;
```
</TabItem>
</Tabs>
