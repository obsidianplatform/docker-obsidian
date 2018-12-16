# obsidian - K8s Deployment

This is a k8s deployment that'll deploy the obsidian daemon.

### Prerequisites

You need to make sure that you have kubectl access to your kubernetes cluster.

Follow the kubernetes docs on whatever system you're on to get local access.

```
kubectl get nodes - Should return the nodes in the cluster.
```
### Installing

Clone the repo

First change the obsidian.conf file to fit your settings.

We'll then want to create the deployment. In order to do so run this:

```
kubectl create -f "path\to\deployment.json"
```

## Running commands on the obsidian pod.

Get your pod name:
```
kubectl get pods 
```
It should show something like this.
```
obsidiand-deployment-76db8bd5dd-pkrh8
```
Then you want to run commands on the pod run this
```
kubectl exec -it obsidiand-deployment-76db8bd5dd-pkrh8 obsidian-cli getinfo
```
Or you can create a session with bash if you want.

```
kubectl exec -it obsidiand-deployment-76db8bd5dd-pkrh8 bash
```
