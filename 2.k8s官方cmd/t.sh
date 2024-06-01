

1 Create a pod using the data in pod.json

kubectl create -f ./pod.json

 

2 Create a pod based on the JSON passed into stdin

cat pod.json | kubectl create -f -

 

3 Edit the data in docker-registry.yaml in JSON then create the resource using the edited data

kubectl create -f docker-registry.yaml --edit -o json

 

4 Create a cluster role named "pod-reader" that allows user to perform "get", "watch" and "list" on pods

kubectl create clusterrole pod-reader --verb=get,list,watch --resource=pods

 

5 Create a cluster role named "pod-reader" with ResourceName specified

kubectl create clusterrole pod-reader --verb=get --resource=pods --resource-name=readablepod --resource-name=anotherpod

 

6 Create a cluster role named "foo" with API Group specified

kubectl create clusterrole foo --verb=get,list,watch --resource=rs.extensions

 

7 Create a cluster role named "foo" with SubResource specified

kubectl create clusterrole foo --verb=get,list,watch --resource=pods,pods/status

 

8 Create a cluster role name "foo" with NonResourceURL specified

kubectl create clusterrole "foo" --verb=get --non-resource-url=/logs/*

 

9 Create a cluster role name "monitoring" with AggregationRule specified

kubectl create clusterrole monitoring --aggregation-rule="rbac.example.com/aggregate-to-monitoring=true"

 

10 Create a cluster role binding for user1, user2, and group1 using the cluster-admin cluster role

kubectl create clusterrolebinding cluster-admin --clusterrole=cluster-admin --user=user1 --user=user2 --group=group1

 

11 Create a new config map named my-config based on folder bar

kubectl create configmap my-config --from-file=path/to/bar

 

12 Create a new config map named my-config with specified keys instead of file basenames on disk

kubectl create configmap my-config --from-file=key1=/path/to/bar/file1.txt --from-file=key2=/path/to/bar/file2.txt

 

13 Create a new config map named my-config with key1=config1 and key2=config2

kubectl create configmap my-config --from-literal=key1=config1 --from-literal=key2=config2

 

14 Create a new config map named my-config from the key=value pairs in the file

kubectl create configmap my-config --from-file=path/to/bar

 

15 Create a new config map named my-config from an env file

kubectl create configmap my-config --from-env-file=path/to/bar.env

 

16 Create a cron job

kubectl create cronjob my-job --image=busybox --schedule="*/1 * * * *"

 

17 Create a cron job with a command

kubectl create cronjob my-job --image=busybox --schedule="*/1 * * * *" -- date

 

18 Create a deployment named my-dep that runs the busybox image

kubectl create deployment my-dep --image=busybox

 

19 Create a deployment with a command

kubectl create deployment my-dep --image=busybox -- date

 

20 Create a deployment named my-dep that runs the nginx image with 3 replicas

kubectl create deployment my-dep --image=nginx --replicas=3

 

21 Create a deployment named my-dep that runs the busybox image and expose port 5701

kubectl create deployment my-dep --image=busybox --port=5701

 

22 Create a single ingress called 'simple' that directs requests to foo.com/bar to svc # svc1:8080 with a tls secret "my-cert"

kubectl create ingress simple --rule="foo.com/bar=svc1:8080,tls=my-cert"

 

23 Create a catch all ingress of "/path" pointing to service svc:port and Ingress Class as "otheringress"

kubectl create ingress catch-all --class=otheringress --rule="/path=svc:port"

 

24 Create an ingress with two annotations: ingress.annotation1 and ingress.annotations2

kubectl create ingress annotated --class=default --rule="foo.com/bar=svc:port"    --annotation ingress.annotation1=foo  --annotation ingress.annotation2=bla

 

25 Create an ingress with the same host and multiple paths

kubectl create ingress multipath --class=default \--rule="foo.com/=svc:port"  --rule="foo.com/admin/=svcadmin:portadmin"

 

26 Create an ingress with multiple hosts and the pathType as Prefix

kubectl create ingress ingress1 --class=default  --rule="foo.com/path*=svc:8080"  --rule="bar.com/admin*=svc2:http"

 

27 Create an ingress with TLS enabled using the default ingress certificate and different path types

kubectl create ingress ingtls --class=default  --rule="foo.com/=svc:https,tls"  --rule="foo.com/path/subpath*=othersvc:8080"

 

28 Create an ingress with TLS enabled using a specific secret and pathType as Prefix

kubectl create ingress ingsecret --class=default   --rule="foo.com/*=svc:8080,tls=secret1"

 

29 Create an ingress with a default backend

kubectl create ingress ingdefault --class=default   --default-backend=defaultsvc:http  --rule="foo.com/*=svc:8080,tls=secret1"

 

30 Create a job

kubectl create job my-job --image=busybox

 

31 Create a job with a command

kubectl create job my-job --image=busybox -- date

 

32 Create a job from a cron job named "a-cronjob"

kubectl create job test-job --from=cronjob/a-cronjob

 

33 Create a new namespace named my-namespace

kubectl create namespace my-namespace

 

34 Create a pod disruption budget named my-pdb that will select all pods with the app=rails label # and require at least one of them being available at any point in time

kubectl create poddisruptionbudget my-pdb --selector=app=rails --min-available=1

 

35 Create a pod disruption budget named my-pdb that will select all pods with the app=nginx label # and require at least half of the pods selected to be available at any point in time

kubectl create pdb my-pdb --selector=app=nginx --min-available=50%

 

