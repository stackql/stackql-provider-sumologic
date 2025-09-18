--- 
title: traces_spans_billing_info
hide_title: false
hide_table_of_contents: false
keywords:
  - traces_spans_billing_info
  - tracing
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

Creates, updates, deletes, gets or lists a <code>traces_spans_billing_info</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>traces_spans_billing_info</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.tracing.traces_spans_billing_info" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getSpanBillingInfo"
    values={[
        { label: 'getSpanBillingInfo', value: 'getSpanBillingInfo' }
    ]}
>
<TabItem value="getSpanBillingInfo">

Billing information of the span with the given identifier.

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
    <td><CopyableCode code="billedBytes" /></td>
    <td><code>integer</code></td>
    <td>Number of bytes that were charged for the span.</td>
</tr>
<tr>
    <td><CopyableCode code="billedFormat" /></td>
    <td><code>string</code></td>
    <td>Billing format of the span. Number of bytes of this representation of the span is equal to `billedBytes`. (example: traceId=2ff9c457b1aa00f4;spanId=97872e33215c4275;parentSpanId=98bcdfc5da874c40;operation=spanId-97872e33215c4275;startTimestamp=1603283111874000000;endTimestamp=1603283112268000000;service=ServiceA;status.code=ERROR;status.message=ERROR;kind=SERVER;custom-tag-2=value2;_sourcehost=127.0.0.1;http.url=/api/operation-x;message=Some error message;_sourcecategory=Http Input;custom-tag-1=value1;error=true;_sourcename=Http Input;error.kind=InvalidInput;_collector=trace-generator-collector;http.method=GET;)</td>
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
    <td><a href="#getSpanBillingInfo"><CopyableCode code="getSpanBillingInfo" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-traceId"><code>traceId</code></a>, <a href="#parameter-spanId"><code>spanId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get the billing information of the span.</td>
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
<tr id="parameter-spanId">
    <td><CopyableCode code="spanId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the span to get the billing info.</td>
</tr>
<tr id="parameter-traceId">
    <td><CopyableCode code="traceId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the trace the span belongs to.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="getSpanBillingInfo"
    values={[
        { label: 'getSpanBillingInfo', value: 'getSpanBillingInfo' }
    ]}
>
<TabItem value="getSpanBillingInfo">

Get the billing information of the span.

```sql
SELECT
billedBytes,
billedFormat
FROM sumologic.tracing.traces_spans_billing_info
WHERE traceId = '{{ traceId }}' -- required
AND spanId = '{{ spanId }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
</Tabs>
