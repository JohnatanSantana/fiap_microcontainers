.PHONY: install-k3s
install-k3s:
	sudo su
	curl -sfL https://get.k3s.io | sh -
	echo K3S_KUBECONFIG_MODE=\"644\" >> /etc/systemd/system/k3s.service.env
	systemctl restart k3s

.PHONY: validate-setup
validate-setup:
	sudo su
	kubectl get nodes

.PHONY: setup-env
setup-env:
	install-k3s validate-setup

.PHONY: create-mysql-secret
create-mysql-secret:
	kubectl create secret generic mysql-secrets --from-env-file=./k8s/env-mysql.txt

.PHONY: k8s-apply
k8s-apply:
	kubectl apply -f ./k8s/

.PHONY: k8s-create-all
k8s-create-all:
	setup-env create-mysql-secret kubectl apply -f ./k8s/.*