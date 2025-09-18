--- 
title: roles
hide_title: false
hide_table_of_contents: false
keywords:
  - roles
  - roles
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

Creates, updates, deletes, gets or lists a <code>roles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>roles</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.roles.roles" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getRole"
    values={[
        { label: 'getRole', value: 'getRole' },
        { label: 'listRoles', value: 'listRoles' }
    ]}
>
<TabItem value="getRole">

Role object that was requested.

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
    <td>Unique identifier for the role. (example: 0000000000E20FE3)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the role. (example: DataAdmin)</td>
</tr>
<tr>
    <td><CopyableCode code="autofillDependencies" /></td>
    <td><code>boolean</code></td>
    <td>Set this to true if you want to automatically append all missing capability requirements. If set to false an error will be thrown if any capabilities are missing their dependencies.</td>
</tr>
<tr>
    <td><CopyableCode code="capabilities" /></td>
    <td><code>array</code></td>
    <td>List of [capabilities](https://help.sumologic.com/Manage/Users-and-Roles/Manage-Roles/Role-Capabilities) associated with this role. Valid values are ### Data Management   - viewCollectors   - manageCollectors   - manageBudgets   - manageDataVolumeFeed   - viewFieldExtraction   - manageFieldExtractionRules   - manageS3DataForwarding   - manageContent   - dataVolumeIndex   - manageConnections   - viewScheduledViews   - manageScheduledViews   - viewPartitions   - managePartitions   - viewFields   - manageFields   - viewAccountOverview   - manageTokens   - downloadSearchResults  ### Entity management   - manageEntityTypeConfig  ### Metrics   - metricsTransformation   - metricsExtraction   - metricsRules  ### Security   - managePasswordPolicy   - ipAllowlisting   - createAccessKeys   - manageAccessKeys   - manageSupportAccountAccess   - manageAuditDataFeed   - manageSaml   - shareDashboardOutsideOrg   - manageOrgSettings   - changeDataAccessLevel  ### Dashboards   - shareDashboardWorld   - shareDashboardAllowlist  ### UserManagement   - manageUsersAndRoles  ### Observability   - searchAuditIndex   - auditEventIndex  ### Cloud SIEM Enterprise   - viewCse  ### Alerting   - viewMonitorsV2   - manageMonitorsV2   - viewAlerts</td>
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
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the role. (example: Manage data of the org.)</td>
</tr>
<tr>
    <td><CopyableCode code="filterPredicate" /></td>
    <td><code>string</code></td>
    <td>A search filter to restrict access to specific logs. The filter is silently added to the beginning of each query a user runs. For example, using '!_sourceCategory=billing' as a filter predicate will prevent users assigned to the role from viewing logs from the source category named 'billing'. (example: !_sourceCategory=billing)</td>
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
    <td><CopyableCode code="systemDefined" /></td>
    <td><code>boolean</code></td>
    <td>Role is system or user defined.</td>
</tr>
<tr>
    <td><CopyableCode code="users" /></td>
    <td><code>array</code></td>
    <td>List of user identifiers to assign the role to.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="listRoles">

A paginated list of roles in the organization.

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
    <td>Unique identifier for the role. (example: 0000000000E20FE3)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the role. (example: DataAdmin)</td>
</tr>
<tr>
    <td><CopyableCode code="autofillDependencies" /></td>
    <td><code>boolean</code></td>
    <td>Set this to true if you want to automatically append all missing capability requirements. If set to false an error will be thrown if any capabilities are missing their dependencies.</td>
</tr>
<tr>
    <td><CopyableCode code="capabilities" /></td>
    <td><code>array</code></td>
    <td>List of [capabilities](https://help.sumologic.com/Manage/Users-and-Roles/Manage-Roles/Role-Capabilities) associated with this role. Valid values are ### Data Management   - viewCollectors   - manageCollectors   - manageBudgets   - manageDataVolumeFeed   - viewFieldExtraction   - manageFieldExtractionRules   - manageS3DataForwarding   - manageContent   - dataVolumeIndex   - manageConnections   - viewScheduledViews   - manageScheduledViews   - viewPartitions   - managePartitions   - viewFields   - manageFields   - viewAccountOverview   - manageTokens   - downloadSearchResults  ### Entity management   - manageEntityTypeConfig  ### Metrics   - metricsTransformation   - metricsExtraction   - metricsRules  ### Security   - managePasswordPolicy   - ipAllowlisting   - createAccessKeys   - manageAccessKeys   - manageSupportAccountAccess   - manageAuditDataFeed   - manageSaml   - shareDashboardOutsideOrg   - manageOrgSettings   - changeDataAccessLevel  ### Dashboards   - shareDashboardWorld   - shareDashboardAllowlist  ### UserManagement   - manageUsersAndRoles  ### Observability   - searchAuditIndex   - auditEventIndex  ### Cloud SIEM Enterprise   - viewCse  ### Alerting   - viewMonitorsV2   - manageMonitorsV2   - viewAlerts</td>
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
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the role. (example: Manage data of the org.)</td>
</tr>
<tr>
    <td><CopyableCode code="filterPredicate" /></td>
    <td><code>string</code></td>
    <td>A search filter to restrict access to specific logs. The filter is silently added to the beginning of each query a user runs. For example, using '!_sourceCategory=billing' as a filter predicate will prevent users assigned to the role from viewing logs from the source category named 'billing'. (example: !_sourceCategory=billing)</td>
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
    <td><CopyableCode code="systemDefined" /></td>
    <td><code>boolean</code></td>
    <td>Role is system or user defined.</td>
</tr>
<tr>
    <td><CopyableCode code="users" /></td>
    <td><code>array</code></td>
    <td>List of user identifiers to assign the role to.</td>
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
    <td><a href="#getRole"><CopyableCode code="getRole" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a role with the given identifier in the organization.</td>
</tr>
<tr>
    <td><a href="#listRoles"><CopyableCode code="listRoles" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a>, <a href="#parameter-sortBy"><code>sortBy</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td>Get a list of all the roles in the organization. The response is paginated with a default limit of 100 roles per page.</td>
</tr>
<tr>
    <td><a href="#createRole"><CopyableCode code="createRole" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__name"><code>data__name</code></a></td>
    <td></td>
    <td>Create a new role in the organization.</td>
</tr>
<tr>
    <td><a href="#deleteRole"><CopyableCode code="deleteRole" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a role with the given identifier from the organization.</td>
</tr>
<tr>
    <td><a href="#updateRole"><CopyableCode code="updateRole" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-capabilities"><code>capabilities</code></a>, <a href="#parameter-description"><code>description</code></a>, <a href="#parameter-filterPredicate"><code>filterPredicate</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-users"><code>users</code></a></td>
    <td></td>
    <td>Update an existing role in the organization.</td>
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
    <td>Identifier of the role to update.</td>
</tr>
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>SumoLogic region (enum: [us2, au, ca, de, eu, fed, in, jp], default: us2)</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Limit the number of roles returned in the response. The number of roles returned may be less than the `limit`.</td>
</tr>
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Only return roles matching the given name.</td>
</tr>
<tr id="parameter-sortBy">
    <td><CopyableCode code="sortBy" /></td>
    <td><code>string</code></td>
    <td>Sort the list of roles by the `name` field.</td>
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
    defaultValue="getRole"
    values={[
        { label: 'getRole', value: 'getRole' },
        { label: 'listRoles', value: 'listRoles' }
    ]}
>
<TabItem value="getRole">

Get a role with the given identifier in the organization.

```sql
SELECT
id,
name,
autofillDependencies,
capabilities,
createdAt,
createdBy,
description,
filterPredicate,
modifiedAt,
modifiedBy,
systemDefined,
users
FROM sumologic.roles.roles
WHERE id = '{{ id }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="listRoles">

Get a list of all the roles in the organization. The response is paginated with a default limit of 100 roles per page.

```sql
SELECT
id,
name,
autofillDependencies,
capabilities,
createdAt,
createdBy,
description,
filterPredicate,
modifiedAt,
modifiedBy,
systemDefined,
users
FROM sumologic.roles.roles
WHERE region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
AND sortBy = '{{ sortBy }}'
AND name = '{{ name }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createRole"
    values={[
        { label: 'createRole', value: 'createRole' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createRole">

Create a new role in the organization.

```sql
INSERT INTO sumologic.roles.roles (
data__name,
data__description,
data__filterPredicate,
data__users,
data__capabilities,
data__autofillDependencies,
region
)
SELECT 
'{{ name }}' /* required */,
'{{ description }}',
'{{ filterPredicate }}',
'{{ users }}',
'{{ capabilities }}',
{{ autofillDependencies }},
'{{ region }}'
RETURNING
id,
name,
autofillDependencies,
capabilities,
createdAt,
createdBy,
description,
filterPredicate,
modifiedAt,
modifiedBy,
systemDefined,
users
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: roles
  props:
    - name: region
      value: string
      description: Required parameter for the roles resource.
    - name: name
      value: string
      description: |
        Name of the role.
    - name: description
      value: string
      description: |
        Description of the role.
    - name: filterPredicate
      value: string
      description: |
        A search filter to restrict access to specific logs. The filter is silently added to the beginning of each query a user runs. For example, using '!_sourceCategory=billing' as a filter predicate will prevent users assigned to the role from viewing logs from the source category named 'billing'.
    - name: users
      value: array
      description: |
        List of user identifiers to assign the role to.
    - name: capabilities
      value: array
      description: |
        List of [capabilities](https://help.sumologic.com/Manage/Users-and-Roles/Manage-Roles/Role-Capabilities) associated with this role. Valid values are
        ### Data Management
        - viewCollectors
        - manageCollectors
        - manageBudgets
        - manageDataVolumeFeed
        - viewFieldExtraction
        - manageFieldExtractionRules
        - manageS3DataForwarding
        - manageContent
        - dataVolumeIndex
        - manageConnections
        - viewScheduledViews
        - manageScheduledViews
        - viewPartitions
        - managePartitions
        - viewFields
        - manageFields
        - viewAccountOverview
        - manageTokens
        - downloadSearchResults
        ### Entity management
        - manageEntityTypeConfig
        ### Metrics
        - metricsTransformation
        - metricsExtraction
        - metricsRules
        ### Security
        - managePasswordPolicy
        - ipAllowlisting
        - createAccessKeys
        - manageAccessKeys
        - manageSupportAccountAccess
        - manageAuditDataFeed
        - manageSaml
        - shareDashboardOutsideOrg
        - manageOrgSettings
        - changeDataAccessLevel
        ### Dashboards
        - shareDashboardWorld
        - shareDashboardAllowlist
        ### UserManagement
        - manageUsersAndRoles
        ### Observability
        - searchAuditIndex
        - auditEventIndex
        ### Cloud SIEM Enterprise
        - viewCse
        ### Alerting
        - viewMonitorsV2
        - manageMonitorsV2
        - viewAlerts
    - name: autofillDependencies
      value: boolean
      description: |
        Set this to true if you want to automatically append all missing capability requirements. If set to false an error will be thrown if any capabilities are missing their dependencies.
      default: true
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteRole"
    values={[
        { label: 'deleteRole', value: 'deleteRole' }
    ]}
>
<TabItem value="deleteRole">

Delete a role with the given identifier from the organization.

```sql
DELETE FROM sumologic.roles.roles
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateRole"
    values={[
        { label: 'updateRole', value: 'updateRole' }
    ]}
>
<TabItem value="updateRole">

Update an existing role in the organization.

```sql
EXEC sumologic.roles.roles.updateRole 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"name": "{{ name }}", 
"description": "{{ description }}", 
"filterPredicate": "{{ filterPredicate }}", 
"users": "{{ users }}", 
"capabilities": "{{ capabilities }}", 
"autofillDependencies": {{ autofillDependencies }}
}'
;
```
</TabItem>
</Tabs>
