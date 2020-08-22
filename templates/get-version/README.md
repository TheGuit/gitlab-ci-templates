# Fetch version number and save as file

## How it works

Use it a pre-build step to fetch version from code (eg. compose.json, git describe, ...).
Save it in a file set as artifact.

Use this file in other stages to pass version across them.

## How to

```yaml
---
include:
  - local: '/templates/get-version/.gitlab-ci.template.yml'

stages:
  - pre-build
  - build
  - release

get-version:
  stage: pre-build
  extends: .get-version-git-template

build:
  stage: build
  before_script:
    - |
      $VERSION=$(cat "$GCT_CI_APP_VERSION_FILE")
  script:
    - echo $VERSION
```
