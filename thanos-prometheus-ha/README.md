

### \# creat configmap && role

\# need create obs on huaweicloud

kubectl apply -n monitor -f rbac-setup.yaml  -f configmap.yaml 

kubectl create configmap -n monitor prometheus-rules --from-file=rules/

### \# deploy  prometheus-sidecar 

\# prometheus-sidecar.yaml  modify pvc size labels

kubectl apply -n monitor -f prometheus-sidecar.yaml 

### \# deploy thanos-store

kubectl apply -n monitor -f thanos-store.yaml 

### \# deploy thanos-querier.yaml

kubectl apply -n monitor -f thanos-querier.yaml

### \# deploy campactor

kubectl apply -n monitor -f thanos-compactor.yaml

### \# alertmanager-HA

kubectl apply -n monitor -f  alertmanager
