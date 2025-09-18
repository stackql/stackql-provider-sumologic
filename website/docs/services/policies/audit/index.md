--- 
title: audit
hide_title: false
hide_table_of_contents: false
keywords:
  - audit
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

Creates, updates, deletes, gets or lists an <code>audit</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>audit</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.policies.audit" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getAuditPolicy"
    values={[
        { label: 'getAuditPolicy', value: 'getAuditPolicy' }
    ]}
>
<TabItem value="getAuditPolicy">

The Audit policy.

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
    <td>Whether the Audit policy is enabled.</td>
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
    <td><a href="#getAuditPolicy"><CopyableCode code="getAuditPolicy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the Audit policy. This policy specifies whether audit records for your account are enabled. You can access details about reported account events in the Sumo Logic Audit Index. [Learn More](https://help.sumologic.com/Manage/Security/Audit-Index)</td>
</tr>
<tr>
    <td><a href="#setAuditPolicy"><CopyableCode code="setAuditPolicy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-enabled"><code>enabled</code></a></td>
    <td></td>
    <td>Set the Audit policy. This policy specifies whether audit records for your account are enabled. You can access details about reported account events in the Sumo Logic Audit Index. [Learn More](https://help.sumologic.com/Manage/Security/Audit-Index)</td>
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
    defaultValue="getAuditPolicy"
    values={[
        { label: 'getAuditPolicy', value: 'getAuditPolicy' }
    ]}
>
<TabItem value="getAuditPolicy">

Get the Audit policy. This policy specifies whether audit records for your account are enabled. You can access details about reported account events in the Sumo Logic Audit Index. [Learn More](https://help.sumologic.com/Manage/Security/Audit-Index)

```sql
SELECT
enabled
FROM sumologic.policies.audit
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="setAuditPolicy"
    values={[
        { label: 'setAuditPolicy', value: 'setAuditPolicy' }
    ]}
>
<TabItem value="setAuditPolicy">

Set the Audit policy. This policy specifies whether audit records for your account are enabled. You can access details about reported account events in the Sumo Logic Audit Index. [Learn More](https://help.sumologic.com/Manage/Security/Audit-Index)

```sql
EXEC sumologic.policies.audit.setAuditPolicy 
@region='{{ region }}' --required 
@@json=
'{
"enabled": {{ enabled }}
}'
;
```
</TabItem>
</Tabs>
