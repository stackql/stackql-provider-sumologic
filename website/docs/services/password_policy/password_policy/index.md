--- 
title: password_policy
hide_title: false
hide_table_of_contents: false
keywords:
  - password_policy
  - password_policy
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

Creates, updates, deletes, gets or lists a <code>password_policy</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>password_policy</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.password_policy.password_policy" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getPasswordPolicy"
    values={[
        { label: 'getPasswordPolicy', value: 'getPasswordPolicy' }
    ]}
>
<TabItem value="getPasswordPolicy">

The current password policy.

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
    <td><CopyableCode code="accountLockoutDurationInMins" /></td>
    <td><code>integer (int32)</code></td>
    <td>The duration of time in minutes that a locked-out account remained locked before getting unlocked automatically.</td>
</tr>
<tr>
    <td><CopyableCode code="accountLockoutThreshold" /></td>
    <td><code>integer (int32)</code></td>
    <td>Number of failed login attempts allowed before account is locked-out.</td>
</tr>
<tr>
    <td><CopyableCode code="failedLoginResetDurationInMins" /></td>
    <td><code>integer (int32)</code></td>
    <td>The duration of time in minutes that must elapse from the first failed login attempt after which failed login count is reset to 0.</td>
</tr>
<tr>
    <td><CopyableCode code="maxLength" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum length of the password. (Setting this to any value other than 128 is no longer supported; this field may be deprecated in the future.)</td>
</tr>
<tr>
    <td><CopyableCode code="maxPasswordAgeInDays" /></td>
    <td><code>integer (int32)</code></td>
    <td>Maximum number of days that a password can be used before user is required to change it. Put -1 if the user should not have to change their password.</td>
</tr>
<tr>
    <td><CopyableCode code="minLength" /></td>
    <td><code>integer (int32)</code></td>
    <td>The minimum length of the password.</td>
</tr>
<tr>
    <td><CopyableCode code="minUniquePasswords" /></td>
    <td><code>integer (int32)</code></td>
    <td>The minimum number of unique new passwords that a user must use before an old password can be reused.</td>
</tr>
<tr>
    <td><CopyableCode code="mustContainDigits" /></td>
    <td><code>boolean</code></td>
    <td>If the password must contain digits.</td>
</tr>
<tr>
    <td><CopyableCode code="mustContainLowercase" /></td>
    <td><code>boolean</code></td>
    <td>If the password must contain lower case characters.</td>
</tr>
<tr>
    <td><CopyableCode code="mustContainSpecialChars" /></td>
    <td><code>boolean</code></td>
    <td>If the password must contain special characters.</td>
</tr>
<tr>
    <td><CopyableCode code="mustContainUppercase" /></td>
    <td><code>boolean</code></td>
    <td>If the password must contain upper case characters.</td>
</tr>
<tr>
    <td><CopyableCode code="rememberMfa" /></td>
    <td><code>boolean</code></td>
    <td>If MFA should be remembered on the browser.</td>
</tr>
<tr>
    <td><CopyableCode code="requireMfa" /></td>
    <td><code>boolean</code></td>
    <td>If MFA should be required to log in. By default, this field is set to `false`.</td>
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
    <td><a href="#getPasswordPolicy"><CopyableCode code="getPasswordPolicy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the current password policy.</td>
</tr>
<tr>
    <td><a href="#setPasswordPolicy"><CopyableCode code="setPasswordPolicy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Update the current password policy.</td>
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
    defaultValue="getPasswordPolicy"
    values={[
        { label: 'getPasswordPolicy', value: 'getPasswordPolicy' }
    ]}
>
<TabItem value="getPasswordPolicy">

Get the current password policy.

```sql
SELECT
accountLockoutDurationInMins,
accountLockoutThreshold,
failedLoginResetDurationInMins,
maxLength,
maxPasswordAgeInDays,
minLength,
minUniquePasswords,
mustContainDigits,
mustContainLowercase,
mustContainSpecialChars,
mustContainUppercase,
rememberMfa,
requireMfa
FROM sumologic.password_policy.password_policy
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="setPasswordPolicy"
    values={[
        { label: 'setPasswordPolicy', value: 'setPasswordPolicy' }
    ]}
>
<TabItem value="setPasswordPolicy">

Update the current password policy.

```sql
EXEC sumologic.password_policy.password_policy.setPasswordPolicy 
@region='{{ region }}' --required 
@@json=
'{
"minLength": {{ minLength }}, 
"maxLength": {{ maxLength }}, 
"mustContainLowercase": {{ mustContainLowercase }}, 
"mustContainUppercase": {{ mustContainUppercase }}, 
"mustContainDigits": {{ mustContainDigits }}, 
"mustContainSpecialChars": {{ mustContainSpecialChars }}, 
"maxPasswordAgeInDays": {{ maxPasswordAgeInDays }}, 
"minUniquePasswords": {{ minUniquePasswords }}, 
"accountLockoutThreshold": {{ accountLockoutThreshold }}, 
"failedLoginResetDurationInMins": {{ failedLoginResetDurationInMins }}, 
"accountLockoutDurationInMins": {{ accountLockoutDurationInMins }}, 
"requireMfa": {{ requireMfa }}, 
"rememberMfa": {{ rememberMfa }}
}'
;
```
</TabItem>
</Tabs>
