

### \# creat configmap && role

\# need create bucket  on huaweicloud then modify  bucket name  in  configmap.yaml

kubectl apply -n monitor -f rbac-setup.yaml  -f configmap.yaml 

kubectl delete configmaps -n monitor prometheus-rules

kubectl create configmaps -n monitor prometheus-rules --from-file=rules/

### \# deploy  prometheus-sidecar 

\# prometheus-sidecar.yaml  modify pvc size labels

kubectl apply -n monitor -f prometheus.yaml

### \# deploy thanos-store

kubectl apply -n monitor -f thanos-store.yaml 

### \# deploy thanos-querier.yaml

kubectl apply -n monitor -f thanos-querier.yaml

### \# deploy campactor

kubectl apply -n monitor -f thanos-compactor.yaml

### #deploy rules

kubectl apply -n monitor -f  thanos-rules.yaml

### \# alertmanager-HA

kubectl apply -n monitor -f  alertmanager
