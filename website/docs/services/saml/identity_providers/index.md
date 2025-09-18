--- 
title: identity_providers
hide_title: false
hide_table_of_contents: false
keywords:
  - identity_providers
  - saml
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

Creates, updates, deletes, gets or lists an <code>identity_providers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>identity_providers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.saml.identity_providers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getIdentityProviders"
    values={[
        { label: 'getIdentityProviders', value: 'getIdentityProviders' }
    ]}
>
<TabItem value="getIdentityProviders">

A list of SAML configurations in the organization.

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
    <td>Unique identifier of the SAML Identity Provider. (example: 00000000361130F7)</td>
</tr>
<tr>
    <td><CopyableCode code="assertionConsumerUrl" /></td>
    <td><code>string</code></td>
    <td>The URL on Sumo Logic where the IdP will redirect to with its authentication response. (example: https://service.sumologic.com/sumo/saml/consume/9483922, default: )</td>
</tr>
<tr>
    <td><CopyableCode code="authnRequestUrl" /></td>
    <td><code>string</code></td>
    <td>The URL that the identity provider has assigned for Sumo Logic to submit SAML authentication requests to the identity provider. (example: https://www.okta.com/app/sumologic/abxcseyuiwelflkdjh/sso/saml, default: )</td>
</tr>
<tr>
    <td><CopyableCode code="certificate" /></td>
    <td><code>string</code></td>
    <td>Authentication Request Signing Certificate for the user.</td>
</tr>
<tr>
    <td><CopyableCode code="configurationName" /></td>
    <td><code>string</code></td>
    <td>Name of the SSO policy or another name used to describe the policy internally. (example: SumoLogic)</td>
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
    <td><CopyableCode code="debugMode" /></td>
    <td><code>boolean</code></td>
    <td>True if additional details are included when a user fails to sign in.</td>
</tr>
<tr>
    <td><CopyableCode code="disableRequestedAuthnContext" /></td>
    <td><code>boolean</code></td>
    <td>True if Sumo Logic will include the RequestedAuthnContext element of the SAML AuthnRequests it sends to the identity provider.</td>
</tr>
<tr>
    <td><CopyableCode code="emailAttribute" /></td>
    <td><code>string</code></td>
    <td>The email address of the new user account. (example: attribute/subject, default: )</td>
</tr>
<tr>
    <td><CopyableCode code="entityId" /></td>
    <td><code>string</code></td>
    <td>A unique identifier that is the intended audience of the SAML assertion. (example: https://service.sumologic.com/sumo/saml/9483922, default: )</td>
</tr>
<tr>
    <td><CopyableCode code="isRedirectBinding" /></td>
    <td><code>boolean</code></td>
    <td>True if the SAML binding is of HTTP Redirect type.</td>
</tr>
<tr>
    <td><CopyableCode code="issuer" /></td>
    <td><code>string</code></td>
    <td>The unique URL assigned to the organization by the SAML Identity Provider. (example: http://www.okta.com/abxcseyuiwelflkdjh)</td>
</tr>
<tr>
    <td><CopyableCode code="logoutEnabled" /></td>
    <td><code>boolean</code></td>
    <td>True if users are redirected to a URL after signing out of Sumo Logic.</td>
</tr>
<tr>
    <td><CopyableCode code="logoutUrl" /></td>
    <td><code>string</code></td>
    <td>The URL that users will be redirected to after signing out of Sumo Logic. (example: https://www.sumologic.com, default: )</td>
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
    <td><CopyableCode code="onDemandProvisioningEnabled" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="rolesAttribute" /></td>
    <td><code>string</code></td>
    <td>The role that Sumo Logic will assign to users when they sign in. (example: Sumo_Role, default: )</td>
</tr>
<tr>
    <td><CopyableCode code="signAuthnRequest" /></td>
    <td><code>boolean</code></td>
    <td>True if Sumo Logic will send signed Authn requests to the identity provider.</td>
</tr>
<tr>
    <td><CopyableCode code="spInitiatedLoginEnabled" /></td>
    <td><code>boolean</code></td>
    <td>True if Sumo Logic redirects users to your identity provider with a SAML AuthnRequest when signing in.</td>
</tr>
<tr>
    <td><CopyableCode code="spInitiatedLoginPath" /></td>
    <td><code>string</code></td>
    <td>This property has been deprecated and is no longer used. (example: http://www.okta.com/abxcseyuiwelflkdjh, default: )</td>
</tr>
<tr>
    <td><CopyableCode code="x509cert1" /></td>
    <td><code>string</code></td>
    <td>The certificate is used to verify the signature in SAML assertions.</td>
</tr>
<tr>
    <td><CopyableCode code="x509cert2" /></td>
    <td><code>string</code></td>
    <td>The backup certificate used to verify the signature in SAML assertions when x509cert1 expires. (default: )</td>
</tr>
<tr>
    <td><CopyableCode code="x509cert3" /></td>
    <td><code>string</code></td>
    <td>The backup certificate used to verify the signature in SAML assertions when x509cert1 expires and x509cert2 is empty. (default: )</td>
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
    <td><a href="#getIdentityProviders"><CopyableCode code="getIdentityProviders" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get a list of all SAML configurations in the organization.</td>
</tr>
<tr>
    <td><a href="#createIdentityProvider"><CopyableCode code="createIdentityProvider" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-region"><code>region</code></a>, <a href="#parameter-data__configurationName"><code>data__configurationName</code></a>, <a href="#parameter-data__issuer"><code>data__issuer</code></a>, <a href="#parameter-data__x509cert1"><code>data__x509cert1</code></a></td>
    <td></td>
    <td>Create a new SAML configuration in the organization.</td>
</tr>
<tr>
    <td><a href="#deleteIdentityProvider"><CopyableCode code="deleteIdentityProvider" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Delete a SAML configuration with the given identifier from the organization.</td>
</tr>
<tr>
    <td><a href="#updateIdentityProvider"><CopyableCode code="updateIdentityProvider" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-region"><code>region</code></a>, <a href="#parameter-configurationName"><code>configurationName</code></a>, <a href="#parameter-issuer"><code>issuer</code></a>, <a href="#parameter-x509cert1"><code>x509cert1</code></a></td>
    <td></td>
    <td>Update an existing SAML configuration in the organization.</td>
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
    <td>Identifier of the SAML configuration to update.</td>
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
    defaultValue="getIdentityProviders"
    values={[
        { label: 'getIdentityProviders', value: 'getIdentityProviders' }
    ]}
>
<TabItem value="getIdentityProviders">

Get a list of all SAML configurations in the organization.

```sql
SELECT
id,
assertionConsumerUrl,
authnRequestUrl,
certificate,
configurationName,
createdAt,
createdBy,
debugMode,
disableRequestedAuthnContext,
emailAttribute,
entityId,
isRedirectBinding,
issuer,
logoutEnabled,
logoutUrl,
modifiedAt,
modifiedBy,
onDemandProvisioningEnabled,
rolesAttribute,
signAuthnRequest,
spInitiatedLoginEnabled,
spInitiatedLoginPath,
x509cert1,
x509cert2,
x509cert3
FROM sumologic.saml.identity_providers
WHERE region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="createIdentityProvider"
    values={[
        { label: 'createIdentityProvider', value: 'createIdentityProvider' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="createIdentityProvider">

Create a new SAML configuration in the organization.

```sql
INSERT INTO sumologic.saml.identity_providers (
data__spInitiatedLoginPath,
data__configurationName,
data__issuer,
data__spInitiatedLoginEnabled,
data__authnRequestUrl,
data__x509cert1,
data__x509cert2,
data__x509cert3,
data__onDemandProvisioningEnabled,
data__rolesAttribute,
data__logoutEnabled,
data__logoutUrl,
data__emailAttribute,
data__debugMode,
data__signAuthnRequest,
data__disableRequestedAuthnContext,
data__isRedirectBinding,
region
)
SELECT 
'{{ spInitiatedLoginPath }}',
'{{ configurationName }}' /* required */,
'{{ issuer }}' /* required */,
{{ spInitiatedLoginEnabled }},
'{{ authnRequestUrl }}',
'{{ x509cert1 }}' /* required */,
'{{ x509cert2 }}',
'{{ x509cert3 }}',
'{{ onDemandProvisioningEnabled }}',
'{{ rolesAttribute }}',
{{ logoutEnabled }},
'{{ logoutUrl }}',
'{{ emailAttribute }}',
{{ debugMode }},
{{ signAuthnRequest }},
{{ disableRequestedAuthnContext }},
{{ isRedirectBinding }},
'{{ region }}'
RETURNING
id,
assertionConsumerUrl,
authnRequestUrl,
certificate,
configurationName,
createdAt,
createdBy,
debugMode,
disableRequestedAuthnContext,
emailAttribute,
entityId,
isRedirectBinding,
issuer,
logoutEnabled,
logoutUrl,
modifiedAt,
modifiedBy,
onDemandProvisioningEnabled,
rolesAttribute,
signAuthnRequest,
spInitiatedLoginEnabled,
spInitiatedLoginPath,
x509cert1,
x509cert2,
x509cert3
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: identity_providers
  props:
    - name: region
      value: string
      description: Required parameter for the identity_providers resource.
    - name: spInitiatedLoginPath
      value: string
      description: |
        This property has been deprecated and is no longer used.
      default: 
    - name: configurationName
      value: string
      description: |
        Name of the SSO policy or another name used to describe the policy internally.
    - name: issuer
      value: string
      description: |
        The unique URL assigned to the organization by the SAML Identity Provider.
    - name: spInitiatedLoginEnabled
      value: boolean
      description: |
        True if Sumo Logic redirects users to your identity provider with a SAML AuthnRequest when signing in.
      default: false
    - name: authnRequestUrl
      value: string
      description: |
        The URL that the identity provider has assigned for Sumo Logic to submit SAML authentication requests to the identity provider.
      default: 
    - name: x509cert1
      value: string
      description: |
        The certificate is used to verify the signature in SAML assertions.
    - name: x509cert2
      value: string
      description: |
        The backup certificate used to verify the signature in SAML assertions when x509cert1 expires.
      default: 
    - name: x509cert3
      value: string
      description: |
        The backup certificate used to verify the signature in SAML assertions when x509cert1 expires and x509cert2 is empty.
      default: 
    - name: onDemandProvisioningEnabled
      value: object
    - name: rolesAttribute
      value: string
      description: |
        The role that Sumo Logic will assign to users when they sign in.
      default: 
    - name: logoutEnabled
      value: boolean
      description: |
        True if users are redirected to a URL after signing out of Sumo Logic.
      default: false
    - name: logoutUrl
      value: string
      description: |
        The URL that users will be redirected to after signing out of Sumo Logic.
      default: 
    - name: emailAttribute
      value: string
      description: |
        The email address of the new user account.
      default: 
    - name: debugMode
      value: boolean
      description: |
        True if additional details are included when a user fails to sign in.
      default: false
    - name: signAuthnRequest
      value: boolean
      description: |
        True if Sumo Logic will send signed Authn requests to the identity provider.
      default: false
    - name: disableRequestedAuthnContext
      value: boolean
      description: |
        True if Sumo Logic will include the RequestedAuthnContext element of the SAML AuthnRequests it sends to the identity provider.
      default: false
    - name: isRedirectBinding
      value: boolean
      description: |
        True if the SAML binding is of HTTP Redirect type.
      default: false
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deleteIdentityProvider"
    values={[
        { label: 'deleteIdentityProvider', value: 'deleteIdentityProvider' }
    ]}
>
<TabItem value="deleteIdentityProvider">

Delete a SAML configuration with the given identifier from the organization.

```sql
DELETE FROM sumologic.saml.identity_providers
WHERE id = '{{ id }}' --required
AND region = '{{ region }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="updateIdentityProvider"
    values={[
        { label: 'updateIdentityProvider', value: 'updateIdentityProvider' }
    ]}
>
<TabItem value="updateIdentityProvider">

Update an existing SAML configuration in the organization.

```sql
EXEC sumologic.saml.identity_providers.updateIdentityProvider 
@id='{{ id }}' --required, 
@region='{{ region }}' --required 
@@json=
'{
"spInitiatedLoginPath": "{{ spInitiatedLoginPath }}", 
"configurationName": "{{ configurationName }}", 
"issuer": "{{ issuer }}", 
"spInitiatedLoginEnabled": {{ spInitiatedLoginEnabled }}, 
"authnRequestUrl": "{{ authnRequestUrl }}", 
"x509cert1": "{{ x509cert1 }}", 
"x509cert2": "{{ x509cert2 }}", 
"x509cert3": "{{ x509cert3 }}", 
"onDemandProvisioningEnabled": "{{ onDemandProvisioningEnabled }}", 
"rolesAttribute": "{{ rolesAttribute }}", 
"logoutEnabled": {{ logoutEnabled }}, 
"logoutUrl": "{{ logoutUrl }}", 
"emailAttribute": "{{ emailAttribute }}", 
"debugMode": {{ debugMode }}, 
"signAuthnRequest": {{ signAuthnRequest }}, 
"disableRequestedAuthnContext": {{ disableRequestedAuthnContext }}, 
"isRedirectBinding": {{ isRedirectBinding }}
}'
;
```
</TabItem>
</Tabs>
