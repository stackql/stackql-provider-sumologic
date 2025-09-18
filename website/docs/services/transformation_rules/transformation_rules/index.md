--- 
title: transformation_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - transformation_rules
  - transformation_rules
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

Creates, updates, deletes, gets or lists a <code>transformation_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>transformation_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.transformation_rules.transformation_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getTransformationRule"
    values={[
        { label: 'getTransformationRule', value: 'getTransformationRule' },
        { label: 'getTransformationRules', value: 'getTransformationRules' }
    ]}
>
<TabItem value="getTransformationRule">

Transformation rule object that was requested.

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
    <td>Unique identifier for the transformation rule.</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Creation timestamp in UTC in [RFC3339](https://tools.ietf.org/html/rfc3339) format. (example: 2018-10-16T09:10:00Z)</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user who created the resource. (example: 0000000006743FDD)</td>
</tr>
<tr>
    <td><CopyableCode code="enabled" /></td>
    <td><code>boolean</code></td>
    <td>True if the rule is enabled.</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Last modification timestamp in UTC. (example: 2018-10-16T09:10:00Z)</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedBy" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user who last modified the resource. (example: 0000000006743FE8)</td>
</tr>
<tr>
    <td><CopyableCode code="ruleDefinition" /></td>
    <td><code>object</code></td>
    <td>The properties that define a transformation rule.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="getTransformationRules">

List of transformation rules.

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
    <td>List of transformation rules.</td>
</tr>
<tr>
    <td><CopyableCode code="next" /></td>
    <td><code>string</code></td>
    <td>Next continuation token. (example: aGNzTmZBN1ZZWFk9)</td>
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
    <td><a href="#getTransformationRule"><CopyableCode code="getTransformationRule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a transformation rule with the given identifier.</td>
</tr>
<tr>
    <td><a href="#getTransformationRules"><CopyableCode code="getTransformationRules" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Get a list of transformation rules in the organization. The response is paginated with a default limit of 100 rules per page.</td>
</tr>
<tr>
    <td><a href="#createRule"><CopyableCode code="createRule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__enabled"><code>data__enabled</code></a>, <a href="#parameter-data__ruleDefinition"><code>data__ruleDefinition</code></a></td>
    <td></td>
    <td>Create a new transformation rule.</td>
</tr>
<tr>
    <td><a href="#deleteRule"><CopyableCode code="deleteRule" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a transformation rule with the given identifier.</td>
</tr>
<tr>
    <td><a href="#updateTransformationRule"><CopyableCode code="updateTransformationRule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-enabled"><code>enabled</code></a>, <a href="#parameter-ruleDefinition"><code>ruleDefinition</code></a></td>
    <td></td>
    <td>Update an existing transformation rule. All properties specified in the request are replaced. Missing properties will remain the same.</td>
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
    <td>Identifier of the transformation rule to update.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit the number of transformation rules returned in the response. (example: 10)</td>
</tr>
<tr id="parameter-token">
    <td><CopyableCode code="token" /></td>
    <td><code>string</code></td>
    <td>Continuation token to get the next page of results. A page object with the next continuation token is returned in the response body. Subsequent GET requests should specify the continuation token to get the next page of results. `token` is set to null when no more pages are left.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getTransformationRule"
    values={[
        { label: 'getTransformationRule', value: 'getTransformationRule' },
        { label: 'getTransformationRules', value: 'getTransformationRules' }
    ]}
>
<TabItem value="getTransformationRule">

Get a transformation rule with the given identifier.

```sql
SELECT
id,
createdAt,
createdBy,
enabled,
modifiedAt,
modifiedBy,
ruleDefinition
FROM sumologic.transformation_rules.transformation_rules
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="getTransformationRules">

Get a list of transformation rules in the organization. The response is paginated with a default limit of 100 rules per page.

```sql
SELECT
data,
next
FROM sumologic.transformation_rules.transformation_rules
WHERE region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createRule"
    values={[
        { label: 'createRule', value: 'createRule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createRule">

Create a new transformation rule.

```sql
INSERT INTO sumologic.transformation_rules.transformation_rules (
data__ruleDefinition,
data__enabled,
region
)
SELECT 
'{{ ruleDefinition }}' /* required */,
{{ enabled }} /* required */,
'{{ region }}'
RETURNING
id,
createdAt,
createdBy,
enabled,
modifiedAt,
modifiedBy,
ruleDefinition
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: transformation_rules
  props:
    - name: region
      value: string
      description: Required parameter for the transformation_rules resource.
    - name: ruleDefinition
      value: object
      description: |
        The properties that define a transformation rule.
    - name: enabled
      value: boolean
      description: |
        True if the rule is enabled.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteRule"
    values={[
        { label: 'deleteRule', value: 'deleteRule' }
    ]}
>
<TabItem value="deleteRule">

Delete a transformation rule with the given identifier.

```sql
DELETE FROM sumologic.transformation_rules.transformation_rules
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateTransformationRule"
    values={[
        { label: 'updateTransformationRule', value: 'updateTransformationRule' }
    ]}
>
<TabItem value="updateTransformationRule">

Update an existing transformation rule. All properties specified in the request are replaced. Missing properties will remain the same.

```sql
EXEC sumologic.transformation_rules.transformation_rules.updateTransformationRule 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"ruleDefinition": "{{ ruleDefinition }}", 
"enabled": {{ enabled }}
}'
;
```
</TabItem>
</Tabs>
