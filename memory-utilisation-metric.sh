INSTANCE_ID="add-your-instance-id"
NAMESPACE="MyApp/memory"

#get memory utilise percentage

MEMORY_UTILIZATION=$(free | grep Mem | awk '{printf "%.2f" , $3/$2 * 100}')

#send the metric to cloudwatch

aws cloudwatch put-metric-data \
  --namespace "$NAMESPACE" \
  --metric-name "MemoryUtilisation" \
  --unit "Percent" \
  --value "$MEMORY_UTILIZATION" \
  --dimensions "InstanceId=$INSTANCE_ID"
