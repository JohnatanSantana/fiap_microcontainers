# Segue o passo a passo para subir o projeto.

Nesse laboratório, iremos criar pods Kubernetes, utilizando o [k3s](https://k3s.io/) da [CNCF](https://www.cncf.io/projects/k3s/) para criação do cluster K8S, através de uma VM Ubuntu Server 20.04. Utilizar um ambiente [Ubuntu 20.04 no Killercoda](https://killercoda.com/playgrounds/scenario/ubuntu). Utilizaremos o programa de linha de comando `kubectl` para administração do cluster.

## 1. Preparação do ambiente para laboratório
Para esse laboratório, precisaremos realizar a instalação do Microk8s no host, que chamaremos de `Node 1`.
```shell
# Acessar usuário root
sudo su
# Instalar K3S com kubectl
curl -sfL https://get.k3s.io | sh -
# Habilitar permissão para usuário ubuntu obter configuração de acesso ao K8S
echo K3S_KUBECONFIG_MODE=\"644\" >> /etc/systemd/system/k3s.service.env
# Restart do serviço k3s para carregar nova config
systemctl restart k3s
```

Verificar se o cluster está funcionando:
```shell
# Logar com usuário ubuntu (caso pedir senha, utilizar `ubuntu`)
su ubuntu
# Obter informações dos nós do cluster K8S
kubectl get nodes
# Observe que possuímos uma única instância de K8S
```

## 2. Clonar repositorio
Todos os arquivos necessários para subir os serviços estão nesse repositorio, então vamos clonar ele dentro do nosso ambiente com seguinte comando:
```shell
git clone https://github.com/JohnatanSantana/fiap_microcontainers.git
```

# Acessando os arquivos
Os arquivos estão na pasta k8s, para encontra-los utilize o seguinte comando:
```shell
cd fiap_microcontainers/k8s
```

## 3. Aplicando as mudanças no kubernets
Execute o comando abaixo para aplicar as alterações de todos os arquivos da pasta k8s
```shell
kubectl apply -f .
```

## 4. Acessar a pagina do Wordpress
Em `Traffic Port Accessor`, acesse porta 8080 seguindo os passos abaixo:


![`Traffic Port Accessor`](https://drive.google.com/uc?export=view&id=1tSf5hICHJFP1ajAfWJ5rYYg_bG58iTYG)

![`Acessando a porta 8080`](https://drive.google.com/uc?export=view&id=1hgAb12rQrumCFxwBhdJ3nQbMgdN_sK_j)

![`Pagina acessada`](https://drive.google.com/uc?export=view&id=1uteNKY0K8y1aUOPZ5NWukBn3KVu25cYh)

## 4. Configure o Wordpress
Após escolher a linguagem, preencha o formulario e instale o Wordpress.

![`Formulario`](https://drive.google.com/uc?export=view&id=1J3KzXBVTz86msNE0xgDMo3U13dVmXMjL)

Avance e faça login com o usuario e senha escolhida.
Na parte superior esquerda, clique no nome do projeto e clique para visitar o site

![`Formulario`](https://drive.google.com/uc?export=view&id=10J-jVZiE58ZppulmojyyC1xg1dkQGJvt)

![`Pagina`](https://drive.google.com/uc?export=view&id=1lpSqSyF36jfjj3entPw_l5ljApjtd-Nc)

# To Do
- [ ] PV e PVC
- [ ] Criar Secrets
- [ ] Número de replicas
- [ ] revisar anotations
