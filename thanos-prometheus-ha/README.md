

### install minio

```bash
helm install minio -n monitor minio
```



### \# creat configmap && role

\# need create bucket  on huaweicloud then modify  bucket name  in  configmap.yaml

```
kubectl apply -n monitor -f rbac-setup.yaml  -f configmap.yaml 

kubectl create configmap -n monitor prometheus-rules --from-file=rules/
```



### \# deploy  prometheus-sidecar 

\# prometheus-sidecar.yaml  modify pvc size labels

```
kubectl apply -n monitor -f prometheus.yaml
```



### \# deploy thanos-store

```
kubectl apply -n monitor -f thanos-store.yaml 
```



### \# deploy thanos-querier.yaml

```bash
kubectl apply -n monitor -f thanos-querier.yaml
```



### \# deploy campactor

```bash
kubectl apply -n monitor -f thanos-compactor.yaml
```



### #deploy rules

```bash
kubectl apply -n monitor -f  thanos-rules.yaml
```



### \# alertmanager-HA

```
kubectl apply -n monitor -f  alertmanager
```

