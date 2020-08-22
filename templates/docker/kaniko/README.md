# Build Docker image using Kaniko

## How to

```yaml
include:
  - local: '/templates/docker/kaniko/.gitlab-ci.template.yml'

stages:
  - build
  - release
```

```yaml
app-build:
  stage: build
  extends: .kaniko-build-template
  variables:
    GCT_CI_DOCKER_CONTEXT_PATH: $CI_PROJECT_DIR
    GCT_CI_DOCKERFILE_NAME: Dockerfile
    GCT_CI_IMAGE_NAME: app

app-release-image-latest:
  stage: release
  only:
    - master
    - tags
  extends: .kaniko-release-template
  variables:
    GCT_CI_DOCKER_CONTEXT_PATH: $CI_PROJECT_DIR
    GCT_CI_DOCKERFILE_NAME: Dockerfile
    GCT_CI_IMAGE_NAME: app
```