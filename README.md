# Dockerised Jolokia Proxy

[Dockerfile](https://github.com/BalaclavaLab/docker-jolokia)

Run standalone:

```sh
docker run -d --name jolokia -p 8080:8080 balaclavalab/jolokia
```

Kubernetes container snippet (add to Telegraf or a standalone deployment):

```yml
containers:
- name: jolokia
  image: balaclavalab/jolokia
  ports:
  - containerPort: 8080
  resources:
    requests:
      memory: 128Mi
      cpu: 0.1
    limits:
      memory: 1Gi
      cpu: 0.5
```
