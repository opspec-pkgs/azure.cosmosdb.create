#!/usr/bin/env sh

### begin login
loginCmd='az login -u "$loginId" -p "$loginSecret"'

# handle opts
if [ "$loginTenantId" != " " ]; then
    loginCmd=$(printf "%s --tenant %s" "$loginCmd" "$loginTenantId")
fi

case "$loginType" in
    "user")
        echo "logging in as user"
        ;;
    "sp")
        echo "logging in as service principal"
        loginCmd=$(printf "%s --service-principal" "$loginCmd")
        ;;
esac
eval "$loginCmd" >/dev/null

echo "setting default subscription"
az account set --subscription "$subscriptionId"
### end login

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
