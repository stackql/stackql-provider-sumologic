--- 
title: extraction_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - extraction_rules
  - extraction_rules
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

Creates, updates, deletes, gets or lists an <code>extraction_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>extraction_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.extraction_rules.extraction_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getExtractionRule"
    values={[
        { label: 'getExtractionRule', value: 'getExtractionRule' },
        { label: 'listExtractionRules', value: 'listExtractionRules' }
    ]}
>
<TabItem value="getExtractionRule">

Extraction rule object that was requested.

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
    <td>Unique identifier for the field extraction rule.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the field extraction rule. Use a name that makes it easy to identify the rule. (example: ExtractionRule123)</td>
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
    <td>Is the field extraction rule enabled.</td>
</tr>
<tr>
    <td><CopyableCode code="fieldNames" /></td>
    <td><code>array</code></td>
    <td>List of extracted fields from "parseExpression".</td>
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
    <td><CopyableCode code="parseExpression" /></td>
    <td><code>string</code></td>
    <td>Describes the fields to be parsed. (example: csv _raw extract 1 as f1)</td>
</tr>
<tr>
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>Scope of the field extraction rule. This could be a sourceCategory, sourceHost, or any other metadata that describes the data you want to extract from. Think of the Scope as the first portion of an ad hoc search, before the first pipe ( | ). You'll use the Scope to run a search against the rule. (example: _sourceHost=127.0.0.1)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="listExtractionRules">

A paginated list of field extraction rules.

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
    <td>List of field extraction rules.</td>
</tr>
<tr>
    <td><CopyableCode code="next" /></td>
    <td><code>string</code></td>
    <td>Next continuation token.</td>
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
    <td><a href="#getExtractionRule"><CopyableCode code="getExtractionRule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a field extraction rule with the given identifier.</td>
</tr>
<tr>
    <td><a href="#listExtractionRules"><CopyableCode code="listExtractionRules" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Get a list of all field extraction rules. The response is paginated with a default limit of 100 field extraction rules per page.</td>
</tr>
<tr>
    <td><a href="#createExtractionRule"><CopyableCode code="createExtractionRule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__parseExpression"><code>data__parseExpression</code></a>, <a href="#parameter-data__scope"><code>data__scope</code></a></td>
    <td></td>
    <td>Create a new field extraction rule.</td>
</tr>
<tr>
    <td><a href="#deleteExtractionRule"><CopyableCode code="deleteExtractionRule" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a field extraction rule with the given identifier.</td>
</tr>
<tr>
    <td><a href="#updateExtractionRule"><CopyableCode code="updateExtractionRule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-parseExpression"><code>parseExpression</code></a>, <a href="#parameter-scope"><code>scope</code></a></td>
    <td></td>
    <td>Update an existing field extraction rule. All properties specified in the request are replaced. Missing properties are set to their default values.</td>
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
    <td>Identifier of the field extraction rule to update.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit the number of field extraction rules returned in the response. The number of field extraction rules returned may be less than the `limit`.</td>
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
    defaultValue="getExtractionRule"
    values={[
        { label: 'getExtractionRule', value: 'getExtractionRule' },
        { label: 'listExtractionRules', value: 'listExtractionRules' }
    ]}
>
<TabItem value="getExtractionRule">

Get a field extraction rule with the given identifier.

```sql
SELECT
id,
name,
createdAt,
createdBy,
enabled,
fieldNames,
modifiedAt,
modifiedBy,
parseExpression,
scope
FROM sumologic.extraction_rules.extraction_rules
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="listExtractionRules">

Get a list of all field extraction rules. The response is paginated with a default limit of 100 field extraction rules per page.

```sql
SELECT
data,
next
FROM sumologic.extraction_rules.extraction_rules
WHERE region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createExtractionRule"
    values={[
        { label: 'createExtractionRule', value: 'createExtractionRule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createExtractionRule">

Create a new field extraction rule.

```sql
INSERT INTO sumologic.extraction_rules.extraction_rules (
data__name,
data__scope,
data__parseExpression,
data__enabled,
region
)
SELECT 
'{{ name }}' /* required */,
'{{ scope }}' /* required */,
'{{ parseExpression }}' /* required */,
{{ enabled }},
'{{ region }}'
RETURNING
id,
name,
createdAt,
createdBy,
enabled,
fieldNames,
modifiedAt,
modifiedBy,
parseExpression,
scope
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: extraction_rules
  props:
    - name: region
      value: string
      description: Required parameter for the extraction_rules resource.
    - name: name
      value: string
      description: |
        Name of the field extraction rule. Use a name that makes it easy to identify the rule.
    - name: scope
      value: string
      description: |
        Scope of the field extraction rule. This could be a sourceCategory, sourceHost, or any other metadata that describes the data you want to extract from. Think of the Scope as the first portion of an ad hoc search, before the first pipe ( | ). You'll use the Scope to run a search against the rule.
    - name: parseExpression
      value: string
      description: |
        Describes the fields to be parsed.
    - name: enabled
      value: boolean
      description: |
        Is the field extraction rule enabled.
      default: true
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteExtractionRule"
    values={[
        { label: 'deleteExtractionRule', value: 'deleteExtractionRule' }
    ]}
>
<TabItem value="deleteExtractionRule">

Delete a field extraction rule with the given identifier.

```sql
DELETE FROM sumologic.extraction_rules.extraction_rules
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateExtractionRule"
    values={[
        { label: 'updateExtractionRule', value: 'updateExtractionRule' }
    ]}
>
<TabItem value="updateExtractionRule">

Update an existing field extraction rule. All properties specified in the request are replaced. Missing properties are set to their default values.

```sql
EXEC sumologic.extraction_rules.extraction_rules.updateExtractionRule 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"name": "{{ name }}", 
"scope": "{{ scope }}", 
"parseExpression": "{{ parseExpression }}", 
"enabled": {{ enabled }}
}'
;
```
</TabItem>
</Tabs>
