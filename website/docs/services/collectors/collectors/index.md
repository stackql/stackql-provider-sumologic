--- 
title: collectors
hide_title: false
hide_table_of_contents: false
keywords:
  - collectors
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

Creates, updates, deletes, gets or lists a <code>collectors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>collectors</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.collectors.collectors" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_collector_by_name"
    values={[
        { label: 'get_collector_by_name', value: 'get_collector_by_name' },
        { label: 'list_collectors', value: 'list_collectors' }
    ]}
>
<TabItem value="get_collector_by_name">

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
    <td>Identifier</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the Collector. It must be unique on your account.</td>
</tr>
<tr>
    <td><CopyableCode code="alive" /></td>
    <td><code>boolean</code></td>
    <td>When a Collector is running it sends Sumo a heartbeat message every 15 seconds. If no heartbeat message is received after 30 minutes this becomes false.</td>
</tr>
<tr>
    <td><CopyableCode code="category" /></td>
    <td><code>string</code></td>
    <td>The Category of the Collector, used as metadata when searching data.</td>
</tr>
<tr>
    <td><CopyableCode code="collectorType" /></td>
    <td><code>string</code></td>
    <td>The Collector type: Installable or Hosted</td>
</tr>
<tr>
    <td><CopyableCode code="collectorVersion" /></td>
    <td><code>string</code></td>
    <td>Version of the Collector software installed.</td>
</tr>
<tr>
    <td><CopyableCode code="cutoffRelativeTime" /></td>
    <td><code>string</code></td>
    <td>Can be specified instead of cutoffTimestamp to provide a relative offset with respect to the current time. Example: use "-1h", "-1d", or "-1w" to collect data thats less than one hour, one day, or one week old, respectively.</td>
</tr>
<tr>
    <td><CopyableCode code="cutoffTimestamp" /></td>
    <td><code>integer</code></td>
    <td>0 (collects all data)|Only collect data from files with a modified date more recent than this timestamp, specified as milliseconds since epoch</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the Collector.</td>
</tr>
<tr>
    <td><CopyableCode code="ephemeral" /></td>
    <td><code>boolean</code></td>
    <td>When true, the collector will be deleted after 12 hours of inactivity. For more information, see Setting a Collector as Ephemeral.</td>
</tr>
<tr>
    <td><CopyableCode code="fields" /></td>
    <td><code>object</code></td>
    <td>JSON map of key-value fields (metadata) to apply to the Collector.</td>
</tr>
<tr>
    <td><CopyableCode code="hostName" /></td>
    <td><code>string</code></td>
    <td>Host name of the Collector. The hostname can be a maximum of 128 characters.</td>
</tr>
<tr>
    <td><CopyableCode code="lastSeenAlive" /></td>
    <td><code>integer</code></td>
    <td>The last time the Sumo Logic service received an active heartbeat from the Collector, specified as milliseconds since epoch.</td>
</tr>
<tr>
    <td><CopyableCode code="links" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="osArch" /></td>
    <td><code>string</code></td>
    <td>Architecture of the OS that Collector is installed on. [Installed Collectors only]</td>
</tr>
<tr>
    <td><CopyableCode code="osName" /></td>
    <td><code>string</code></td>
    <td>Name of OS that Collector is installed on. [Installed Collectors only]</td>
</tr>
<tr>
    <td><CopyableCode code="osTime" /></td>
    <td><code>integer</code></td>
    <td>Time that the Collector has been running, in milliseconds. [Installed Collectors only]</td>
</tr>
<tr>
    <td><CopyableCode code="osVersion" /></td>
    <td><code>string</code></td>
    <td>Version of the OS that Collector is installed on. [Installed Collectors only]</td>
</tr>
<tr>
    <td><CopyableCode code="sourceSyncMode" /></td>
    <td><code>string</code></td>
    <td>For installed Collectors, whether the Collector is using local source configuration management (using a JSON file), or cloud management (using the UI)</td>
</tr>
<tr>
    <td><CopyableCode code="targetCpu" /></td>
    <td><code>integer</code></td>
    <td>When CPU utilization exceeds this threshold, the Collector will slow down its rate of ingestion to lower its CPU utilization.</td>
</tr>
<tr>
    <td><CopyableCode code="timeZone" /></td>
    <td><code>string</code></td>
    <td>Time zone of the Collector. For a list of possible values, refer to the "TZ" column in this Wikipedia article.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_collectors">

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
    <td>Identifier</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the Collector. It must be unique on your account.</td>
