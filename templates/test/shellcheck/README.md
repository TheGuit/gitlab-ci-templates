# Test shell script

## How to use

```yaml
include:
  - local: '/templates/test/shellcheck/.gitlab-ci.template.yml'

stages:
  - test

test-shell-script:
  extends: .shellcheck-find-test-template
  stage: test
```