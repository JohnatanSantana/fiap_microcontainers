.PHONY: setup-env
setup-env:
	sudo su
	curl -sfL https://get.k3s.io | sh -
	echo K3S_KUBECONFIG_MODE=\"644\" >> /etc/systemd/system/k3s.service.env
	systemctl restart k3s

.PHONY: create-mysql-secret
create-mysql-secret:
	kubectl create secret generic mysql-secrets --from-env-file=./k8s/env-mysql.txt

.PHONY: k8s-apply
k8s-apply:
	kubectl apply -f ./k8s/

.PHONY: k8s-create-all
k8s-create-all:
	setup-env create-mysql-secret kubectl apply -f ./k8s/.*