# Seybee Action

This action uploads a Software Test-Report to Seybee

## Inputs

## `projectName`

**Required** Name of the Project.
Example: Seybee

## `reportName`

**Required** Name of the individual Report.
Optimally this value changes each run.
Example: ${{ github.run_number }}

## `path`

**Required** The Path which contains the test reports
Example: ./target/surefire-reports

## `key-id`

**Required** Key-ID obtained by Seybee. This should be stored as a secret in Github.

## `api-key`

**Required** API-Key obtained by Seybee. This should be stored as a secret in Github.

## Example usage

```yaml title="/.github/workflows/build.yaml"
name: Seybee with Maven and JUnit4
on: push

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Set up JDK
        uses: actions/setup-java@v3
        with:
          java-version: "17"
          distribution: "temurin"
          cache: maven
      - name: Build with Maven
        run: mvn -B package --file pom.xml
      - name: Upload Test-Results to Seybee
        if: always() #Also execute if tests fail.
        uses: seybee-qa/seybee-github-action@v1
        with:
          projectName: DemoApp
          reportName: ${{ github.run_number }}
          path: "./target/surefire-reports"
          key-id: ${{ secrets.SEYBEE_KEY_ID }}
          api-key: ${{ secrets.SEYBEE_API_KEY }}
```