36 Create a priority class named high-priority

kubectl create priorityclass high-priority --value=1000 --description="high priority"

 

37 Create a priority class named default-priority that is considered as the global default priority

kubectl create priorityclass default-priority --value=1000 --global-default=true --description="default priority"

 

38 Create a priority class named high-priority that cannot preempt pods with lower priority

kubectl create priorityclass high-priority --value=1000 --description="high priority" --preemption-policy="Never"

 

39 Create a new resource quota named my-quota

kubectl create quota my-quota --hard=cpu=1,memory=1G,pods=2,services=3,replicationcontrollers=2,resourcequotas=1,secrets=5,persistentvolumeclaims=10

 

40 Create a new resource quota named best-effort

kubectl create quota best-effort --hard=pods=100 --scopes=BestEffort

 

41 Create a role named "pod-reader" that allows user to perform "get", "watch" and "list" on pods

kubectl create role pod-reader --verb=get --verb=list --verb=watch --resource=pods

 

42 Create a role named "pod-reader" with ResourceName specified

kubectl create role pod-reader --verb=get --resource=pods --resource-name=readablepod --resource-name=anotherpod

 

43 Create a role named "foo" with API Group specified

kubectl create role foo --verb=get,list,watch --resource=rs.extensions

 

44 Create a role named "foo" with SubResource specified

kubectl create role foo --verb=get,list,watch --resource=pods,pods/status

 

45 Create a role binding for user1, user2, and group1 using the admin cluster role

kubectl create rolebinding admin --clusterrole=admin --user=user1 --user=user2 --group=group1

 

46 If you don't already have a .dockercfg file, you can create a dockercfg secret directly by using:

kubectl create secret docker-registry my-secret --docker-server=DOCKER_REGISTRY_SERVER --docker-username=DOCKER_USER --docker-password=DOCKER_PASSWORD --docker-email=DOCKER_EMAIL

 

47 Create a new secret named my-secret from ~/.docker/config.json

kubectl create secret docker-registry my-secret --from-file=.dockerconfigjson=path/to/.docker/config.json

 

48 Create a new secret named my-secret with keys for each file in folder bar

kubectl create secret generic my-secret --from-file=path/to/bar

 

49 Create a new secret named my-secret with specified keys instead of names on disk

kubectl create secret generic my-secret --from-file=ssh-privatekey=path/to/id_rsa --from-file=ssh-publickey=path/to/id_rsa.pub

 

50 Create a new secret named my-secret with key1=supersecret and key2=topsecret

kubectl create secret generic my-secret --from-literal=key1=supersecret --from-literal=key2=topsecret

 

51 Create a new secret named my-secret using a combination of a file and a literal

kubectl create secret generic my-secret --from-file=ssh-privatekey=path/to/id_rsa --from-literal=passphrase=topsecret

 

52 Create a new secret named my-secret from an env file

kubectl create secret generic my-secret --from-env-file=path/to/bar.env

 

53 Create a new TLS secret named tls-secret with the given key pair

kubectl create secret tls tls-secret --cert=path/to/tls.cert --key=path/to/tls.key

 

54 Create a new ClusterIP service named my-cs

kubectl create service clusterip my-cs --tcp=5678:8080

 

55 Create a new ClusterIP service named my-cs (in headless mode)

kubectl create service clusterip my-cs --clusterip="None"   kubectl create service externalname my-ns --external-name bar.com

 

56 Create a new ExternalName service named my-ns

kubectl create service loadbalancer my-lbs --tcp=5678:8080

 

57 Create a new LoadBalancer service named my-lbs

kubectl create service nodeport my-ns --tcp=5678:8080

 

58 Create a new NodePort service named my-ns

kubectl create serviceaccount my-service-account

 

59 Create a new service account named my-service-account

kubectl get pods

 

60 List all pods in ps output format

kubectl get pods -o wide

 

61 List all pods in ps output format with more information (such as node name)

kubectl get replicationcontroller web

 

62 List a single replication controller with specified NAME in ps output format

kubectl get deployments.v1.apps -o json

 

63 List deployments in JSON output format, in the "v1" version of the "apps" API group

kubectl get -o json pod web-pod-13je7

 

64 List a single pod in JSON output format

kubectl get -f pod.yaml -o json

 

65 List a pod identified by type and name specified in "pod.yaml" in JSON output format

kubectl get -k dir/

 

66 List resources from a directory with kustomization.yaml - e.g. dir/kustomization.yaml

kubectl get -o template pod/web-pod-13je7 --template={{.status.phase}}

 

67 Return only the phase value of the specified pod

kubectl get pod test-pod -o custom-columns=CONTAINER:.spec.containers[0].name,IMAGE:.spec.containers[0].image

 

68 List resource information in custom columns

kubectl get rc,services

 

69 List all replication controllers and services together in ps output format

kubectl get rc/web service/frontend pods/web-pod-13je7

 

70 List one or more resources by their type and names

kubectl run nginx --image=nginx

 

71 Start a nginx pod

kubectl run hazelcast --image=hazelcast/hazelcast --port=5701

 

72 Start a hazelcast pod and let the container expose port 5701

kubectl run hazelcast --image=hazelcast/hazelcast --env="DNS_DOMAIN=cluster" --env="POD_NAMESPACE=default"

 

73 Start a hazelcast pod and set environment variables "DNS_DOMAIN=cluster" and "POD_NAMESPACE=default" in the container

