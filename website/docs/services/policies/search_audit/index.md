--- 
title: search_audit
hide_title: false
hide_table_of_contents: false
keywords:
  - search_audit
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

Creates, updates, deletes, gets or lists a <code>search_audit</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>search_audit</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.policies.search_audit" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getSearchAuditPolicy"
    values={[
        { label: 'getSearchAuditPolicy', value: 'getSearchAuditPolicy' }
    ]}
>
<TabItem value="getSearchAuditPolicy">

The Search Audit policy.

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
    <td>Whether the Search Audit policy is enabled.</td>
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
    <td><a href="#getSearchAuditPolicy"><CopyableCode code="getSearchAuditPolicy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the Search Audit policy. This policy specifies whether search records for your account are enabled. You can access details about your account's search capacity, queries run by users from the Sumo Search Audit Index. [Learn More](https://help.sumologic.com/Manage/Security/Search_Audit_Index)</td>
</tr>
<tr>
    <td><a href="#setSearchAuditPolicy"><CopyableCode code="setSearchAuditPolicy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-enabled"><code>enabled</code></a></td>
    <td></td>
    <td>Set the Search Audit policy. This policy specifies whether search records for your account are enabled. You can access details about your account's search capacity, queries run by users from the Sumo Search Audit Index. [Learn More](https://help.sumologic.com/Manage/Security/Search_Audit_Index)</td>
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
    defaultValue="getSearchAuditPolicy"
    values={[
        { label: 'getSearchAuditPolicy', value: 'getSearchAuditPolicy' }
    ]}
>
<TabItem value="getSearchAuditPolicy">

Get the Search Audit policy. This policy specifies whether search records for your account are enabled. You can access details about your account's search capacity, queries run by users from the Sumo Search Audit Index. [Learn More](https://help.sumologic.com/Manage/Security/Search_Audit_Index)

```sql
SELECT
enabled
FROM sumologic.policies.search_audit
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="setSearchAuditPolicy"
    values={[
        { label: 'setSearchAuditPolicy', value: 'setSearchAuditPolicy' }
    ]}
>
<TabItem value="setSearchAuditPolicy">

Set the Search Audit policy. This policy specifies whether search records for your account are enabled. You can access details about your account's search capacity, queries run by users from the Sumo Search Audit Index. [Learn More](https://help.sumologic.com/Manage/Security/Search_Audit_Index)

```sql
EXEC sumologic.policies.search_audit.setSearchAuditPolicy 
@region='{{ region }}' --required 
@@json=
'{
"enabled": {{ enabled }}
}'
;
```
</TabItem>
</Tabs>
