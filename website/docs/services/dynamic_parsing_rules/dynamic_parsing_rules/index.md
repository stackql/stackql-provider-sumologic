--- 
title: dynamic_parsing_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - dynamic_parsing_rules
  - dynamic_parsing_rules
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

Creates, updates, deletes, gets or lists a <code>dynamic_parsing_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>dynamic_parsing_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.dynamic_parsing_rules.dynamic_parsing_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getDynamicParsingRule"
    values={[
        { label: 'getDynamicParsingRule', value: 'getDynamicParsingRule' },
        { label: 'listDynamicParsingRules', value: 'listDynamicParsingRules' }
    ]}
>
<TabItem value="getDynamicParsingRule">

Dynamic parsing rule object that was requested.

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
    <td>Unique identifier for the dynamic parsing rule. (example: 0000000001C41EE4)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the dynamic parsing rule. Use a name that makes it easy to identify the rule. (example: DynamicParsingRule123)</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string (dateTime)</code></td>
    <td>Creation timestamp in UTC in [RFC3339](https://tools.ietf.org/html/rfc3339) format.</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user who created the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="enabled" /></td>
    <td><code>boolean</code></td>
    <td>Is the dynamic parsing rule enabled.</td>
</tr>
<tr>
    <td><CopyableCode code="isSystemRule" /></td>
    <td><code>boolean</code></td>
    <td>Whether the rule has been defined by the system, rather than by a user.</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedAt" /></td>
    <td><code>string (dateTime)</code></td>
    <td>Last modification timestamp in UTC.</td>
</tr>
<tr>
    <td><CopyableCode code="modifiedBy" /></td>
    <td><code>string</code></td>
    <td>Identifier of the user who last modified the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>Scope of the dynamic parsing rule. This could be a sourceCategory, sourceHost, or any other metadata that describes the data you want to extract from. Think of the Scope as the first portion of an ad hoc search, before the first pipe ( | ). You'll use the Scope to run a search against the rule. (example: _sourceHost=127.0.0.1)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="listDynamicParsingRules">

A paginated list of dynamic parsing rules.

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
    <td>List of dynamic parsing rules.</td>
</tr>
<tr>
    <td><CopyableCode code="next" /></td>
    <td><code>string</code></td>
    <td>Next continuation token. (example: 0000000001C51FF7)</td>
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
    <td><a href="#getDynamicParsingRule"><CopyableCode code="getDynamicParsingRule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a dynamic parsing rule with the given identifier.</td>
</tr>
<tr>
    <td><a href="#listDynamicParsingRules"><CopyableCode code="listDynamicParsingRules" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Get a list of all dynamic parsing rules. The response is paginated with a default limit of 100 dynamic parsing rules per page.</td>
</tr>
<tr>
    <td><a href="#createDynamicParsingRule"><CopyableCode code="createDynamicParsingRule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__enabled"><code>data__enabled</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__scope"><code>data__scope</code></a></td>
    <td></td>
    <td>Create a new dynamic parsing rule.</td>
</tr>
<tr>
    <td><a href="#deleteDynamicParsingRule"><CopyableCode code="deleteDynamicParsingRule" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a dynamic parsing rule with the given identifier.</td>
</tr>
<tr>
    <td><a href="#updateDynamicParsingRule"><CopyableCode code="updateDynamicParsingRule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-enabled"><code>enabled</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-scope"><code>scope</code></a></td>
    <td></td>
    <td>Update an existing dynamic parsing rule. All properties specified in the request are replaced. Missing properties are set to their default values.</td>
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
    <td>Identifier of the dynamic parsing rule to update.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit the number of dynamic parsing rules returned in the response. The number of dynamic parsing rules returned may be less than the `limit`.</td>
</tr>
<tr id="parameter-token">
    <td><CopyableCode code="token" /></td>
    <td><code>string</code></td>
    <td>Continuation token to get the next page of results. A page object with the next continuation token is returned in the response body. Subsequent GET requests should specify the continuation token to get the next page of results.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getDynamicParsingRule"
    values={[
        { label: 'getDynamicParsingRule', value: 'getDynamicParsingRule' },
        { label: 'listDynamicParsingRules', value: 'listDynamicParsingRules' }
    ]}
>
<TabItem value="getDynamicParsingRule">

Get a dynamic parsing rule with the given identifier.

```sql
SELECT
id,
name,
createdAt,
createdBy,
enabled,
isSystemRule,
modifiedAt,
modifiedBy,
scope
FROM sumologic.dynamic_parsing_rules.dynamic_parsing_rules
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="listDynamicParsingRules">

Get a list of all dynamic parsing rules. The response is paginated with a default limit of 100 dynamic parsing rules per page.

```sql
SELECT
data,
next
FROM sumologic.dynamic_parsing_rules.dynamic_parsing_rules
WHERE region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createDynamicParsingRule"
    values={[
        { label: 'createDynamicParsingRule', value: 'createDynamicParsingRule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createDynamicParsingRule">

Create a new dynamic parsing rule.

```sql
INSERT INTO sumologic.dynamic_parsing_rules.dynamic_parsing_rules (
data__name,
data__scope,
data__enabled,
region
)
SELECT 
'{{ name }}' /* required */,
'{{ scope }}' /* required */,
{{ enabled }} /* required */,
'{{ region }}'
RETURNING
id,
name,
createdAt,
createdBy,
enabled,
isSystemRule,
modifiedAt,
modifiedBy,
scope
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: dynamic_parsing_rules
  props:
    - name: region
      value: string
      description: Required parameter for the dynamic_parsing_rules resource.
    - name: name
      value: string
      description: |
        Name of the dynamic parsing rule. Use a name that makes it easy to identify the rule.
    - name: scope
      value: string
      description: |
        Scope of the dynamic parsing rule. This could be a sourceCategory, sourceHost, or any other metadata that describes the data you want to extract from. Think of the Scope as the first portion of an ad hoc search, before the first pipe ( | ). You'll use the Scope to run a search against the rule.
    - name: enabled
      value: boolean
      description: |
        Is the dynamic parsing rule enabled.
      default: true
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteDynamicParsingRule"
    values={[
        { label: 'deleteDynamicParsingRule', value: 'deleteDynamicParsingRule' }
    ]}
>
<TabItem value="deleteDynamicParsingRule">

Delete a dynamic parsing rule with the given identifier.

```sql
DELETE FROM sumologic.dynamic_parsing_rules.dynamic_parsing_rules
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateDynamicParsingRule"
    values={[
        { label: 'updateDynamicParsingRule', value: 'updateDynamicParsingRule' }
    ]}
>
<TabItem value="updateDynamicParsingRule">

Update an existing dynamic parsing rule. All properties specified in the request are replaced. Missing properties are set to their default values.

```sql
EXEC sumologic.dynamic_parsing_rules.dynamic_parsing_rules.updateDynamicParsingRule 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"name": "{{ name }}", 
"scope": "{{ scope }}", 
"enabled": {{ enabled }}
}'
;
```
</TabItem>
</Tabs>