kubectl run hazelcast --image=hazelcast/hazelcast --labels="app=hazelcast,env=prod"

 

74 Start a hazelcast pod and set labels "app=hazelcast" and "env=prod" in the container

kubectl run nginx --image=nginx --dry-run=client

 

75 Dry run; print the corresponding API objects without creating them

kubectl run nginx --image=nginx --overrides='{ "apiVersion": "v1", "spec": { ... } }'

 

76 Start a nginx pod, but overload the spec with a partial set of values parsed from JSON

kubectl run -i -t busybox --image=busybox --restart=Never

 

77 Start a busybox pod and keep it in the foreground, don't restart it if it exits

kubectl run nginx --image=nginx -- <arg1> <arg2> ... <argN>

 

78 Start the nginx pod using the default command, but use custom arguments (arg1 .. argN) for that command

kubectl run nginx --image=nginx --command -- <cmd> <arg1> ... <argN>

 

79 Start the nginx pod using a different command and custom arguments

kubectl expose rc nginx --port=80 --target-port=8000

 

80 Create a service for a replicated nginx, which serves on port 80 and connects to the containers on port 8000

kubectl expose -f nginx-controller.yaml --port=80 --target-port=8000

 

81 Create a service for a replication controller identified by type and name specified in "nginx-controller.yaml", which serves on port 80 and connects to the containers on port 8000

kubectl expose pod valid-pod --port=444 --name=frontend

 

82 Create a service for a pod valid-pod, which serves on port 444 with the name "frontend"

kubectl expose service nginx --port=443 --target-port=8443 --name=nginx-https

 

83 Create a second service based on the above service, exposing the container port 8443 as port 443 with the name "nginx-https"

kubectl expose rc streamer --port=4100 --protocol=UDP --name=video-stream

 

84 Create a service for a replicated streaming application on port 4100 balancing UDP traffic and named 'video-stream'.

kubectl expose rs nginx --port=80 --target-port=8000

 

85 Create a service for a replicated nginx using replica set, which serves on port 80 and connects to the containers on port 8000

kubectl expose deployment nginx --port=80 --target-port=8000

 

86 Create a service for an nginx deployment, which serves on port 80 and connects to the containers on port 8000

kubectl delete -f ./pod.json

 

87 Delete a pod using the type and name specified in pod.json

kubectl delete -k dir

 

88 Delete resources from a directory containing kustomization.yaml - e.g. dir/kustomization.yaml

cat pod.json | kubectl delete -f -

 

89 Delete a pod based on the type and name in the JSON passed into stdin

kubectl delete pod,service baz foo

 

90 Delete pods and services with same names "baz" and "foo"

kubectl delete pods,services -l name=myLabel

 

91 Delete pods and services with label name=myLabel

kubectl delete pod foo --now

 

92 Delete a pod with minimal delay

kubectl delete pod foo --force

 

93 Force delete a pod on a dead node

kubectl delete pods --all

 

94 Delete all pods

kubectl apply -f ./pod.json

 

95 Apply the configuration in pod.json to a pod

kubectl apply -k dir/

 

96 Apply resources from a directory containing kustomization.yaml - e.g. dir/kustomization.yaml

cat pod.json | kubectl apply -f -

 

97 Apply the JSON passed into stdin to a pod

kubectl apply --prune -f manifest.yaml -l app=nginx

 

98 Note: --prune is still in Alpha # Apply the configuration in manifest.yaml that matches label app=nginx and delete all other resources that are not in the file and match label app=nginx

kubectl apply --prune -f manifest.yaml --all --prune-whitelist=core/v1/ConfigMap

 

99 Apply the configuration in manifest.yaml and delete all the other config maps that are not in the file

kubectl apply edit-last-applied deployment/nginx

 

100 Edit the last-applied-configuration annotations by type/name in YAML

kubectl apply edit-last-applied -f deploy.yaml -o json

 

101 Edit the last-applied-configuration annotations by file in JSON

kubectl apply set-last-applied -f deploy.yaml

 

102 Set the last-applied-configuration of a resource to match the contents of a file

kubectl apply set-last-applied -f path/

 

103 Execute set-last-applied against each configuration file in a directory

kubectl apply set-last-applied -f deploy.yaml --create-annotation=true

 

104 Set the last-applied-configuration of a resource to match the contents of a file; will create the annotation if it does not already exist

kubectl apply view-last-applied deployment/nginx

 

105 View the last-applied-configuration annotations by type/name in YAML

kubectl apply view-last-applied -f deploy.yaml -o json

 

106 View the last-applied-configuration annotations by file in JSON

kubectl annotate pods foo description='my frontend'

 

107 Update pod 'foo' with the annotation 'description' and the value 'my frontend' # If the same annotation is set multiple times, only the last value will be applied

kubectl annotate -f pod.json description='my frontend'

 

108 Update a pod identified by type and name in "pod.json"

kubectl annotate --overwrite pods foo description='my frontend running nginx'

 

109 Update pod 'foo' with the annotation 'description' and the value 'my frontend running nginx', overwriting any existing value

kubectl annotate pods --all description='my frontend running nginx'

 

110 Update all pods in the namespace

kubectl annotate pods foo description='my frontend running nginx' --resource-version=1

 

111 Update pod 'foo' only if the resource is unchanged from version 1

kubectl annotate pods foo description-

 

112 Update pod 'foo' by removing an annotation named 'description' if it exists # Does not require the --overwrite flag

