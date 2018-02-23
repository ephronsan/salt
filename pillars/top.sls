base:
  '*':
    - apache
  'minion1':
    - environment.integration
    - users
  'minion2':
    - environment.staging
  'minion4':
    - environment.production
  'minion3-centos':
    - environment.dev
  'minion5-xenial':
    - environment.integration
    - users
    - editors
