--- 
title: apps
hide_title: false
hide_table_of_contents: false
keywords:
  - apps
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

Creates, updates, deletes, gets or lists an <code>apps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>apps</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.apps.apps" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getApp"
    values={[
        { label: 'getApp', value: 'getApp' },
        { label: 'listApps', value: 'listApps' }
    ]}
>
<TabItem value="getApp">

The retrieved app.

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
    <td><CopyableCode code="appDefinition" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="appManifest" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="listApps">

List of all available apps.

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
    <td><CopyableCode code="apps" /></td>
    <td><code>array</code></td>
    <td>An array of Apps</td>
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
    <td><a href="#getApp"><CopyableCode code="getApp" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-uuid"><code>uuid</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Gets the app with the given universally unique identifier (UUID).</td>
</tr>
<tr>
    <td><a href="#listApps"><CopyableCode code="listApps" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Lists all available apps from the App Catalog.</td>
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
    <td>The identifier of the app to retrieve.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getApp"
    values={[
        { label: 'getApp', value: 'getApp' },
        { label: 'listApps', value: 'listApps' }
    ]}
>
<TabItem value="getApp">

Gets the app with the given universally unique identifier (UUID).

```sql
SELECT
appDefinition,
appManifest
FROM sumologic.apps.apps
WHERE uuid = '{{ uuid }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="listApps">

Lists all available apps from the App Catalog.

```sql
SELECT
apps
FROM sumologic.apps.apps
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
