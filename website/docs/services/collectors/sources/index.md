--- 
title: sources
hide_title: false
hide_table_of_contents: false
keywords:
  - sources
  - collectors
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

Creates, updates, deletes, gets or lists a <code>sources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>sources</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.collectors.sources" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_source_by_id"
    values={[
        { label: 'get_source_by_id', value: 'get_source_by_id' },
        { label: 'list_sources', value: 'list_sources' }
    ]}
>
<TabItem value="get_source_by_id">

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
    <td><code>integer</code></td>
    <td>Source identifer.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Source name.</td>
</tr>
<tr>
    <td><CopyableCode code="alive" /></td>
    <td><code>boolean</code></td>
    <td>Source alive.</td>
</tr>
<tr>
    <td><CopyableCode code="automaticDateParsing" /></td>
    <td><code>boolean</code></td>
    <td>Source automaticDateParsing.</td>
</tr>
<tr>
    <td><CopyableCode code="category" /></td>
    <td><code>string</code></td>
    <td>Source category.</td>
</tr>
<tr>
    <td><CopyableCode code="cutoffTimestamp" /></td>
    <td><code>integer</code></td>
    <td>Source cutoffTimestamp.</td>
</tr>
<tr>
    <td><CopyableCode code="denylist" /></td>
    <td><code>array</code></td>
    <td>Source denylist.</td>
</tr>
<tr>
    <td><CopyableCode code="encoding" /></td>
    <td><code>string</code></td>
    <td>Source encoding.</td>
</tr>
<tr>
    <td><CopyableCode code="fields" /></td>
    <td><code>object</code></td>
    <td>Source fields.</td>
</tr>
<tr>
    <td><CopyableCode code="filters" /></td>
    <td><code>array</code></td>
    <td>Source filters.</td>
</tr>
<tr>
    <td><CopyableCode code="forceTimeZone" /></td>
    <td><code>boolean</code></td>
    <td>Source forceTimeZone.</td>
</tr>
<tr>
    <td><CopyableCode code="hashAlgorithm" /></td>
    <td><code>string</code></td>
    <td>Source hashAlgorithm.</td>
</tr>
<tr>
    <td><CopyableCode code="hostName" /></td>
    <td><code>string</code></td>
    <td>Source hostName.</td>
</tr>
<tr>
    <td><CopyableCode code="messagePerRequest" /></td>
    <td><code>boolean</code></td>
    <td>Source messagePerRequest.</td>
</tr>
<tr>
    <td><CopyableCode code="multilineProcessingEnabled" /></td>
    <td><code>boolean</code></td>
    <td>Source multilineProcessingEnabled.</td>
</tr>
<tr>
    <td><CopyableCode code="pathExpression" /></td>
    <td><code>string</code></td>
    <td>Source pathExpression.</td>
</tr>
<tr>
    <td><CopyableCode code="sourceType" /></td>
    <td><code>string</code></td>
    <td>Source sourceType.</td>
</tr>
<tr>
    <td><CopyableCode code="url" /></td>
    <td><code>string</code></td>
    <td>Source url.</td>
</tr>
<tr>
    <td><CopyableCode code="useAutolineMatching" /></td>
    <td><code>boolean</code></td>
    <td>Source useAutolineMatching.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_sources">

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
    <td><code>integer</code></td>
    <td>Source identifer.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Source name.</td>
</tr>
<tr>
    <td><CopyableCode code="alive" /></td>
    <td><code>boolean</code></td>
    <td>Source alive.</td>
</tr>
<tr>
    <td><CopyableCode code="automaticDateParsing" /></td>
    <td><code>boolean</code></td>
    <td>Source automaticDateParsing.</td>
</tr>
<tr>
    <td><CopyableCode code="category" /></td>
    <td><code>string</code></td>
    <td>Source category.</td>
</tr>
<tr>
    <td><CopyableCode code="cutoffTimestamp" /></td>
    <td><code>integer</code></td>
    <td>Source cutoffTimestamp.</td>
</tr>
<tr>
    <td><CopyableCode code="denylist" /></td>
    <td><code>array</code></td>
    <td>Source denylist.</td>
</tr>
<tr>
    <td><CopyableCode code="encoding" /></td>
    <td><code>string</code></td>
    <td>Source encoding.</td>
</tr>
<tr>
    <td><CopyableCode code="fields" /></td>
    <td><code>object</code></td>
    <td>Source fields.</td>
</tr>
<tr>
    <td><CopyableCode code="filters" /></td>
    <td><code>array</code></td>
    <td>Source filters.</td>
</tr>
<tr>
    <td><CopyableCode code="forceTimeZone" /></td>
    <td><code>boolean</code></td>
    <td>Source forceTimeZone.</td>
</tr>
<tr>
    <td><CopyableCode code="hashAlgorithm" /></td>
    <td><code>string</code></td>
    <td>Source hashAlgorithm.</td>
</tr>
<tr>
    <td><CopyableCode code="hostName" /></td>
    <td><code>string</code></td>
    <td>Source hostName.</td>
</tr>
<tr>
    <td><CopyableCode code="messagePerRequest" /></td>
    <td><code>boolean</code></td>
    <td>Source messagePerRequest.</td>
</tr>
<tr>
    <td><CopyableCode code="multilineProcessingEnabled" /></td>
    <td><code>boolean</code></td>
    <td>Source multilineProcessingEnabled.</td>
</tr>
<tr>
    <td><CopyableCode code="pathExpression" /></td>
    <td><code>string</code></td>
    <td>Source pathExpression.</td>
