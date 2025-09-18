--- 
title: fields
hide_title: false
hide_table_of_contents: false
keywords:
  - fields
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

Creates, updates, deletes, gets or lists a <code>fields</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>fields</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.fields.fields" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getCustomField"
    values={[
        { label: 'getCustomField', value: 'getCustomField' },
        { label: 'listCustomFields', value: 'listCustomFields' }
    ]}
>
<TabItem value="getCustomField">

The details of the custom field.

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
<TabItem value="listCustomFields">

List of all custom fields.

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
    <td>List of custom fields.</td>
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
    <td><a href="#getCustomField"><CopyableCode code="getCustomField" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the details of a custom field.</td>
</tr>
<tr>
    <td><a href="#listCustomFields"><CopyableCode code="listCustomFields" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Request a list of all the custom fields configured in your account.</td>
</tr>
<tr>
    <td><a href="#createField"><CopyableCode code="createField" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__fieldName"><code>data__fieldName</code></a></td>
    <td></td>
    <td>Adding a field will define it in the Fields schema allowing it to be assigned as metadata to your logs.</td>
</tr>
<tr>
    <td><a href="#deleteField"><CopyableCode code="deleteField" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Deleting a field does not delete historical data assigned with that field. If you  delete a field by mistake and one or more of those dependencies break, you can  re-add the field to get things working properly again. You should always disable  a field and ensure things are behaving as expected before deleting a field.</td>
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
    <td>Identifier of a field to delete. (example: 00000000031D02DA)</td>
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
    defaultValue="getCustomField"
    values={[
        { label: 'getCustomField', value: 'getCustomField' },
        { label: 'listCustomFields', value: 'listCustomFields' }
    ]}
>
<TabItem value="getCustomField">

Get the details of a custom field.

```sql
SELECT
dataType,
fieldId,
fieldName,
state
FROM sumologic.fields.fields
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="listCustomFields">

Request a list of all the custom fields configured in your account.

```sql
SELECT
data
FROM sumologic.fields.fields
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createField"
    values={[
        { label: 'createField', value: 'createField' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createField">

Adding a field will define it in the Fields schema allowing it to be assigned as metadata to your logs.

```sql
INSERT INTO sumologic.fields.fields (
data__fieldName,
region
)
SELECT 
'{{ fieldName }}' /* required */,
'{{ region }}'
RETURNING
dataType,
fieldId,
fieldName,
state
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: fields
  props:
    - name: region
      value: string
      description: Required parameter for the fields resource.
    - name: fieldName
      value: string
      description: |
        Field name.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteField"
    values={[
        { label: 'deleteField', value: 'deleteField' }
    ]}
>
<TabItem value="deleteField">

Deleting a field does not delete historical data assigned with that field. If you  delete a field by mistake and one or more of those dependencies break, you can  re-add the field to get things working properly again. You should always disable  a field and ensure things are behaving as expected before deleting a field.

```sql
DELETE FROM sumologic.fields.fields
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>
