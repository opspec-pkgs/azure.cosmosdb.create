#!/usr/bin/env sh

echo "logging in to azure"
az login -u "$azureUsername" -p "$azurePassword" >/dev/null

echo "setting default subscription"
az account set --subscription "$subscriptionId"

echo "checking for exiting sql server"
if [ "$(az cosmosdb show --name "$name" --resource-group "$resourceGroup")" != "" ]
then
  echo "found exiting cosmos db"
else
  echo "creating cosmos db"
  az cosmosdb create \
    --default-consistency-level "$defaultConsistencyLevel" \
    --kind "$kind" \
    --max-interval "$maxInterval" \
    --max-staleness-prefix "$maxStalenessPrefix" \
    --ip-range-filter "$ipRangeFilter" \
    --locations "$locations" \
    --name "$name" \
    --resource-group "$resourceGroup"
fi
