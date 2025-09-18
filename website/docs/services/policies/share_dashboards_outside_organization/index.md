--- 
title: share_dashboards_outside_organization
hide_title: false
hide_table_of_contents: false
keywords:
  - share_dashboards_outside_organization
  - policies
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

Creates, updates, deletes, gets or lists a <code>share_dashboards_outside_organization</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>share_dashboards_outside_organization</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.policies.share_dashboards_outside_organization" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getShareDashboardsOutsideOrganizationPolicy"
    values={[
        { label: 'getShareDashboardsOutsideOrganizationPolicy', value: 'getShareDashboardsOutsideOrganizationPolicy' }
    ]}
>
<TabItem value="getShareDashboardsOutsideOrganizationPolicy">

The Share Dashboards Outside Organization policy.

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
    <td><CopyableCode code="enabled" /></td>
    <td><code>boolean</code></td>
    <td>Whether the Share Dashboards Outside Organization policy is enabled.</td>
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
    <td><a href="#getShareDashboardsOutsideOrganizationPolicy"><CopyableCode code="getShareDashboardsOutsideOrganizationPolicy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the Share Dashboards Outside Organization policy. This policy allows users to share the dashboard with view only privileges outside of the organization (capability must be enabled from the Roles page). Disabling this policy will disable all dashboards that have been shared outside of the organization. [Learn More](https://help.sumologic.com/Visualizations-and-Alerts/Dashboards/Share_Dashboards/Share_a_Dashboard_Outside_Your_Org)</td>
</tr>
<tr>
    <td><a href="#setShareDashboardsOutsideOrganizationPolicy"><CopyableCode code="setShareDashboardsOutsideOrganizationPolicy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-enabled"><code>enabled</code></a></td>
    <td></td>
    <td>Set the Share Dashboards Outside Organization policy. This policy allows users to share the dashboard with view only privileges outside of the organization (capability must be enabled from the Roles page). Disabling this policy will disable all dashboards that have been shared outside of the organization. [Learn More](https://help.sumologic.com/Visualizations-and-Alerts/Dashboards/Share_Dashboards/Share_a_Dashboard_Outside_Your_Org)</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getShareDashboardsOutsideOrganizationPolicy"
    values={[
        { label: 'getShareDashboardsOutsideOrganizationPolicy', value: 'getShareDashboardsOutsideOrganizationPolicy' }
    ]}
>
<TabItem value="getShareDashboardsOutsideOrganizationPolicy">

Get the Share Dashboards Outside Organization policy. This policy allows users to share the dashboard with view only privileges outside of the organization (capability must be enabled from the Roles page). Disabling this policy will disable all dashboards that have been shared outside of the organization. [Learn More](https://help.sumologic.com/Visualizations-and-Alerts/Dashboards/Share_Dashboards/Share_a_Dashboard_Outside_Your_Org)

```sql
SELECT
enabled
FROM sumologic.policies.share_dashboards_outside_organization
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="setShareDashboardsOutsideOrganizationPolicy"
    values={[
        { label: 'setShareDashboardsOutsideOrganizationPolicy', value: 'setShareDashboardsOutsideOrganizationPolicy' }
    ]}
>
<TabItem value="setShareDashboardsOutsideOrganizationPolicy">

Set the Share Dashboards Outside Organization policy. This policy allows users to share the dashboard with view only privileges outside of the organization (capability must be enabled from the Roles page). Disabling this policy will disable all dashboards that have been shared outside of the organization. [Learn More](https://help.sumologic.com/Visualizations-and-Alerts/Dashboards/Share_Dashboards/Share_a_Dashboard_Outside_Your_Org)

```sql
EXEC sumologic.policies.share_dashboards_outside_organization.setShareDashboardsOutsideOrganizationPolicy 
@region='{{ region }}' --required 
@@json=
'{
"enabled": {{ enabled }}
}'
;
```
</TabItem>
</Tabs>
