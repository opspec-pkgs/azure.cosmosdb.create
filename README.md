# problem statement
creates an azure cosmos db (if doesn't already exist)

# example usage

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
run:
  op:
    pkg: { ref: github.com/opspec-pkgs/azure.cosmosdb.create#VERSION }
    inputs: 
      subscriptionId: 
      azureUsername: 
      azurePassword: 
      name:
      location:
      resourceGroup: 
      defaultConsistencyLevel: 
      kind: 
```

