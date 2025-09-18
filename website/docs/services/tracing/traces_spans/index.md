--- 
title: traces_spans
hide_title: false
hide_table_of_contents: false
keywords:
  - traces_spans
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

Creates, updates, deletes, gets or lists a <code>traces_spans</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>traces_spans</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="sumologic.tracing.traces_spans" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="getSpan"
    values={[
        { label: 'getSpan', value: 'getSpan' },
        { label: 'getSpans', value: 'getSpans' }
    ]}
>
<TabItem value="getSpan">

Details of the span with the given identifier.

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
    <td>Identifier of the span. (example: 00000000002317A9)</td>
</tr>
<tr>
    <td><CopyableCode code="criticalPathContribution" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="duration" /></td>
    <td><code>integer (int64)</code></td>
    <td>Number of nanoseconds the span lasted.</td>
</tr>
<tr>
    <td><CopyableCode code="errorMessage" /></td>
    <td><code>string</code></td>
    <td>Produced error message (could be a stack trace, database error code, ..) (example: Exception in thread "local[9]" java.lang.OutOfMemoryError: Java heap space<br />    at my.app.force.fields.SpaceShipForceField.main(SpaceShipForceField.java:17)<br />)</td>
</tr>
<tr>
    <td><CopyableCode code="events" /></td>
    <td><code>array</code></td>
    <td>Events attached to this span.</td>
</tr>
<tr>
    <td><CopyableCode code="fields" /></td>
    <td><code>object</code></td>
    <td>Fields attached to this span.</td>
</tr>
<tr>
    <td><CopyableCode code="info" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Span kind describes the relationship between the Span, its parents, and its children in a Trace. Possible values: `CLIENT`, `SERVER`, `PRODUCER`, `CONSUMER`, `INTERNAL`. (pattern: <code>^(CLIENT|SERVER|PRODUCER|CONSUMER|INTERNAL)$</code>, example: SERVER, x-pattern-message: Should be either `CLIENT`, `SERVER`, `PRODUCER`, `CONSUMER` or `INTERNAL`.)</td>
</tr>
<tr>
    <td><CopyableCode code="links" /></td>
    <td><code>array</code></td>
    <td>List of casually related spans.</td>
</tr>
<tr>
    <td><CopyableCode code="logs" /></td>
    <td><code>array</code></td>
    <td>Logs attached to this span.</td>
</tr>
<tr>
    <td><CopyableCode code="numberOfLinks" /></td>
    <td><code>integer (int32)</code></td>
    <td>Number of span links in this span.</td>
</tr>
<tr>
    <td><CopyableCode code="operationName" /></td>
    <td><code>string</code></td>
    <td>The name of the operation given to the span. (example: retrieveAccount)</td>
</tr>
<tr>
    <td><CopyableCode code="parentId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the parent span, if any. If the span has no parent it's considered a root span. (example: 000000000003C7BE)</td>
</tr>
<tr>
    <td><CopyableCode code="remoteService" /></td>
    <td><code>string</code></td>
    <td>Name of the possible remote span's service. (example: external-service)</td>
