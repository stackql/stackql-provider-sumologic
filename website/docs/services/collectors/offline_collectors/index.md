--- 
title: offline_collectors
hide_title: false
hide_table_of_contents: false
keywords:
  - offline_collectors
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

Creates, updates, deletes, gets or lists an <code>offline_collectors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>offline_collectors</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.collectors.offline_collectors" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_offline_collectors"
    values={[
        { label: 'list_offline_collectors', value: 'list_offline_collectors' }
    ]}
>
<TabItem value="list_offline_collectors">

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
    <td><a href="#list_offline_collectors"><CopyableCode code="list_offline_collectors" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-aliveBeforeDays"><code>aliveBeforeDays</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-offset"><code>offset</code></a></td>
    <td>Get a list of Installed Collectors last seen alive before a specified number of days with an optional limit and offset.</td>
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
<tr id="parameter-aliveBeforeDays">
    <td><CopyableCode code="aliveBeforeDays" /></td>
    <td><code>integer</code></td>
    <td>Filter the Collectors returned using one of the available filter types:installed, hosted, dead, or alive.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer</code></td>
    <td>Minimum number of days the Collectors have been offline, must be at least 1 day.</td>
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
    defaultValue="list_offline_collectors"
    values={[
        { label: 'list_offline_collectors', value: 'list_offline_collectors' }
    ]}
>
<TabItem value="list_offline_collectors">

Get a list of Installed Collectors last seen alive before a specified number of days with an optional limit and offset.

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
FROM sumologic.collectors.offline_collectors
WHERE region = '{{ region }}' -- required
AND aliveBeforeDays = '{{ aliveBeforeDays }}'
AND limit = '{{ limit }}'
AND offset = '{{ offset }}'
;
```
</TabItem>
</Tabs>