kubectl autoscale deployment foo --min=2 --max=10

 

113 Auto scale a deployment "foo", with the number of pods between 2 and 10, no target CPU utilization specified so a default autoscaling policy will be used

kubectl autoscale rc foo --max=5 --cpu-percent=80

 

114 Auto scale a replication controller "foo", with the number of pods between 1 and 5, target CPU utilization at 80%

kubectl debug mypod -it --image=busybox

 

115 Create an interactive debugging session in pod mypod and immediately attach to it. # (requires the EphemeralContainers feature to be enabled in the cluster)

kubectl debug --image=myproj/debug-tools -c debugger mypod

 

116 Create a debug container named debugger using a custom automated debugging image. # (requires the EphemeralContainers feature to be enabled in the cluster)

kubectl debug mypod -it --image=busybox --copy-to=my-debugger

 

117 Create a copy of mypod adding a debug container and attach to it

kubectl debug mypod -it --copy-to=my-debugger --container=mycontainer -- sh

 

118 Create a copy of mypod changing the command of mycontainer

kubectl debug mypod --copy-to=my-debugger --set-image=*=busybox

 

119 Create a copy of mypod changing all container images to busybox

kubectl debug mypod -it --copy-to=my-debugger --image=debian --set-image=app=app:debug,sidecar=sidecar:debug

 

120 Create a copy of mypod adding a debug container and changing container images

kubectl debug node/mynode -it --image=busybox

 

121 Create an interactive debugging session on a node and immediately attach to it. # The container will run in the host namespaces and the host's filesystem will be mounted at /host

kubectl diff -f pod.json

 

122 Diff resources included in pod.json

cat service.yaml | kubectl diff -f -

 

123 Diff file read from stdin

kubectl edit svc/docker-registry

 

124 Edit the service named 'docker-registry'

KUBE_EDITOR="nano" kubectl edit svc/docker-registry

 

125 Use an alternative editor

kubectl edit job.v1.batch/myjob -o json

 

126 Edit the job 'myjob' in JSON using the v1 API format

kubectl edit deployment/mydeployment -o yaml --save-config

 

127 Edit the deployment 'mydeployment' in YAML and save the modified config in its annotation

kubectl kustomize

 

128 Build the current working directory

kubectl kustomize /home/config/production

 

129 Build some shared configuration directory

kubectl kustomize https://github.com/kubernetes-sigs/kustomize.git/examples/helloWorld?ref=v1.0.6

 

130 Build from github

kubectl label pods foo unhealthy=true

 

131 Update pod 'foo' with the label 'unhealthy' and the value 'true'

kubectl label --overwrite pods foo status=unhealthy

 

132 Update pod 'foo' with the label 'status' and the value 'unhealthy', overwriting any existing value

kubectl label pods --all status=unhealthy

 

133 Update all pods in the namespace

kubectl label -f pod.json status=unhealthy

 

134 Update a pod identified by the type and name in "pod.json"

kubectl label pods foo status=unhealthy --resource-version=1

 

135 Update pod 'foo' only if the resource is unchanged from version 1

kubectl label pods foo bar-

 

136 Update pod 'foo' by removing a label named 'bar' if it exists # Does not require the --overwrite flag

kubectl patch node k8s-node-1 -p '{"spec":{"unschedulable":true}}'

 

137 Partially update a node using a strategic merge patch, specifying the patch as JSON

kubectl patch node k8s-node-1 -p $'spec:\n unschedulable: true'

 

138 Partially update a node using a strategic merge patch, specifying the patch as YAML

kubectl patch -f node.json -p '{"spec":{"unschedulable":true}}'

 

139 Partially update a node identified by the type and name specified in "node.json" using strategic merge patch

kubectl patch pod valid-pod -p '{"spec":{"containers":[{"name":"kubernetes-serve-hostname","image":"new image"}]}}'

 

140 Update a container's image; spec.containers[*].name is required because it's a merge key

kubectl patch pod valid-pod --type='json' -p='[{"op": "replace", "path": "/spec/containers/0/image", "value":"new image"}]'

 

141 Update a container's image using a JSON patch with positional arrays

kubectl replace -f ./pod.json

 

142 Replace a pod using the data in pod.json

cat pod.json | kubectl replace -f -

 

143 Replace a pod based on the JSON passed into stdin

kubectl get pod mypod -o yaml | sed 's/\(image: myimage\):.*$/\1:v4/' | kubectl replace -f -

 

144 Update a single-container pod's image version (tag) to v4

kubectl replace --force -f ./pod.json

 

145 Force replace, delete and then re-create the resource

kubectl rollout undo deployment/abc

 

146 Rollback to the previous deployment

kubectl rollout status daemonset/foo

 

147 Check the rollout status of a daemonset

kubectl rollout history deployment/abc

 
148 View the rollout history of a deployment

kubectl rollout history daemonset/abc --revision=3

 

149 View the details of daemonset revision 3

kubectl rollout pause deployment/nginx

 

150 Mark the nginx deployment as paused # Any current state of the deployment will continue its function; new updates # to the deployment will not have an effect as long as the deployment is paused

kubectl rollout restart deployment/nginx

 

151 Restart a deployment

kubectl rollout restart daemonset/abc

 

152 Restart a daemon set

kubectl rollout resume deployment/nginx

 

153 Resume an already paused deployment

kubectl rollout status deployment/nginx

 

154 Watch the rollout status of a deployment

kubectl rollout undo deployment/abc

 

155 Roll back to the previous deployment

