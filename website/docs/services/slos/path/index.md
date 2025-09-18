--- 
title: path
hide_title: false
hide_table_of_contents: false
keywords:
  - path
  - slos
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

Creates, updates, deletes, gets or lists a <code>path</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>path</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.slos.path" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getSlosFullPath"
    values={[
        { label: 'getSlosFullPath', value: 'getSlosFullPath' }
    ]}
>
<TabItem value="getSlosFullPath">

Full path of the slo or folder.

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
    <td><CopyableCode code="path" /></td>
    <td><code>string</code></td>
    <td>String representation of the path.</td>
</tr>
<tr>
    <td><CopyableCode code="pathItems" /></td>
    <td><code>array</code></td>
    <td>Elements of the path.</td>
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
    <td><a href="#getSlosFullPath"><CopyableCode code="getSlosFullPath" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the full path of the slo or folder in the slos library.</td>
</tr>
<tr>
    <td><a href="#slosGetByPath"><CopyableCode code="slosGetByPath" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-path"><code>path</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Read a slo or folder by its path in the slos library structure.</td>
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
    <td>Identifier of the slo or folder.</td>
</tr>
<tr id="parameter-path">
    <td><CopyableCode code="path" /></td>
    <td><code>string</code></td>
    <td>The path of the slo or folder.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getSlosFullPath"
    values={[
        { label: 'getSlosFullPath', value: 'getSlosFullPath' }
    ]}
>
<TabItem value="getSlosFullPath">

Get the full path of the slo or folder in the slos library.

```sql
SELECT
path,
pathItems
FROM sumologic.slos.path
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="slosGetByPath"
    values={[
        { label: 'slosGetByPath', value: 'slosGetByPath' }
    ]}
>
<TabItem value="slosGetByPath">

Read a slo or folder by its path in the slos library structure.

```sql
EXEC sumologic.slos.path.slosGetByPath 
@path='{{ path }}' --required, 
@region='{{ region }}' --required
;
```
</TabItem>
</Tabs>
