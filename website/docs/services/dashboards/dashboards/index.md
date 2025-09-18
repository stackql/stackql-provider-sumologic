--- 
title: dashboards
hide_title: false
hide_table_of_contents: false
keywords:
  - dashboards
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

Creates, updates, deletes, gets or lists a <code>dashboards</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>dashboards</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.dashboards.dashboards" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getDashboard"
    values={[
        { label: 'getDashboard', value: 'getDashboard' },
        { label: 'listDashboards', value: 'listDashboards' }
    ]}
>
<TabItem value="getDashboard">

Dashboard object that was requested.

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
    <td>Unique identifier for the dashboard. This id is used to get detailed information about the dashboard, such as panels, variables and the layout.  (example: B23OjNs5ZCyn5VdMwOBoLo3PjgRnJSAlNTKEDAcpuDG2CIgRe9KFXMofm2H2)</td>
</tr>
<tr>
    <td><CopyableCode code="contentId" /></td>
    <td><code>string</code></td>
    <td>Content identifier for the dashboard. This id is used to connect to the Sumo Content Library and get general metadata about the dashboard. Use this id if you want to search for dashboards in Sumo folders.  (example: 1)</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the dashboard. (example: A view of pods, namespaces and nodes of your cluster.)</td>
</tr>
<tr>
    <td><CopyableCode code="domain" /></td>
    <td><code>string</code></td>
    <td>If set denotes that the dashboard concerns a given domain (e.g. `aws`, `k8s`, `app`). (example: aws, default: )</td>
</tr>
<tr>
    <td><CopyableCode code="folderId" /></td>
    <td><code>string</code></td>
    <td>The identifier of the folder to save the dashboard in. By default it is saved in your personal folder.  (example: 000000000C1C17C6)</td>
</tr>
<tr>
    <td><CopyableCode code="hierarchies" /></td>
    <td><code>array</code></td>
    <td>If set to non-empty array denotes that the dashboard concerns given hierarchies.</td>
</tr>
<tr>
    <td><CopyableCode code="layout" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="panels" /></td>
    <td><code>array</code></td>
    <td>Panels in the dashboard.</td>
</tr>
<tr>
    <td><CopyableCode code="refreshInterval" /></td>
    <td><code>integer (int32)</code></td>
    <td>Interval of time (in seconds) to automatically refresh the dashboard. A value of 0 means we never automatically refresh the dashboard. Allowed values are `0`, `30`, `60`, 120`, `300`, `900`, `3600`, `86400`. </td>
</tr>
<tr>
    <td><CopyableCode code="scheduleId" /></td>
    <td><code>string</code></td>
    <td>Scheduled report identifier for the dashboard. Only most recently modified report schedule is rerun per dashboard. This id is used to manage the schedule details through the scheduled report API.  (example: RdQHYPh2jxoS90DXtKfA7nAJV2rsQ9BncpfY7IkjNzQWi52ug85W7r6Rrmtd)</td>
</tr>
<tr>
    <td><CopyableCode code="theme" /></td>
    <td><code>string</code></td>
    <td>Theme for the dashboard. Either `Light` or `Dark`. (pattern: <code>^(light|dark|Light|Dark)$</code>, example: light, default: Light, x-pattern-message: Must be `Light`, or `Dark`)</td>
</tr>
<tr>
    <td><CopyableCode code="timeRange" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="title" /></td>
    <td><code>string</code></td>
    <td>Title of the dashboard. (example: Kubernetes Dashboard)</td>
</tr>
<tr>
    <td><CopyableCode code="topologyLabelMap" /></td>
    <td><code>object</code></td>
    <td>Map of the topology labels. Each label has a key and a list of values. If a value is `*`, it means the label will match content for all values of its key. </td>
</tr>
<tr>
    <td><CopyableCode code="variables" /></td>
    <td><code>array</code></td>
    <td>Variables to apply to the panels.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="listDashboards">

Paginated list of dashboards under the Personal folder created by the user.

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
    <td><CopyableCode code="dashboards" /></td>
    <td><code>array</code></td>
    <td>List of dashboards.</td>
</tr>
<tr>
    <td><CopyableCode code="next" /></td>
    <td><code>string</code></td>
    <td>Next continuation token. `token` is set to null when no more pages are left. (example: GDCiRv4vebF3UWFJQ1kySXBOR3Bzh69GR0RyWm9vCtc)</td>
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
    <td><a href="#getDashboard"><CopyableCode code="getDashboard" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a dashboard by the given identifier.</td>
</tr>
<tr>
    <td><a href="#listDashboards"><CopyableCode code="listDashboards" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a>, <a href="#parameter-mode"><code>mode</code></a></td>
    <td>List all dashboards under the Personal folder created by the user or under folders viewable by user.</td>
</tr>
<tr>
    <td><a href="#createDashboard"><CopyableCode code="createDashboard" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__timeRange"><code>data__timeRange</code></a>, <a href="#parameter-data__title"><code>data__title</code></a></td>
    <td></td>
    <td>Creates a new dashboard.</td>
</tr>
<tr>
    <td><a href="#deleteDashboard"><CopyableCode code="deleteDashboard" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a dashboard by the given identifier.</td>
</tr>
<tr>
    <td><a href="#updateDashboard"><CopyableCode code="updateDashboard" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-timeRange"><code>timeRange</code></a>, <a href="#parameter-title"><code>title</code></a></td>
    <td></td>
    <td>Update a dashboard by the given identifier.</td>
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
    <td>Identifier of the dashboard to update.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit the number of dashboard returned in the response. The number of dashboards returned may be less than the `limit`. (example: 50)</td>
</tr>
<tr id="parameter-mode">
    <td><CopyableCode code="mode" /></td>
    <td><code>string</code></td>
    <td>whether to list all viewable dashboards under the folders</td>
</tr>
<tr id="parameter-token">
    <td><CopyableCode code="token" /></td>
    <td><code>string</code></td>
    <td>Continuation token to get the next page of results. A page object with the next continuation token is returned in the response body. Subsequent GET requests should specify the continuation token to get the next page of results. `token` is set to null when no more pages are left. (example: GDCiRv4vebF3UWFJQ1kySXBOR3Bzh69GR0RyWm9vCtc)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getDashboard"
    values={[
        { label: 'getDashboard', value: 'getDashboard' },
        { label: 'listDashboards', value: 'listDashboards' }
    ]}
>
<TabItem value="getDashboard">

Get a dashboard by the given identifier.

```sql
SELECT
id,
contentId,
description,
domain,
folderId,
hierarchies,
layout,
panels,
refreshInterval,
scheduleId,
theme,
timeRange,
title,
topologyLabelMap,
variables
FROM sumologic.dashboards.dashboards
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="listDashboards">

