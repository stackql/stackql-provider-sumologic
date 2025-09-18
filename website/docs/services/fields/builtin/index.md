--- 
title: builtin
hide_title: false
hide_table_of_contents: false
keywords:
  - builtin
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

Creates, updates, deletes, gets or lists a <code>builtin</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>builtin</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.fields.builtin" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getBuiltInField"
    values={[
        { label: 'getBuiltInField', value: 'getBuiltInField' },
        { label: 'listBuiltInFields', value: 'listBuiltInFields' }
    ]}
>
<TabItem value="getBuiltInField">

The details of the built-in field.

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
    <td><CopyableCode code="dataType" /></td>
    <td><code>string</code></td>
    <td>Field type. Possible values are `String`, `Long`, `Int`, `Double`, and `Boolean`. (pattern: <code>^(String|Long|Int|Double|Boolean)$</code>, example: String, x-pattern-message: Must be `String`, `Long`, `Int`, `Double` or `Boolean`)</td>
</tr>
<tr>
    <td><CopyableCode code="fieldId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the field. (example: 00000000031D02DA)</td>
</tr>
<tr>
    <td><CopyableCode code="fieldName" /></td>
    <td><code>string</code></td>
    <td>Field name. (example: hostIP)</td>
</tr>
<tr>
    <td><CopyableCode code="state" /></td>
    <td><code>string</code></td>
    <td>Indicates whether the field is enabled and its values are being accepted. Possible values are `Enabled` and `Disabled`. (pattern: <code>^(Enabled|Disabled)$</code>, example: Enabled, x-pattern-message: Must be `Enabled` or `Disabled`)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="listBuiltInFields">

List of all built-in fields.

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
    <td><CopyableCode code="data" /></td>
    <td><code>array</code></td>
    <td>List of built-in fields.</td>
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
    <td><a href="#getBuiltInField"><CopyableCode code="getBuiltInField" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the details of a built-in field.</td>
</tr>
<tr>
    <td><a href="#listBuiltInFields"><CopyableCode code="listBuiltInFields" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Built-in fields are created automatically by Sumo Logic for standard configuration purposes. They include `_sourceHost` and `_sourceCategory`. Built-in fields can't be deleted or disabled.</td>
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
    <td>Identifier of a built-in field. (example: 000000000000000A)</td>
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
    defaultValue="getBuiltInField"
    values={[
        { label: 'getBuiltInField', value: 'getBuiltInField' },
        { label: 'listBuiltInFields', value: 'listBuiltInFields' }
    ]}
>
<TabItem value="getBuiltInField">

Get the details of a built-in field.

```sql
SELECT
dataType,
fieldId,
fieldName,
state
FROM sumologic.fields.builtin
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="listBuiltInFields">

Built-in fields are created automatically by Sumo Logic for standard configuration purposes. They include `_sourceHost` and `_sourceCategory`. Built-in fields can't be deleted or disabled.

```sql
SELECT
data
FROM sumologic.fields.builtin
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