kubectl rollout undo daemonset/abc --to-revision=3

 

156 Roll back to daemonset revision 3

kubectl rollout undo --dry-run=server deployment/abc

 

157 Roll back to the previous deployment with dry-run

kubectl scale --replicas=3 rs/foo

 

158 Scale a replica set named 'foo' to 3

kubectl scale --replicas=3 -f foo.yaml

 

159 Scale a resource identified by type and name specified in "foo.yaml" to 3

kubectl scale --current-replicas=2 --replicas=3 deployment/mysql

 

160 If the deployment named mysql's current size is 2, scale mysql to 3

kubectl scale --replicas=5 rc/foo rc/bar rc/baz

 

161 Scale multiple replication controllers

kubectl scale --replicas=3 statefulset/web

 

162 Scale stateful set named 'web' to 3

kubectl set env deployment/registry STORAGE_DIR=/local

 

163 Update deployment 'registry' with a new environment variable

kubectl set env deployment/sample-build --list

 

164 List the environment variables defined on a deployments 'sample-build'

kubectl set env pods --all --list

 

165 List the environment variables defined on all pods

kubectl set env deployment/sample-build STORAGE_DIR=/data -o yaml

 

166 Output modified deployment in YAML, and does not alter the object on the server

kubectl set env rc --all ENV=prod

 

167 Update all containers in all replication controllers in the project to have ENV=prod

kubectl set env --from=secret/mysecret deployment/myapp

 

168 Import environment from a secret

kubectl set env --from=configmap/myconfigmap --prefix=MYSQL_ deployment/myapp

 

169 Import environment from a config map with a prefix

kubectl set env --keys=my-example-key --from=configmap/myconfigmap deployment/myapp

 

170 Import specific keys from a config map

kubectl set env deployments --all --containers="c1" ENV-

 

171 Remove the environment variable ENV from container 'c1' in all deployment configs

kubectl set env -f deploy.json ENV-

 

172 Remove the environment variable ENV from a deployment definition on disk and # update the deployment config on the server

env | grep RAILS_ | kubectl set env -e - deployment/registry

 

173 Set some of the local shell environment into a deployment config on the server

kubectl set image deployment/nginx busybox=busybox nginx=nginx:1.9.1

 

174 Set a deployment's nginx container image to 'nginx:1.9.1', and its busybox container image to 'busybox'

kubectl set image deployments,rc nginx=nginx:1.9.1 --all

 

175 Update all deployments' and rc's nginx container's image to 'nginx:1.9.1'

kubectl set image daemonset abc *=nginx:1.9.1

 

176 Update image of all containers of daemonset abc to 'nginx:1.9.1'

kubectl set image -f path/to/file.yaml nginx=nginx:1.9.1 --local -o yaml

 

177 Print result (in yaml format) of updating nginx container image from local file, without hitting the server

kubectl set resources deployment nginx -c=nginx --limits=cpu=200m,memory=512Mi

 

178 Set a deployments nginx container cpu limits to "200m" and memory to "512Mi"

kubectl set resources deployment nginx --limits=cpu=200m,memory=512Mi --requests=cpu=100m,memory=256Mi

 

179 Set the resource request and limits for all containers in nginx

kubectl set resources deployment nginx --limits=cpu=0,memory=0 --requests=cpu=0,memory=0

 

180 Remove the resource requests for resources on containers in nginx

kubectl set resources -f path/to/file.yaml --limits=cpu=200m,memory=512Mi --local -o yaml

 

181 Print the result (in yaml format) of updating nginx container limits from a local, without hitting the server

kubectl create service clusterip my-svc --clusterip="None" -o yaml --dry-run=client | kubectl set selector --local -f - 'environment=qa' -o yaml | kubectl create -f -

 

182 Set the labels and selector before creating a deployment/service pair

kubectl create deployment my-dep -o yaml --dry-run=client | kubectl label --local -f - environment=qa -o yaml | kubectl create -f -

 

183 Set deployment nginx-deployment's service account to serviceaccount1

kubectl set serviceaccount deployment nginx-deployment serviceaccount1

 

184 Print the result (in YAML format) of updated nginx deployment with the service account from local file, without hitting the API server

kubectl set sa -f nginx-deployment.yaml serviceaccount1 --local --dry-run=client -o yaml

 

185 Update a cluster role binding for serviceaccount1

kubectl set subject clusterrolebinding admin --serviceaccount=namespace:serviceaccount1

 

186 Update a role binding for user1, user2, and group1

kubectl set subject rolebinding admin --user=user1 --user=user2 --group=group1

 

187 Print the result (in YAML format) of updating rolebinding subjects from a local, without hitting the server

kubectl create rolebinding admin --role=admin --user=admin -o yaml --dry-run=client | kubectl set subject --local -f - --user=foo -o yaml

 

188 Wait for the pod "busybox1" to contain the status condition of type "Ready"

kubectl wait --for=condition=Ready pod/busybox1

 

189 The default value of status condition is true; you can set it to false

kubectl wait --for=condition=Ready=false pod/busybox1

 

190 Wait for the pod "busybox1" to be deleted, with a timeout of 60s, after having issued the "delete" command

kubectl delete pod/busybox1   kubectl wait --for=delete pod/busybox1 --timeout=60s

 

191 Get output from running pod mypod; use the 'kubectl.kubernetes.io/default-container' annotation # for selecting the container to be attached or the first container in the pod will be chosen

kubectl attach mypod

 

