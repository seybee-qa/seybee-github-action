# Seybee Action

This action uploads a Software Test-Report to Seybee

## Inputs

## `projectName`

**Required** Name of the Project.
Example: Seybee

## `path`

**Required** The Path which contains the test reports
Example: ./target/surefire-reports

## `key-id`

**Required** Key-ID obtained by Seybee. This should be stored as a secret in Github.

## `api-key`

**Required** API-Key obtained by Seybee. This should be stored as a secret in Github.
