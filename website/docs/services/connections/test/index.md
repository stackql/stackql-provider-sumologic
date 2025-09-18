--- 
title: test
hide_title: false
hide_table_of_contents: false
keywords:
  - test
  - connections
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

Creates, updates, deletes, gets or lists a <code>test</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>test</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.connections.test" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#testConnection"><CopyableCode code="testConnection" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td><a href="#parameter-functionalities"><code>functionalities</code></a>, <a href="#parameter-connectionId"><code>connectionId</code></a></td>
    <td>Test a new connection url is valid and can connect.</td>
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
<tr id="parameter-connectionId">
    <td><CopyableCode code="connectionId" /></td>
    <td><code>string</code></td>
    <td>Unique identifier of an existing connection to test. It should be provided when the request body of an existing connection contains masked authorization headers. If not provided, the authorization headers will not be correctly unmasked, and the test may fail due to unauthorized access. (example: 0000000000123ABC)</td>
</tr>
<tr id="parameter-functionalities">
    <td><CopyableCode code="functionalities" /></td>
    <td><code>array</code></td>
    <td>A comma-separated functionalities of webhook payload to test. Acceptable values: `alert`, `resolution`. (example: alert,resolution)</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="testConnection"
    values={[
        { label: 'testConnection', value: 'testConnection' }
    ]}
>
<TabItem value="testConnection">

Test a new connection url is valid and can connect.

```sql
EXEC sumologic.connections.test.testConnection 
@region='{{ region }}' --required, 
@functionalities='{{ functionalities }}', 
@connectionId='{{ connectionId }}' 
@@json=
'{
"type": "{{ type }}", 
"name": "{{ name }}", 
"description": "{{ description }}"
}'
;
```
</TabItem>
</Tabs>
