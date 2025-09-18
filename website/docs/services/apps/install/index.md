--- 
title: install
hide_title: false
hide_table_of_contents: false
keywords:
  - install
  - apps
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

Creates, updates, deletes, gets or lists an <code>install</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>install</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.apps.install" /></td></tr>
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
    <td><a href="#installApp"><CopyableCode code="installApp" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-uuid"><code>uuid</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-description"><code>description</code></a>, <a href="#parameter-destinationFolderId"><code>destinationFolderId</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Installs the app with given UUID in the folder specified using destinationFolderId.</td>
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
<tr id="parameter-uuid">
    <td><CopyableCode code="uuid" /></td>
    <td><code>string (uuid)</code></td>
    <td>UUID of the app to install.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="installApp"
    values={[
        { label: 'installApp', value: 'installApp' }
    ]}
>
<TabItem value="installApp">

Installs the app with given UUID in the folder specified using destinationFolderId.

```sql
EXEC sumologic.apps.install.installApp 
@uuid='{{ uuid }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"name": "{{ name }}", 
"description": "{{ description }}", 
"destinationFolderId": "{{ destinationFolderId }}", 
"dataSourceValues": "{{ dataSourceValues }}"
}'
;
```
</TabItem>
</Tabs>