192 Get output from ruby-container from pod mypod

kubectl attach mypod -c ruby-container

 

193 Switch to raw terminal mode; sends stdin to 'bash' in ruby-container from pod mypod # and sends stdout/stderr from 'bash' back to the client

kubectl attach mypod -c ruby-container -i -t

 

194 Get output from the first pod of a replica set named nginx

kubectl attach rs/nginx

 

195 Check to see if I can create pods in any namespace

kubectl auth can-i create pods --all-namespaces

 

196 Check to see if I can list deployments in my current namespace

kubectl auth can-i list deployments.apps

 

197 Check to see if I can do everything in my current namespace ("*" means all)

kubectl auth can-i '*' '*'

 

198 Check to see if I can get the job named "bar" in namespace "foo"

kubectl auth can-i list jobs.batch/bar -n foo

 

199 Check to see if I can read pod logs

kubectl auth can-i get pods --subresource=log

 

200 Check to see if I can access the URL /logs/

kubectl auth can-i get /logs/

 

201 List all allowed actions in namespace "foo"

kubectl auth can-i --list --namespace=foo

 

202 Reconcile RBAC resources from a file

kubectl auth reconcile -f my-rbac-rules.yaml

 

203 !!!Important Note!!! # Requires that the 'tar' binary is present in your container # image.  If 'tar' is not present, 'kubectl cp' will fail. # # For advanced use cases, such as symlinks, wildcard expansion or # file mode preservation, consider using 'kubectl exec'. # Copy /tmp/foo local file to /tmp/bar in a remote pod in namespace 

tar cf - /tmp/foo | kubectl exec -i -n <some-namespace> <some-pod> -- tar xf - -C /tmp/bar

 

204 Copy /tmp/foo from a remote pod to /tmp/bar locally

kubectl exec -n <some-namespace> <some-pod> -- tar cf - /tmp/foo | tar xf - -C /tmp/bar

 

205 Copy /tmp/foo_dir local directory to /tmp/bar_dir in a remote pod in the default namespace

kubectl cp /tmp/foo_dir <some-pod>:/tmp/bar_dir

 

206 Copy /tmp/foo local file to /tmp/bar in a remote pod in a specific container

kubectl cp /tmp/foo <some-pod>:/tmp/bar -c <specific-container>

 

207 Copy /tmp/foo local file to /tmp/bar in a remote pod in namespace 

kubectl cp /tmp/foo <some-namespace>/<some-pod>:/tmp/bar

 

208 Copy /tmp/foo from a remote pod to /tmp/bar locally

kubectl cp <some-namespace>/<some-pod>:/tmp/foo /tmp/bar

 

209 Describe a node

kubectl describe nodes kubernetes-node-emt8.c.myproject.internal

 

210 Describe a pod

kubectl describe pods/nginx

 

211 Describe a pod identified by type and name in "pod.json"

kubectl describe -f pod.json

 

212 Describe all pods

kubectl describe pods

 

213 Describe pods by label name=myLabel

kubectl describe po -l name=myLabel

 

