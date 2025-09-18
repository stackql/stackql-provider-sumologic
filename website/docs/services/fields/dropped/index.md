--- 
title: dropped
hide_title: false
hide_table_of_contents: false
keywords:
  - dropped
  - fields
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

Creates, updates, deletes, gets or lists a <code>dropped</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>dropped</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.fields.dropped" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="listDroppedFields"
    values={[
        { label: 'listDroppedFields', value: 'listDroppedFields' }
    ]}
>
<TabItem value="listDroppedFields">

List of dropped fields.<br />

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
    <td><CopyableCode code="fieldName" /></td>
    <td><code>string</code></td>
    <td>Field name. (example: hostIP)</td>
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
    <td><a href="#listDroppedFields"><CopyableCode code="listDroppedFields" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Dropped fields are fields sent to Sumo Logic, but are ignored since they are not defined in your Fields schema. In order to save these values a field must both exist and be enabled.</td>
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
    defaultValue="listDroppedFields"
    values={[
        { label: 'listDroppedFields', value: 'listDroppedFields' }
    ]}
>
<TabItem value="listDroppedFields">

Dropped fields are fields sent to Sumo Logic, but are ignored since they are not defined in your Fields schema. In order to save these values a field must both exist and be enabled.

```sql
SELECT
fieldName
FROM sumologic.fields.dropped
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
