--- 
title: data_access_level
hide_title: false
hide_table_of_contents: false
keywords:
  - data_access_level
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

Creates, updates, deletes, gets or lists a <code>data_access_level</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>data_access_level</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.policies.data_access_level" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getDataAccessLevelPolicy"
    values={[
        { label: 'getDataAccessLevelPolicy', value: 'getDataAccessLevelPolicy' }
    ]}
>
<TabItem value="getDataAccessLevelPolicy">

The Data Access Level policy.

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
    <td>Whether the Data Access Level policy is enabled.</td>
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
    <td><a href="#getDataAccessLevelPolicy"><CopyableCode code="getDataAccessLevelPolicy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the Data Access Level policy. When enabled, this policy sets the default data access level for all newly created dashboards to the viewer’s role access filter. Otherwise, newly created dashboards will default to the sharer’s role access filter and might display data that viewers’ roles don’t allow them to view. [Learn More](https://help.sumologic.com/Manage/Security/Data_Access_Level_for_Shared_Dashboards)</td>
</tr>
<tr>
    <td><a href="#setDataAccessLevelPolicy"><CopyableCode code="setDataAccessLevelPolicy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-enabled"><code>enabled</code></a></td>
    <td></td>
    <td>Set the Data Access Level policy. When enabled, this policy sets the default data access level for all newly created dashboards to the viewer’s role access filter. Otherwise, newly created dashboards will default to the sharer’s role access filter and might display data that viewers’ roles don’t allow them to view. [Learn More](https://help.sumologic.com/Manage/Security/Data_Access_Level_for_Shared_Dashboards)</td>
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
    defaultValue="getDataAccessLevelPolicy"
    values={[
        { label: 'getDataAccessLevelPolicy', value: 'getDataAccessLevelPolicy' }
    ]}
>
<TabItem value="getDataAccessLevelPolicy">

Get the Data Access Level policy. When enabled, this policy sets the default data access level for all newly created dashboards to the viewer’s role access filter. Otherwise, newly created dashboards will default to the sharer’s role access filter and might display data that viewers’ roles don’t allow them to view. [Learn More](https://help.sumologic.com/Manage/Security/Data_Access_Level_for_Shared_Dashboards)

```sql
SELECT
enabled
FROM sumologic.policies.data_access_level
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="setDataAccessLevelPolicy"
    values={[
        { label: 'setDataAccessLevelPolicy', value: 'setDataAccessLevelPolicy' }
    ]}
>
<TabItem value="setDataAccessLevelPolicy">

Set the Data Access Level policy. When enabled, this policy sets the default data access level for all newly created dashboards to the viewer’s role access filter. Otherwise, newly created dashboards will default to the sharer’s role access filter and might display data that viewers’ roles don’t allow them to view. [Learn More](https://help.sumologic.com/Manage/Security/Data_Access_Level_for_Shared_Dashboards)

```sql
EXEC sumologic.policies.data_access_level.setDataAccessLevelPolicy 
@region='{{ region }}' --required 
@@json=
'{
"enabled": {{ enabled }}
}'
;
```
</TabItem>
</Tabs>
