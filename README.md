# Problem statement
creates an azure cosmos db (if doesn't already exist)

# Example usage

> note: in examples, VERSION represents a version of the azure.cosmosdb.create pkg

## install

```shell
opctl pkg install github.com/opspec-pkgs/azure.cosmosdb.create#VERSION
```

## run

```
opctl run github.com/opspec-pkgs/azure.cosmosdb.create#VERSION
```

## compose

```yaml
op:
  pkg: { ref: github.com/opspec-pkgs/azure.cosmosdb.create#VERSION }
  inputs: 
    subscriptionId:
    loginId:
    loginSecret:
    name:
    resourceGroup: 
    # begin optional args
    locations:
    defaultConsistencyLevel: 
    kind:
    loginTenantId:
    loginType:
    maxInterval:
    maxStalenessPrefix:
    ipRangeFilter:
    # end optional args
```

# Support

join us on [![Slack](https://opspec-slackin.herokuapp.com/badge.svg)](https://opspec-slackin.herokuapp.com/)
or [open an issue](https://github.com/opspec-pkgs/azure.cosmosdb.create/issues)
