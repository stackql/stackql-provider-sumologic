---
title: sumologic
hide_title: false
hide_table_of_contents: false
keywords:
  - sumologic
  - stackql
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage Sumologic resources using SQL
custom_edit_url: null
image: /img/stackql-sumologic-provider-featured-image.png
id: 'provider-intro'
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';

Cloud-native, real-time, unified logs and metrics analytics platform.

:::info[Provider Summary] 

total services: __32__  
total resources: __182__  

:::

See also:   
[[` SHOW `]](https://stackql.io/docs/language-spec/show) [[` DESCRIBE `]](https://stackql.io/docs/language-spec/describe)  [[` REGISTRY `]](https://stackql.io/docs/language-spec/registry)
* * * 

## Installation

To pull the latest version of the `sumologic` provider, run the following command:  

```bash
REGISTRY PULL sumologic;
```
> To view previous provider versions or to pull a specific provider version, see [here](https://stackql.io/docs/language-spec/registry).  

## Authentication

The following system environment variables are used for authentication by default:  

- <CopyableCode code="SUMOLOGIC_ACCESSID" /> - SumoLogic Access ID (see <a href="https://help.sumologic.com/docs/manage/security/access-keys/">Generating an Access Key</a>)
- <CopyableCode code="SUMOLOGIC_ACCESSKEY" /> - SumoLogic Access Key (see <a href="https://help.sumologic.com/docs/manage/security/access-keys/">Generating an Access Key</a>)
  
These variables are sourced at runtime (from the local machine or as CI variables/secrets).  

<details>

<summary>Using different environment variables</summary>

To use different environment variables (instead of the defaults), use the `--auth` flag of the `stackql` program.  For example:  

```bash

AUTH='{ "sumologic": { "type": "basic",  "username_var": "YOUR_SUMOLOGIC_ACCESS_ID_VAR", "password_var": "YOUR_SUMOLOGIC_ACCESS_KEY_VAR" }}'
stackql shell --auth="${AUTH}"

```
or using PowerShell:  

```powershell

$Auth = "{ 'sumologic': { 'type': 'basic',  'username_var': 'YOUR_SUMOLOGIC_ACCESS_ID_VAR', 'password_var': 'YOUR_SUMOLOGIC_ACCESS_KEY_VAR' }}"
stackql.exe shell --auth=$Auth

```
</details>


## Server Parameters


The following parameter is required for the `sumologic` provider if you are not using the `us2` region:  

- <CopyableCode code="region" /> - The SumoLogic regional endpoint (e.g. <code>au</code>, <code>ca</code>, <code>de</code>, <code>eu</code>, <code>fed</code>, <code>in</code>, <code>jp</code>)

This parameter would be supplied to the `WHERE` clause of each `SELECT` statement if you are not usign the `us2` region.

## Services
<div class="row">
<div class="providerDocColumn">
<a href="/services/access_keys/">access_keys</a><br />
<a href="/services/account/">account</a><br />
<a href="/services/apps/">apps</a><br />
<a href="/services/archive/">archive</a><br />
<a href="/services/collectors/">collectors</a><br />
<a href="/services/connections/">connections</a><br />
<a href="/services/content/">content</a><br />
<a href="/services/dashboards/">dashboards</a><br />
<a href="/services/dynamic_parsing_rules/">dynamic_parsing_rules</a><br />
<a href="/services/extraction_rules/">extraction_rules</a><br />
<a href="/services/fields/">fields</a><br />
<a href="/services/health_events/">health_events</a><br />
<a href="/services/ingest_budgets/">ingest_budgets</a><br />
<a href="/services/log_searches/">log_searches</a><br />
<a href="/services/logs_data_forwarding/">logs_data_forwarding</a><br />
<a href="/services/lookup_tables/">lookup_tables</a><br />
</div>
<div class="providerDocColumn">
<a href="/services/metrics_queries/">metrics_queries</a><br />
<a href="/services/metrics_searches/">metrics_searches</a><br />
<a href="/services/monitors/">monitors</a><br />
<a href="/services/partitions/">partitions</a><br />
<a href="/services/password_policy/">password_policy</a><br />
<a href="/services/plan/">plan</a><br />
<a href="/services/policies/">policies</a><br />
<a href="/services/roles/">roles</a><br />
<a href="/services/saml/">saml</a><br />
<a href="/services/scheduled_views/">scheduled_views</a><br />
<a href="/services/service_allowlist/">service_allowlist</a><br />
<a href="/services/slos/">slos</a><br />
<a href="/services/tokens/">tokens</a><br />
<a href="/services/tracing/">tracing</a><br />
<a href="/services/transformation_rules/">transformation_rules</a><br />
<a href="/services/users/">users</a><br />
</div>
</div>
