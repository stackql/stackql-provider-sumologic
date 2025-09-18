# `sumologic` provider for [`stackql`](https://github.com/stackql/stackql)

This repository is used to generate and document the `sumologic` provider for StackQL, allowing you to query and manipulate Sumo Logic resources using SQL-like syntax. The provider is built using the `@stackql/provider-utils` package, which provides tools for converting OpenAPI specifications into StackQL-compatible provider schemas.

## Prerequisites

To use the Sumo Logic provider with StackQL, you'll need:

1. A Sumo Logic account with appropriate API credentials
2. Sumo Logic Access ID and Access Key with sufficient permissions for the resources you want to access
3. StackQL CLI installed on your system (see [StackQL](https://github.com/stackql/stackql))

## 1. Download the Open API Specification

First, download the Sumo Logic API OpenAPI specification:

```bash
rm -rf provider-dev/downloaded/*
curl -L https://api.sumologic.com/docs/sumologic-openapi.yaml \
  -o provider-dev/downloaded/sumologic-openapi.yaml

# Convert YAML to JSON if needed
python3 provider-dev/scripts/yaml_to_json.py \
  --input provider-dev/downloaded/sumologic-openapi.yaml \
  --output provider-dev/downloaded/openapi.json
```

## 2. Split into Service Specs

Next, split the monolithic OpenAPI specification into service-specific files:

```bash
rm -rf provider-dev/source/*
npm run split -- \
  --provider-name sumologic \
  --api-doc provider-dev/downloaded/openapi.json \
  --svc-discriminator tag \
  --output-dir provider-dev/source \
  --overwrite \
  --svc-name-overrides "$(cat <<EOF
{
  "log-searches": "logs",
  "content-management": "content",
  "user-management": "users",
  "roles-management": "roles",
  "dashboard-management": "dashboards",
  "connections-management": "connections",
  "ingest-budgets": "ingest",
  "scheduled-views": "views"
}
EOF
)"
```

## 3. Generate Mappings

Generate the mapping configuration that connects OpenAPI operations to StackQL resources:

```bash
npm run generate-mappings -- \
  --provider-name sumologic \
  --input-dir provider-dev/source \
  --output-dir provider-dev/config
```

Update the resultant `provider-dev/config/all_services.csv` to add the `stackql_resource_name`, `stackql_method_name`, `stackql_verb` values for each operation.

## 4. Generate Provider

This step transforms the split OpenAPI service specs into a fully-functional StackQL provider by applying the resource and method mappings defined in your CSV file.

```bash
rm -rf provider-dev/openapi/*
npm run generate-provider -- \
  --provider-name sumologic \
  --input-dir provider-dev/source \
  --output-dir provider-dev/openapi/src/sumologic \
  --config-path provider-dev/config/all_services.csv \
  --servers '[{"url": "https://api.sumologic.com/api"}]' \
  --provider-config '{"auth": {"type": "basic", "credentials": {"usernameEnvVar": "SUMOLOGIC_ACCESS_ID", "passwordEnvVar": "SUMOLOGIC_ACCESS_KEY"}}}' \
  --overwrite
```

## 5. Test Provider

### Starting the StackQL Server

Before running tests, start a StackQL server with your provider:

```bash
PROVIDER_REGISTRY_ROOT_DIR="$(pwd)/provider-dev/openapi"
npm run start-server -- --provider sumologic --registry $PROVIDER_REGISTRY_ROOT_DIR
```

### Test Meta Routes

Test all metadata routes (services, resources, methods) in the provider:

```bash
npm run test-meta-routes -- sumologic --verbose
```

When you're done testing, stop the StackQL server:

```bash
npm run stop-server
```

Use this command to view the server status:

```bash
npm run server-status
```

### Run test queries

Run some test queries against the provider using the `stackql shell`:

```bash
PROVIDER_REGISTRY_ROOT_DIR="$(pwd)/provider-dev/openapi"
REG_STR='{"url": "file://'${PROVIDER_REGISTRY_ROOT_DIR}'", "localDocRoot": "'${PROVIDER_REGISTRY_ROOT_DIR}'", "verifyConfig": {"nopVerify": true}}'
./stackql shell --registry="${REG_STR}"
```

Example queries to try:

```sql
-- Get collector information
SELECT 
id,
name,
category,
alive,
ephemeral,
host_name,
source_sync_mode,
time_zone
FROM sumologic.collectors.collectors;

-- List all dashboards
SELECT
id,
title,
description,
folder_id,
created_at,
modified_at,
created_by,
modified_by
FROM sumologic.dashboards.dashboards;

-- Get ingest budget information
SELECT
id,
name,
field_value,
capacity_bytes,
timezone,
reset_time,
description,
action
FROM sumologic.ingest.budgets;

-- View user details
SELECT
id,
first_name,
last_name,
email,
is_active,
is_locked,
role_ids
FROM sumologic.users.users;

-- Check scheduled searches
SELECT
id,
name,
description,
query_text,
time_range,
schedule,
schedule_type,
parsing_mode
FROM sumologic.logs.searches;
```

## 6. Publish the provider

To publish the provider push the `sumologic` dir to `providers/src` in a feature branch of the [`stackql-provider-registry`](https://github.com/stackql/stackql-provider-registry). Follow the [registry release flow](https://github.com/stackql/stackql-provider-registry/blob/dev/docs/build-and-deployment.md).  

Launch the StackQL shell:

```bash
export DEV_REG="{ \"url\": \"https://registry-dev.stackql.app/providers\" }"
./stackql --registry="${DEV_REG}" shell
```

Pull the latest dev `sumologic` provider:

```sql
registry pull sumologic;
```

Run some test queries to verify the provider works as expected.

## 7. Generate web docs

Provider doc microsites are built using Docusaurus and published using GitHub Pages.  

a. Update `headerContent1.txt` and `headerContent2.txt` accordingly in `provider-dev/docgen/provider-data/`  

b. Update the following in `website/docusaurus.config.js`:  

```js
// Provider configuration - change these for different providers
const providerName = "sumologic";
const providerTitle = "Sumo Logic Provider";
```

c. Then generate docs using...

```bash
npm run generate-docs -- \
  --provider-name sumologic \
  --provider-dir ./provider-dev/openapi/src/sumologic/v00.00.00000 \
  --output-dir ./website \
  --provider-data-dir ./provider-dev/docgen/provider-data
```  

## 8. Test web docs locally

```bash
cd website
# test build
yarn build

# run local dev server
yarn start
```

## 9. Publish web docs to GitHub Pages

Under __Pages__ in the repository, in the __Build and deployment__ section select __GitHub Actions__ as the __Source__. In Netlify DNS create the following records:

| Source Domain | Record Type  | Target |
|---------------|--------------|--------|
| sumologic-provider.stackql.io | CNAME | stackql.github.io. |

## License

MIT

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.