</tr>
<tr>
    <td><CopyableCode code="remoteServiceColor" /></td>
    <td><code>string</code></td>
    <td>Color hex code assigned to the remote service. (example: #fa41c6)</td>
</tr>
<tr>
    <td><CopyableCode code="remoteServiceType" /></td>
    <td><code>string</code></td>
    <td>Defines type of service. (pattern: <code>^(Db|HTTP|MQ|Web|Mixed|Unknown|Cpp|DotNET|Erlang|Go|Java|NodeJS|Php|Python|Ruby|WebJS|Swift|MSSQL|MySQL|Oracle|Db2|PostgreSQL|Redshift|Hive|Cloudscape|HSQLDB|Progress|MaxDB|HANADB|Ingres|FirstSQL|EnterpriseDB|Cache|Adabas|Firebird|ApacheDerby|FileMaker|Informix|InstantDB|InterBase|MariaDB|Netezza|PervasivePSQL|PointBase|SQLite|Sybase|Teradata|Vertica|H2|ColdFusion|Cassandra|HBase|MongoDB|Redis|Couchbase|CouchDB|CosmosDB|DynamoDB|Neo4j|Geode|Elasticsearch|Memcached|CockroachDB)$</code>, example: HTTP, x-pattern-message: Should be either `Db`, `HTTP`, `MQ`, `Web`, `Mixed`, `Unknown`, `Cpp`, `DotNET`, `Erlang`, `Go`, `Java`, `NodeJS`, `Php`, `Python`, `Ruby`, `WebJS`, `Swift`, `MSSQL`, `MySQL`, `Oracle`, `Db2`, `PostgreSQL`, `Redshift`, `Hive`, `Cloudscape`, `HSQLDB`, `Progress`, `MaxDB`, `HANADB`, `Ingres`, `FirstSQL`, `EnterpriseDB`, `Cache`, `Adabas`, `Firebird`, `ApacheDerby`, `FileMaker`, `Informix`, `InstantDB`, `InterBase`, `MariaDB`, `Netezza`, `PervasivePSQL`, `PointBase`, `SQLite`, `Sybase`, `Teradata`, `Vertica`, `H2`, `ColdFusion`, `Cassandra`, `HBase`, `MongoDB`, `Redis`, `Couchbase`, `CouchDB`, `CosmosDB`, `DynamoDB`, `Neo4j`, `Geode`, `Elasticsearch`, `Memcached` or `CockroachDB`)</td>
</tr>
<tr>
    <td><CopyableCode code="resource" /></td>
    <td><code>string</code></td>
    <td>The name of the resource attached to the span. (example: http.request)</td>
</tr>
<tr>
    <td><CopyableCode code="service" /></td>
    <td><code>string</code></td>
    <td>The name of the service this span is part of. (example: user-service)</td>
</tr>
<tr>
    <td><CopyableCode code="serviceColor" /></td>
    <td><code>string</code></td>
    <td>Color hex code assigned to the service. (example: #fa41c6)</td>
</tr>
<tr>
    <td><CopyableCode code="serviceType" /></td>
    <td><code>string</code></td>
    <td>Defines type of service. (pattern: <code>^(Db|HTTP|MQ|Web|Mixed|Unknown|Cpp|DotNET|Erlang|Go|Java|NodeJS|Php|Python|Ruby|WebJS|Swift|MSSQL|MySQL|Oracle|Db2|PostgreSQL|Redshift|Hive|Cloudscape|HSQLDB|Progress|MaxDB|HANADB|Ingres|FirstSQL|EnterpriseDB|Cache|Adabas|Firebird|ApacheDerby|FileMaker|Informix|InstantDB|InterBase|MariaDB|Netezza|PervasivePSQL|PointBase|SQLite|Sybase|Teradata|Vertica|H2|ColdFusion|Cassandra|HBase|MongoDB|Redis|Couchbase|CouchDB|CosmosDB|DynamoDB|Neo4j|Geode|Elasticsearch|Memcached|CockroachDB)$</code>, example: HTTP, x-pattern-message: Should be either `Db`, `HTTP`, `MQ`, `Web`, `Mixed`, `Unknown`, `Cpp`, `DotNET`, `Erlang`, `Go`, `Java`, `NodeJS`, `Php`, `Python`, `Ruby`, `WebJS`, `Swift`, `MSSQL`, `MySQL`, `Oracle`, `Db2`, `PostgreSQL`, `Redshift`, `Hive`, `Cloudscape`, `HSQLDB`, `Progress`, `MaxDB`, `HANADB`, `Ingres`, `FirstSQL`, `EnterpriseDB`, `Cache`, `Adabas`, `Firebird`, `ApacheDerby`, `FileMaker`, `Informix`, `InstantDB`, `InterBase`, `MariaDB`, `Netezza`, `PervasivePSQL`, `PointBase`, `SQLite`, `Sybase`, `Teradata`, `Vertica`, `H2`, `ColdFusion`, `Cassandra`, `HBase`, `MongoDB`, `Redis`, `Couchbase`, `CouchDB`, `CosmosDB`, `DynamoDB`, `Neo4j`, `Geode`, `Elasticsearch`, `Memcached` or `CockroachDB`)</td>
</tr>
<tr>
    <td><CopyableCode code="startedAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Date and time the span was started in the [ISO 8601 / RFC3339](https://tools.ietf.org/html/rfc3339) format. (example: 2019-11-22T09:00:00Z)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="getSpans">

List of spans for the given trace.

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
    <td><CopyableCode code="next" /></td>
    <td><code>string</code></td>
    <td>Next continuation token. (example: dlFXd0lhSkxzRjAwYnpVZkMrRmlhYnF4cGtNMWdnVEI)</td>
</tr>
<tr>
    <td><CopyableCode code="spanPage" /></td>
    <td><code>array</code></td>
    <td>List of trace spans.</td>
</tr>
<tr>
    <td><CopyableCode code="totalCount" /></td>
    <td><code>integer (int64)</code></td>
    <td>Total count of spans for this trace.</td>
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
    <td><a href="#getSpan"><CopyableCode code="getSpan" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-traceId"><code>traceId</code></a>, <a href="#parameter-spanId"><code>spanId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td></td>
    <td>Get details of a span with the given identifier.</td>
</tr>
<tr>
    <td><a href="#getSpans"><CopyableCode code="getSpans" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-traceId"><code>traceId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-token"><code>token</code></a></td>
    <td>Get a list of spans for the given trace. The response is paginated with a default limit of 100 spans per page.</td>
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
    <td>Identifier of the span to get the details.</td>
</tr>
<tr id="parameter-traceId">
    <td><CopyableCode code="traceId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the trace to get the spans.</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of results to fetch.</td>
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
    defaultValue="getSpan"
    values={[
        { label: 'getSpan', value: 'getSpan' },
        { label: 'getSpans', value: 'getSpans' }
    ]}
>
<TabItem value="getSpan">

Get details of a span with the given identifier.

```sql
SELECT
id,
criticalPathContribution,
duration,
errorMessage,
events,
fields,
info,
kind,
links,
logs,
numberOfLinks,
operationName,
parentId,
remoteService,
remoteServiceColor,
remoteServiceType,
resource,
service,
serviceColor,
serviceType,
startedAt,
status
FROM sumologic.tracing.traces_spans
WHERE traceId = '{{ traceId }}' -- required
AND spanId = '{{ spanId }}' -- required
AND region = '{{ region }}' -- required
;
```
</TabItem>
<TabItem value="getSpans">

Get a list of spans for the given trace. The response is paginated with a default limit of 100 spans per page.

```sql
SELECT
next,
spanPage,
totalCount
FROM sumologic.tracing.traces_spans
WHERE traceId = '{{ traceId }}' -- required
AND region = '{{ region }}' -- required
AND limit = '{{ limit }}'
AND token = '{{ token }}'
;
```
</TabItem>
</Tabs>