214 Describe all pods managed by the 'frontend' replication controller (rc-created pods # get the name of the rc as a prefix in the pod the name)

kubectl describe pods frontend

 

215 Get output from running the 'date' command from pod mypod, using the first container by default

kubectl exec mypod -- date

 

216 Get output from running the 'date' command in ruby-container from pod mypod

kubectl exec mypod -c ruby-container -- date

 

217 Switch to raw terminal mode; sends stdin to 'bash' in ruby-container from pod mypod # and sends stdout/stderr from 'bash' back to the client

kubectl exec mypod -c ruby-container -i -t -- bash -il

 

218 List contents of /usr from the first container of pod mypod and sort by modification time # If the command you want to execute in the pod has any flags in common (e.g. -i), # you must use two dashes (--) to separate your command's flags/arguments # Also note, do not surround your command and its flags/arguments with quotes # unless that is how you would execute it normally (i.e., do ls -t /usr, not "ls -t /usr")

kubectl exec mypod -i -t -- ls -t /usr

 

219 Get output from running 'date' command from the first pod of the deployment mydeployment, using the first container by default

kubectl exec deploy/mydeployment -- date

 

220 Get output from running 'date' command from the first pod of the service myservice, using the first container by default

kubectl exec svc/myservice -- date

 

221 Return snapshot logs from pod nginx with only one container

kubectl logs nginx

 

222 Return snapshot logs from pod nginx with multi containers

kubectl logs nginx --all-containers=true

 

223 Return snapshot logs from all containers in pods defined by label app=nginx

kubectl logs -l app=nginx --all-containers=true

 

224 Return snapshot of previous terminated ruby container logs from pod web-1

kubectl logs -p -c ruby web-1

 

225 Begin streaming the logs of the ruby container in pod web-1

kubectl logs -f -c ruby web-1

 

226 Begin streaming the logs from all containers in pods defined by label app=nginx

kubectl logs -f -l app=nginx --all-containers=true

 

227 Display only the most recent 20 lines of output in pod nginx

kubectl logs --tail=20 nginx

 

228 Show all logs from pod nginx written in the last hour

kubectl logs --since=1h nginx

 

229 Show logs from a kubelet with an expired serving certificate

kubectl logs --insecure-skip-tls-verify-backend nginx

 

230 Return snapshot logs from first container of a job named hello

kubectl logs job/hello

 

231 Return snapshot logs from container nginx-1 of a deployment named nginx

kubectl logs deployment/nginx -c nginx-1

 

232 Listen on ports 5000 and 6000 locally, forwarding data to/from ports 5000 and 6000 in the pod

kubectl port-forward pod/mypod 5000 6000

 

233 Listen on ports 5000 and 6000 locally, forwarding data to/from ports 5000 and 6000 in a pod selected by the deployment

kubectl port-forward deployment/mydeployment 5000 6000

 

234 Listen on port 8443 locally, forwarding to the targetPort of the service's port named "https" in a pod selected by the service

kubectl port-forward service/myservice 8443:https

 

235 Listen on port 8888 locally, forwarding to 5000 in the pod

kubectl port-forward pod/mypod 8888:5000

 

236 Listen on port 8888 on all addresses, forwarding to 5000 in the pod

kubectl port-forward --address 0.0.0.0 pod/mypod 8888:5000

 

237 Listen on port 8888 on localhost and selected IP, forwarding to 5000 in the pod

kubectl port-forward --address localhost,10.19.21.23 pod/mypod 8888:5000

 

238 Listen on a random port locally, forwarding to 5000 in the pod

kubectl port-forward pod/mypod :5000

 

239 To proxy all of the Kubernetes API and nothing else

kubectl proxy --api-prefix=/

 

240 To proxy only part of the Kubernetes API and also some static files # You can get pods info with 'curl localhost:8001/api/v1/pods'

kubectl proxy --www=/my/files --www-prefix=/static/ --api-prefix=/api/

 

241 To proxy the entire Kubernetes API at a different root # You can get pods info with 'curl localhost:8001/custom/api/v1/pods'

kubectl proxy --api-prefix=/custom/

 

242 Run a proxy to the Kubernetes API server on port 8011, serving static content from ./local/www/

kubectl proxy --port=8011 --www=./local/www/

 

243 Run a proxy to the Kubernetes API server on an arbitrary local port # The chosen port for the server will be output to stdout

kubectl proxy --port=0

 

244 Run a proxy to the Kubernetes API server, changing the API prefix to k8s-api # This makes e.g. the pods API available at localhost:8001/k8s-api/v1/pods/

kubectl proxy --api-prefix=/k8s-api

 

245 Show metrics for all nodes

kubectl top node

 

246 Show metrics for a given node

kubectl top node NODE_NAME

 

247 Show metrics for all pods in the default namespace

kubectl top pod

 

248 Show metrics for all pods in the given namespace

kubectl top pod --namespace=NAMESPACE

 

249 Show metrics for a given pod and its containers

kubectl top pod POD_NAME --containers

 

250 Show metrics for the pods defined by label name=myLabel

kubectl top pod -l name=myLabel

 

251 Print the supported API versions

kubectl api-versions

 

252 Approve CSR 'csr-sqgzp'

kubectl certificate approve csr-sqgzp

 

253 Deny CSR 'csr-sqgzp'

kubectl certificate deny csr-sqgzp

 

254 Print the address of the control plane and cluster services

kubectl cluster-info

 

255 Dump current cluster state to stdout

kubectl cluster-info dump

 

256 Dump current cluster state to /path/to/cluster-state

kubectl cluster-info dump --output-directory=/path/to/cluster-state

 

257 Dump all namespaces to stdout

kubectl cluster-info dump --all-namespaces

 

258 Dump a set of namespaces to /path/to/cluster-state

kubectl cluster-info dump --namespaces default,kube-system --output-directory=/path/to/cluster-state

 

259 Mark node "foo" as unschedulable

kubectl cordon foo

 

260 Drain node "foo", even if there are pods not managed by a replication controller, replica set, job, daemon set or stateful set on it

kubectl drain foo --force

 

261 As above, but abort if there are pods not managed by a replication controller, replica set, job, daemon set or stateful set, and use a grace period of 15 minutes

kubectl drain foo --grace-period=900

 

262 Update node 'foo' with a taint with key 'dedicated' and value 'special-user' and effect 'NoSchedule' # If a taint with that key and effect already exists, its value is replaced as specified

kubectl taint nodes foo dedicated=special-user:NoSchedule

 

263 Remove from node 'foo' the taint with key 'dedicated' and effect 'NoSchedule' if one exists

kubectl taint nodes foo dedicated:NoSchedule-

 

264 Remove from node 'foo' all the taints with key 'dedicated'

kubectl taint nodes foo dedicated-

 

265 Add a taint with key 'dedicated' on nodes having label mylabel=X

kubectl taint node -l myLabel=X  dedicated=foo:PreferNoSchedule

 

266 Add to node 'foo' a taint with key 'bar' and no value

kubectl taint nodes foo bar:NoSchedule

 

267 Mark node "foo" as schedulable

kubectl uncordon foo

 

268 Print the supported API resources

kubectl api-resources

 

269 Print the supported API resources with more information

kubectl api-resources -o wide

 

270 Print the supported API resources sorted by a column

kubectl api-resources --sort-by=name

 

271 Print the supported namespaced resources

kubectl api-resources --namespaced=true

 

272 Print the supported non-namespaced resources

kubectl api-resources --namespaced=false

 

273 Print the supported API resources with a specific APIGroup

kubectl api-resources --api-group=extensions

 

274 Installing bash completion on macOS using homebrew ## If running Bash 3.2 included with macOS

brew install bash-completion

 

275 or, if running Bash 4.1+

brew install bash-completion@2

 

276 If kubectl is installed via homebrew, this should start working immediately ## If you've installed via other means, you may need add the completion to your completion directory

kubectl completion bash > $(brew --prefix)/etc/bash_completion.d/kubectl

 

277 Installing bash completion on Linux ## If bash-completion is not installed on Linux, install the 'bash-completion' package ## via your distribution's package manager. ## Load the kubectl completion code for bash into the current shell

source <(kubectl completion bash)

 

278 Write bash completion code to a file and source it from .bash_profile

kubectl completion bash > ~/.kube/completion.bash.inc  printf "

 

279 Kubectl shell completion

source '$HOME/.kube/completion.bash.inc'  " >> $HOME/.bash_profile  source $HOME/.bash_profile

 

280 Load the kubectl completion code for zsh[1] into the current shell

source <(kubectl completion zsh)

 

281 Set the kubectl completion code for zsh[1] to autoload on startup

kubectl completion zsh > "${fpath[1]}/_kubectl"

 

282 Display the current-context

kubectl config current-context

 

283 Delete the minikube cluster

kubectl config delete-cluster minikube

 

284 Delete the context for the minikube cluster

kubectl config delete-context minikube

 

285 Delete the minikube user

kubectl config delete-user minikube

 

286 List the clusters that kubectl knows about

kubectl config get-clusters

 

287 List all the contexts in your kubeconfig file

kubectl config get-contexts

 

288 Describe one context in your kubeconfig file

kubectl config get-contexts my-context

 

289 List the users that kubectl knows about

kubectl config get-users

 

290 Rename the context 'old-name' to 'new-name' in your kubeconfig file

kubectl config rename-context old-name new-name

 

291 Set the server field on the my-cluster cluster to https://1.2.3.4

kubectl config set clusters.my-cluster.server https://1.2.3.4

 

292 Set the certificate-authority-data field on the my-cluster cluster

kubectl config set clusters.my-cluster.certificate-authority-data $(echo "cert_data_here" | base64 -i -)

 

293 Set the cluster field in the my-context context to my-cluster

kubectl config set contexts.my-context.cluster my-cluster

 

294 Set the client-key-data field in the cluster-admin user using --set-raw-bytes option

kubectl config set users.cluster-admin.client-key-data cert_data_here --set-raw-bytes=true

 

295 Set only the server field on the e2e cluster entry without touching other values

kubectl config set-cluster e2e --server=https://1.2.3.4

 

296 Embed certificate authority data for the e2e cluster entry

kubectl config set-cluster e2e --embed-certs --certificate-authority=~/.kube/e2e/kubernetes.ca.crt

 

297 Disable cert checking for the dev cluster entry

kubectl config set-cluster e2e --insecure-skip-tls-verify=true

 

298 Set custom TLS server name to use for validation for the e2e cluster entry

kubectl config set-cluster e2e --tls-server-name=my-cluster-name

 

299 Set the user field on the gce context entry without touching other values

kubectl config set-context gce --user=cluster-admin

 

300 Set only the "client-key" field on the "cluster-admin" # entry, without touching other values

kubectl config set-credentials cluster-admin --client-key=~/.kube/admin.key

 

301 Set basic auth for the "cluster-admin" entry

kubectl config set-credentials cluster-admin --username=admin --password=uXFGweU9l35qcif

 

302 Embed client certificate data in the "cluster-admin" entry

kubectl config set-credentials cluster-admin --client-certificate=~/.kube/admin.crt --embed-certs=true

 

303 Enable the Google Compute Platform auth provider for the "cluster-admin" entry

kubectl config set-credentials cluster-admin --auth-provider=gcp

 

304 Enable the OpenID Connect auth provider for the "cluster-admin" entry with additional args

kubectl config set-credentials cluster-admin --auth-provider=oidc --auth-provider-arg=client-id=foo --auth-provider-arg=client-secret=bar

 

305 Remove the "client-secret" config value for the OpenID Connect auth provider for the "cluster-admin" entry

kubectl config set-credentials cluster-admin --auth-provider=oidc --auth-provider-arg=client-secret-

 

306 Enable new exec auth plugin for the "cluster-admin" entry

kubectl config set-credentials cluster-admin --exec-command=/path/to/the/executable --exec-api-version=client.authentication.k8s.io/v1beta1

 

307 Define new exec auth plugin args for the "cluster-admin" entry

kubectl config set-credentials cluster-admin --exec-arg=arg1 --exec-arg=arg2

 

308 Create or update exec auth plugin environment variables for the "cluster-admin" entry

kubectl config set-credentials cluster-admin --exec-env=key1=val1 --exec-env=key2=val2

 

309 Remove exec auth plugin environment variables for the "cluster-admin" entry

kubectl config set-credentials cluster-admin --exec-env=var-to-remove-

 

310 Unset the current-context

kubectl config unset current-context

 

311 Unset namespace in foo context

kubectl config unset contexts.foo.namespace

 

312 Use the context for the minikube cluster

kubectl config use-context minikube

 

313 Show merged kubeconfig settings

kubectl config view

 

314 Show merged kubeconfig settings and raw certificate data

kubectl config view --raw

 

315 Get the password for the e2e user

kubectl config view -o jsonpath='{.users[?(@.name == "e2e")].user.password}'

 

316 Get the documentation of the resource and its fields

kubectl explain pods

 

317 Get the documentation of a specific field of a resource

kubectl explain pods.spec.containers

 

318 Print flags inherited by all commands

kubectl options

 

319 Print the client and server versions for the current context

kubectl version
