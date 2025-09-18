--- 
title: destinations
hide_title: false
hide_table_of_contents: false
keywords:
  - destinations
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

Creates, updates, deletes, gets or lists a <code>destinations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>destinations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.logs_data_forwarding.destinations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getDataForwardingDestination"
    values={[
        { label: 'getDataForwardingDestination', value: 'getDataForwardingDestination' },
        { label: 'getDataForwardingBuckets', value: 'getDataForwardingBuckets' }
    ]}
>
<TabItem value="getDataForwardingDestination">

Data forwarding destination object requested.

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
    <td>The unique identifier of the data forwarding destination. (example: 1)</td>
</tr>
<tr>
    <td><CopyableCode code="accessKeyId" /></td>
    <td><code>string</code></td>
    <td>The AWS Access ID to access the S3 bucket. (example: accessKeyId)</td>
</tr>
<tr>
    <td><CopyableCode code="authenticationMode" /></td>
    <td><code>string</code></td>
    <td>AWS IAM authentication method used for access. Possible values are: 1. `AccessKey` 2. `RoleBased` (example: RoleBased)</td>
</tr>
<tr>
    <td><CopyableCode code="bucketName" /></td>
    <td><code>string</code></td>
    <td>The name of the Amazon S3 bucket. (pattern: <code>(?!(^xn--|-s3alias$))^[a-z0-9][a-z0-9-]&#123;1,61&#125;[a-z0-9]$</code>, example: df-bucket, x-pattern-message: Must be a valid AWS S3 Bucket name.)</td>
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
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the S3 data forwarding destination.</td>
</tr>
<tr>
    <td><CopyableCode code="destinationName" /></td>
    <td><code>string</code></td>
    <td>Name of the S3 data forwarding destination. (example: df-destination)</td>
</tr>
<tr>
    <td><CopyableCode code="enabled" /></td>
    <td><code>boolean</code></td>
    <td>True if the destination is Active.</td>
</tr>
<tr>
    <td><CopyableCode code="encrypted" /></td>
    <td><code>boolean</code></td>
    <td>Enable S3 server-side encryption.</td>
</tr>
<tr>
    <td><CopyableCode code="invalidatedBySystem" /></td>
    <td><code>boolean</code></td>
    <td>True if invalidated by the system.</td>
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
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>The region where the S3 bucket is located. (example: us-east-1)</td>
</tr>
<tr>
    <td><CopyableCode code="roleArn" /></td>
    <td><code>string</code></td>
    <td>The AWS Role ARN to access the S3 bucket. (example: roleArn)</td>
</tr>
<tr>
    <td><CopyableCode code="secretAccessKey" /></td>
    <td><code>string</code></td>
    <td>The AWS Secret Key to access the S3 bucket. (example: secretAccessKey)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="getDataForwardingBuckets">

List of all S3 data forwarding destinations.

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
    <td>List of data forwarding destinations.</td>
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
    <td><a href="#getDataForwardingDestination"><CopyableCode code="getDataForwardingDestination" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get an S3 data forwarding destination by the given identifier.</td>
</tr>
<tr>
    <td><a href="#getDataForwardingBuckets"><CopyableCode code="getDataForwardingBuckets" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Get a list of all Amazon S3 data forwarding destinations.</td>
</tr>
<tr>
    <td><a href="#createDataForwardingBucket"><CopyableCode code="createDataForwardingBucket" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__authenticationMode"><code>data__authenticationMode</code></a></td>
    <td></td>
    <td>Create a new Amazon S3 data forwarding destination.</td>
</tr>
<tr>
    <td><a href="#deleteDataForwardingBucket"><CopyableCode code="deleteDataForwardingBucket" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete an existing Amazon S3 data forwarding destination with the given identifier.</td>
</tr>
<tr>
    <td><a href="#UpdateDataForwardingBucket"><CopyableCode code="UpdateDataForwardingBucket" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-authenticationMode"><code>authenticationMode</code></a></td>
    <td></td>
    <td>Update an S3 data forwarding destination by the given identifier.</td>
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
    <td>Identifier of the data forwarding destination to update. (example: 1)</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit the number of data forwarding destinations returned in the response. The number of data forwarding destinations returned may be less than the `limit`.</td>
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
    defaultValue="getDataForwardingDestination"
    values={[
        { label: 'getDataForwardingDestination', value: 'getDataForwardingDestination' },
        { label: 'getDataForwardingBuckets', value: 'getDataForwardingBuckets' }
    ]}
>
<TabItem value="getDataForwardingDestination">

Get an S3 data forwarding destination by the given identifier.

```sql
SELECT
id,
accessKeyId,
authenticationMode,
bucketName,
createdAt,
createdBy,
description,
destinationName,
enabled,
encrypted,
invalidatedBySystem,
modifiedAt,
modifiedBy,
region,
roleArn,
secretAccessKey
FROM sumologic.logs_data_forwarding.destinations
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="getDataForwardingBuckets">

Get a list of all Amazon S3 data forwarding destinations.

```sql
SELECT
data,
nextToken
FROM sumologic.logs_data_forwarding.destinations
WHERE region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createDataForwardingBucket"
    values={[
        { label: 'createDataForwardingBucket', value: 'createDataForwardingBucket' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createDataForwardingBucket">

Create a new Amazon S3 data forwarding destination.

```sql
INSERT INTO sumologic.logs_data_forwarding.destinations (
data__destinationName,
data__description,
data__authenticationMode,
data__accessKeyId,
data__secretAccessKey,
data__roleArn,
data__region,
data__encrypted,
data__enabled,
data__bucketName,
region
)
SELECT 
'{{ destinationName }}',
'{{ description }}',
'{{ authenticationMode }}' /* required */,
'{{ accessKeyId }}',
'{{ secretAccessKey }}',
'{{ roleArn }}',
'{{ region }}',
{{ encrypted }},
{{ enabled }},
'{{ bucketName }}',
'{{ region }}'
RETURNING
id,
accessKeyId,
authenticationMode,
bucketName,
createdAt,
createdBy,
description,
destinationName,
enabled,
encrypted,
invalidatedBySystem,
modifiedAt,
modifiedBy,
region,
roleArn,
secretAccessKey
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: destinations
  props:
    - name: region
      value: string
      description: Required parameter for the destinations resource.
    - name: destinationName
      value: string
      description: |
        Name of the S3 data forwarding destination.
    - name: description
      value: string
      description: |
        Description of the S3 data forwarding destination.
    - name: authenticationMode
      value: string
      description: |
        AWS IAM authentication method used for access. Possible values are: 1. `AccessKey` 2. `RoleBased`
    - name: accessKeyId
      value: string
      description: |
        The AWS Access ID to access the S3 bucket.
    - name: secretAccessKey
      value: string
      description: |
        The AWS Secret Key to access the S3 bucket.
    - name: roleArn
      value: string
      description: |
        The AWS Role ARN to access the S3 bucket.
    - name: region
      value: string
      description: |
        The region where the S3 bucket is located.
    - name: encrypted
      value: boolean
      description: |
        Enable S3 server-side encryption.
    - name: enabled
      value: boolean
      description: |
        True if the destination is Active.
    - name: bucketName
      value: string
      description: |
        The name of the Amazon S3 bucket.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteDataForwardingBucket"
    values={[
        { label: 'deleteDataForwardingBucket', value: 'deleteDataForwardingBucket' }
    ]}
>
<TabItem value="deleteDataForwardingBucket">

Delete an existing Amazon S3 data forwarding destination with the given identifier.

```sql
DELETE FROM sumologic.logs_data_forwarding.destinations
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="UpdateDataForwardingBucket"
    values={[
        { label: 'UpdateDataForwardingBucket', value: 'UpdateDataForwardingBucket' }
    ]}
>
<TabItem value="UpdateDataForwardingBucket">

Update an S3 data forwarding destination by the given identifier.

```sql
EXEC sumologic.logs_data_forwarding.destinations.UpdateDataForwardingBucket 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"destinationName": "{{ destinationName }}", 
"description": "{{ description }}", 
"authenticationMode": "{{ authenticationMode }}", 
"accessKeyId": "{{ accessKeyId }}", 
"secretAccessKey": "{{ secretAccessKey }}", 
"roleArn": "{{ roleArn }}", 
"region": "{{ region }}", 
"encrypted": {{ encrypted }}, 
"enabled": {{ enabled }}
}'
;
```
</TabItem>
</Tabs>