</tr>
<tr>
    <td><CopyableCode code="alive" /></td>
    <td><code>boolean</code></td>
    <td>When a Collector is running it sends Sumo a heartbeat message every 15 seconds. If no heartbeat message is received after 30 minutes this becomes false.</td>
</tr>
<tr>
    <td><CopyableCode code="category" /></td>
    <td><code>string</code></td>
    <td>The Category of the Collector, used as metadata when searching data.</td>
</tr>
<tr>
    <td><CopyableCode code="collectorType" /></td>
    <td><code>string</code></td>
    <td>The Collector type: Installable or Hosted</td>
</tr>
<tr>
    <td><CopyableCode code="collectorVersion" /></td>
    <td><code>string</code></td>
    <td>Version of the Collector software installed.</td>
</tr>
<tr>
    <td><CopyableCode code="cutoffRelativeTime" /></td>
    <td><code>string</code></td>
    <td>Can be specified instead of cutoffTimestamp to provide a relative offset with respect to the current time. Example: use "-1h", "-1d", or "-1w" to collect data thats less than one hour, one day, or one week old, respectively.</td>
</tr>
<tr>
    <td><CopyableCode code="cutoffTimestamp" /></td>
    <td><code>integer</code></td>
    <td>0 (collects all data)|Only collect data from files with a modified date more recent than this timestamp, specified as milliseconds since epoch</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the Collector.</td>
</tr>
<tr>
    <td><CopyableCode code="ephemeral" /></td>
    <td><code>boolean</code></td>
    <td>When true, the collector will be deleted after 12 hours of inactivity. For more information, see Setting a Collector as Ephemeral.</td>
</tr>
<tr>
    <td><CopyableCode code="fields" /></td>
    <td><code>object</code></td>
    <td>JSON map of key-value fields (metadata) to apply to the Collector.</td>
</tr>
<tr>
    <td><CopyableCode code="hostName" /></td>
    <td><code>string</code></td>
    <td>Host name of the Collector. The hostname can be a maximum of 128 characters.</td>
</tr>
<tr>
    <td><CopyableCode code="lastSeenAlive" /></td>
    <td><code>integer</code></td>
    <td>The last time the Sumo Logic service received an active heartbeat from the Collector, specified as milliseconds since epoch.</td>
</tr>
<tr>
    <td><CopyableCode code="links" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="osArch" /></td>
    <td><code>string</code></td>
    <td>Architecture of the OS that Collector is installed on. [Installed Collectors only]</td>
</tr>
<tr>
    <td><CopyableCode code="osName" /></td>
    <td><code>string</code></td>
    <td>Name of OS that Collector is installed on. [Installed Collectors only]</td>
</tr>
<tr>
    <td><CopyableCode code="osTime" /></td>
    <td><code>integer</code></td>
    <td>Time that the Collector has been running, in milliseconds. [Installed Collectors only]</td>
</tr>
<tr>
    <td><CopyableCode code="osVersion" /></td>
    <td><code>string</code></td>
    <td>Version of the OS that Collector is installed on. [Installed Collectors only]</td>
</tr>
<tr>
    <td><CopyableCode code="sourceSyncMode" /></td>
    <td><code>string</code></td>
    <td>For installed Collectors, whether the Collector is using local source configuration management (using a JSON file), or cloud management (using the UI)</td>
</tr>
<tr>
    <td><CopyableCode code="targetCpu" /></td>
    <td><code>integer</code></td>
    <td>When CPU utilization exceeds this threshold, the Collector will slow down its rate of ingestion to lower its CPU utilization.</td>
</tr>
<tr>
    <td><CopyableCode code="timeZone" /></td>
    <td><code>string</code></td>
    <td>Time zone of the Collector. For a list of possible values, refer to the "TZ" column in this Wikipedia article.</td>
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
    <td><a href="#get_collector_by_name"><CopyableCode code="get_collector_by_name" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-name"><code>name</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the Collector with the specified name.</td>
</tr>
<tr>
    <td><a href="#list_collectors"><CopyableCode code="list_collectors" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-offset"><code>offset</code></a></td>
    <td>Get a list of Collectors with an optional limit and offset.</td>
</tr>
<tr>
    <td><a href="#create_collector"><CopyableCode code="create_collector" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Create Hosted Collector.  This method can only be used to create Hosted Collectors. You must install a Collector manually to create an Installed Collector.</td>
