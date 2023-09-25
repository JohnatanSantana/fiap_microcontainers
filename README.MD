# Step by Step

# Acessar killerCoda
https://killercoda.com/playgrounds/scenario/ubuntu

# Acessar usuário root
sudo su

# Instalar K3S com kubectl
curl -sfL https://get.k3s.io | sh -

# Habilitar permissão para usuário ubuntu obter configuração de acesso ao K8S
echo K3S_KUBECONFIG_MODE=\"644\" >> /etc/systemd/system/k3s.service.env

# Restart do serviço k3s para carregar nova config
systemctl restart k3s

# Colar repo
git clone https://github.com/JohnatanSantana/fiap_microcontainers.git

# Acessar pasta k8s
cd k8s

# Aplicar 
kubectl -f .

# Acessar lado superior direito 
Traffic / Ports

Vai abrir uma pag web

# To Do
- [ ] PV e PVC
- [ ] Criar Secrets
- [ ] Número de replicas
- [ ] revisar anotations