</tr>
<tr>
    <td><CopyableCode code="sourceType" /></td>
    <td><code>string</code></td>
    <td>Source sourceType.</td>
</tr>
<tr>
    <td><CopyableCode code="url" /></td>
    <td><code>string</code></td>
    <td>Source url.</td>
</tr>
<tr>
    <td><CopyableCode code="useAutolineMatching" /></td>
    <td><code>boolean</code></td>
    <td>Source useAutolineMatching.</td>
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
    <td><a href="#get_source_by_id"><CopyableCode code="get_source_by_id" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-collectorId"><code>collectorId</code></a>, <a href="#parameter-sourceId"><code>sourceId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Gets information about a specified Collector and Source.</td>
</tr>
<tr>
    <td><a href="#list_sources"><CopyableCode code="list_sources" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-collectorId"><code>collectorId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Gets information about all Sources for a specified Collector.</td>
</tr>
<tr>
    <td><a href="#create_source"><CopyableCode code="create_source" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-collectorId"><code>collectorId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Creates a new Source for a Collector. See Use JSON to Configure Sources for required fields for the request JSON file.</td>
</tr>
<tr>
    <td><a href="#delete_source"><CopyableCode code="delete_source" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-collectorId"><code>collectorId</code></a>, <a href="#parameter-sourceId"><code>sourceId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete Source by ID</td>
</tr>
<tr>
    <td><a href="#update_source"><CopyableCode code="update_source" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-collectorId"><code>collectorId</code></a>, <a href="#parameter-sourceId"><code>sourceId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Update a source</td>
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
<tr id="parameter-collectorId">
    <td><CopyableCode code="collectorId" /></td>
    <td><code>string</code></td>
    <td>Unique Collector identifier.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-sourceId">
    <td><CopyableCode code="sourceId" /></td>
    <td><code>string</code></td>
    <td>Unique Source identifier.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_source_by_id"
    values={[
        { label: 'get_source_by_id', value: 'get_source_by_id' },
        { label: 'list_sources', value: 'list_sources' }
    ]}
>
<TabItem value="get_source_by_id">

Gets information about a specified Collector and Source.

```sql
SELECT
id,
name,
alive,
automaticDateParsing,
category,
cutoffTimestamp,
denylist,
encoding,
fields,
filters,
forceTimeZone,
hashAlgorithm,
hostName,
messagePerRequest,
multilineProcessingEnabled,
pathExpression,
sourceType,
url,
useAutolineMatching
FROM sumologic.collectors.sources
WHERE collectorId = '{{ collectorId }}' -- required
AND sourceId = '{{ sourceId }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_sources">

Gets information about all Sources for a specified Collector.

```sql
SELECT
id,
name,
alive,
automaticDateParsing,
category,
cutoffTimestamp,
denylist,
encoding,
fields,
filters,
forceTimeZone,
hashAlgorithm,
hostName,
messagePerRequest,
multilineProcessingEnabled,
pathExpression,
sourceType,
url,
useAutolineMatching
FROM sumologic.collectors.sources
WHERE collectorId = '{{ collectorId }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_source"
    values={[
        { label: 'create_source', value: 'create_source' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_source">

Creates a new Source for a Collector. See Use JSON to Configure Sources for required fields for the request JSON file.

```sql
INSERT INTO sumologic.collectors.sources (
data__source,
collectorId,
region
)
SELECT 
'{{ source }}',
'{{ collectorId }}',
'{{ region }}'
RETURNING
id,
name,
alive,
automaticDateParsing,
category,
cutoffTimestamp,
denylist,
encoding,
fields,
filters,
forceTimeZone,
hashAlgorithm,
hostName,
messagePerRequest,
multilineProcessingEnabled,
pathExpression,
sourceType,
url,
useAutolineMatching
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: sources
  props:
    - name: collectorId
      value: string
      description: Required parameter for the sources resource.
    - name: region
      value: string
      description: Required parameter for the sources resource.
    - name: source
      value: object
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_source"
    values={[
        { label: 'delete_source', value: 'delete_source' }
    ]}
>
<TabItem value="delete_source">

Delete Source by ID

```sql
DELETE FROM sumologic.collectors.sources
WHERE collectorId = '{{ collectorId }}' --required
AND sourceId = '{{ sourceId }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_source"
    values={[
        { label: 'update_source', value: 'update_source' }
    ]}
>
<TabItem value="update_source">

Update a source

```sql
EXEC sumologic.collectors.sources.update_source 
@collectorId='{{ collectorId }}' --required, 
@sourceId='{{ sourceId }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"id": {{ id }}, 
"name": "{{ name }}", 
"category": "{{ category }}", 
"hostName": "{{ hostName }}", 
"automaticDateParsing": {{ automaticDateParsing }}, 
"multilineProcessingEnabled": {{ multilineProcessingEnabled }}, 
"useAutolineMatching": {{ useAutolineMatching }}, 
"alive": {{ alive }}, 
"forceTimeZone": {{ forceTimeZone }}, 
"messagePerRequest": {{ messagePerRequest }}, 
"sourceType": "{{ sourceType }}", 
"encoding": "{{ encoding }}", 
"hashAlgorithm": "{{ hashAlgorithm }}", 
"url": "{{ url }}", 
"pathExpression": "{{ pathExpression }}", 
"denylist": "{{ denylist }}", 
"filters": "{{ filters }}", 
"fields": "{{ fields }}", 
"cutoffTimestamp": {{ cutoffTimestamp }}
}'
;
```
</TabItem>
</Tabs>