</tr>
<tr>
    <td><a href="#delete_collector"><CopyableCode code="delete_collector" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete Collector by ID</td>
</tr>
<tr>
    <td><a href="#get_collector_by_id"><CopyableCode code="get_collector_by_id" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the Collector with the specified Identifier.</td>
</tr>
<tr>
    <td><a href="#update_collector"><CopyableCode code="update_collector" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Update a Collector</td>
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
    <td>Id of the collector to update.</td>
</tr>
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the Collector.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>Filter the Collectors returned using one of the available filter types:installed, hosted, dead, or alive.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer</code></td>
    <td>Max number of Collectors to return.</td>
</tr>
<tr id="parameter-offset">
    <td><CopyableCode code="offset" /></td>
    <td><code>integer</code></td>
    <td>Offset into the list of Collectors.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_collector_by_name"
    values={[
        { label: 'get_collector_by_name', value: 'get_collector_by_name' },
        { label: 'list_collectors', value: 'list_collectors' }
    ]}
>
<TabItem value="get_collector_by_name">

Get the Collector with the specified name.

```sql
SELECT
id,
name,
alive,
category,
collectorType,
collectorVersion,
cutoffRelativeTime,
cutoffTimestamp,
description,
ephemeral,
fields,
hostName,
lastSeenAlive,
links,
osArch,
osName,
osTime,
osVersion,
sourceSyncMode,
targetCpu,
timeZone
FROM sumologic.collectors.collectors
WHERE name = '{{ name }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="list_collectors">

Get a list of Collectors with an optional limit and offset.

```sql
SELECT
id,
name,
alive,
category,
collectorType,
collectorVersion,
cutoffRelativeTime,
cutoffTimestamp,
description,
ephemeral,
fields,
hostName,
lastSeenAlive,
links,
osArch,
osName,
osTime,
osVersion,
sourceSyncMode,
targetCpu,
timeZone
FROM sumologic.collectors.collectors
WHERE region = '{{ region }}' -- required
AND filter = '{{ filter }}'
AND limit = '{{ limit }}'
AND offset = '{{ offset }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_collector"
    values={[
        { label: 'create_collector', value: 'create_collector' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_collector">

Create Hosted Collector.  This method can only be used to create Hosted Collectors. You must install a Collector manually to create an Installed Collector.

```sql
INSERT INTO sumologic.collectors.collectors (
data__collector,
region
)
SELECT 
'{{ collector }}',
'{{ region }}'
RETURNING
collector
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: collectors
  props:
    - name: region
      value: string
      description: Required parameter for the collectors resource.
    - name: collector
      value: object
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_collector"
    values={[
        { label: 'delete_collector', value: 'delete_collector' }
    ]}
>
<TabItem value="delete_collector">

Delete Collector by ID

```sql
DELETE FROM sumologic.collectors.collectors
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="get_collector_by_id"
    values={[
        { label: 'get_collector_by_id', value: 'get_collector_by_id' },
        { label: 'update_collector', value: 'update_collector' }
    ]}
>
<TabItem value="get_collector_by_id">

Get the Collector with the specified Identifier.

```sql
EXEC sumologic.collectors.collectors.get_collector_by_id 
@id='{{ id }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
<TabItem value="update_collector">

Update a Collector

```sql
EXEC sumologic.collectors.collectors.update_collector 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"alive": {{ alive }}, 
"category": "{{ category }}", 
"collectorType": "{{ collectorType }}", 
"collectorVersion": "{{ collectorVersion }}", 
"fields": "{{ fields }}", 
"id": {{ id }}, 
"lastSeenAlive": {{ lastSeenAlive }}, 
"links": "{{ links }}", 
"name": "{{ name }}", 
"description": "{{ description }}", 
"timeZone": "{{ timeZone }}", 
"cutoffRelativeTime": "{{ cutoffRelativeTime }}", 
"cutoffTimestamp": {{ cutoffTimestamp }}, 
"ephemeral": {{ ephemeral }}, 
"hostName": "{{ hostName }}", 
"sourceSyncMode": "{{ sourceSyncMode }}", 
"targetCpu": {{ targetCpu }}, 
"osName": "{{ osName }}", 
"osVersion": "{{ osVersion }}", 
"osArch": "{{ osArch }}", 
"osTime": {{ osTime }}
}'
;
```
</TabItem>
</Tabs>