List all dashboards under the Personal folder created by the user or under folders viewable by user.

```sql
SELECT
dashboards,
next
FROM sumologic.dashboards.dashboards
WHERE region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
AND mode = '{{ mode }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createDashboard"
    values={[
        { label: 'createDashboard', value: 'createDashboard' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createDashboard">

Creates a new dashboard.

```sql
INSERT INTO sumologic.dashboards.dashboards (
data__title,
data__description,
data__folderId,
data__topologyLabelMap,
data__domain,
data__hierarchies,
data__refreshInterval,
data__timeRange,
data__panels,
data__layout,
data__variables,
data__theme,
region
)
SELECT 
'{{ title }}' /* required */,
'{{ description }}',
'{{ folderId }}',
'{{ topologyLabelMap }}',
'{{ domain }}',
'{{ hierarchies }}',
{{ refreshInterval }},
'{{ timeRange }}' /* required */,
'{{ panels }}',
'{{ layout }}',
'{{ variables }}',
'{{ theme }}',
'{{ region }}'
RETURNING
id,
contentId,
description,
domain,
folderId,
hierarchies,
layout,
panels,
refreshInterval,
scheduleId,
theme,
timeRange,
title,
topologyLabelMap,
variables
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: dashboards
  props:
    - name: region
      value: string
      description: Required parameter for the dashboards resource.
    - name: title
      value: string
      description: |
        Title of the dashboard.
    - name: description
      value: string
      description: |
        Description of the dashboard.
    - name: folderId
      value: string
      description: |
        The identifier of the folder to save the dashboard in. By default it is saved in your personal folder.
    - name: topologyLabelMap
      value: object
      description: |
        Map of the topology labels. Each label has a key and a list of values. If a value is `*`, it means the label will match content for all values of its key.
    - name: domain
      value: string
      description: |
        If set denotes that the dashboard concerns a given domain (e.g. `aws`, `k8s`, `app`).
      default: 
    - name: hierarchies
      value: array
      description: |
        If set to non-empty array denotes that the dashboard concerns given hierarchies.
      default: 
    - name: refreshInterval
      value: integer
      description: |
        Interval of time (in seconds) to automatically refresh the dashboard. A value of 0 means we never automatically refresh the dashboard. Allowed values are `0`, `30`, `60`, 120`, `300`, `900`, `3600`, `86400`.
    - name: timeRange
      value: object
    - name: panels
      value: array
      description: |
        Panels in the dashboard.
    - name: layout
      value: object
    - name: variables
      value: array
      description: |
        Variables to apply to the panels.
    - name: theme
      value: string
      description: |
        Theme for the dashboard. Either `Light` or `Dark`.
      default: Light
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteDashboard"
    values={[
        { label: 'deleteDashboard', value: 'deleteDashboard' }
    ]}
>
<TabItem value="deleteDashboard">

Delete a dashboard by the given identifier.

```sql
DELETE FROM sumologic.dashboards.dashboards
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateDashboard"
    values={[
        { label: 'updateDashboard', value: 'updateDashboard' }
    ]}
>
<TabItem value="updateDashboard">

Update a dashboard by the given identifier.

```sql
EXEC sumologic.dashboards.dashboards.updateDashboard 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"title": "{{ title }}", 
"description": "{{ description }}", 
"folderId": "{{ folderId }}", 
"topologyLabelMap": "{{ topologyLabelMap }}", 
"domain": "{{ domain }}", 
"hierarchies": "{{ hierarchies }}", 
"refreshInterval": {{ refreshInterval }}, 
"timeRange": "{{ timeRange }}", 
"panels": "{{ panels }}", 
"layout": "{{ layout }}", 
"variables": "{{ variables }}", 
"theme": "{{ theme }}"
}'
;
```
</TabItem>
</Tabs>
