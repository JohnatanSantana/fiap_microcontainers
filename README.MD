# Segue o passo a passo para subir o projeto.

Nesse laboratório, iremos criar pods Kubernetes, utilizando o [k3s](https://k3s.io/) da [CNCF](https://www.cncf.io/projects/k3s/) para criação do cluster K8S, através de uma VM Ubuntu Server 20.04. Utilizar um ambiente [Ubuntu 20.04 no Killercoda](https://killercoda.com/playgrounds/scenario/ubuntu). Utilizaremos o programa de linha de comando `kubectl` para administração do cluster.

## 1. Clonando o Repositório
Os arquivos necessários para inicializar os serviços estão neste repositório. Vamos cloná-lo:
```shell
git clone https://github.com/JohnatanSantana/fiap_microcontainers.git
cd fiap_microcontainers
```

## 2. Preparação do ambiente para laboratório
Para esse laboratório, precisaremos realizar a instalação do Microk8s no host, que chamaremos de `Node 1`.
```shell
sudo make install-k3s
```

Verificar se o cluster está funcionando:
```shell
# Logar com usuário ubuntu (caso pedir senha, utilizar `ubuntu`)
su ubuntu
# Obter informações dos nós do cluster K8S
kubectl get nodes
# Observe que possuímos uma única instância de K8S
```

## 3. Aplicando Configurações ao Kubernetes
Aplique todas as configurações contidas na pasta k8s:
```shell
make k8s-create-all
```

## 4. Acessar a pagina do Wordpress
Use o Traffic Port Accessor para acessar a porta 8080. Siga as imagens abaixo para visualizar:

<div style="margin-top: 60px;">
<img src="https://drive.google.com/uc?export=view&id=1tSf5hICHJFP1ajAfWJ5rYYg_bG58iTYG" alt="Traffic Port Accessor" style="width: 700px;">
</div>
<div style="margin-top: 20px;">
<img src="https://drive.google.com/uc?export=view&id=1hgAb12rQrumCFxwBhdJ3nQbMgdN_sK_j" alt="Acessando a porta 8080" style="width: 700px;">
</div>
<div style="margin-top: 20px;">
<img src="https://drive.google.com/uc?export=view&id=1uteNKY0K8y1aUOPZ5NWukBn3KVu25cYh" alt="Página do Wordpress" style="width: 700px;">
</div>

## 5. Acessando o Wordpress
Após definir a linguagem desejada, siga as instruções para completar a configuração:

<div style="margin-top: 60px; margin-bottom: 60px;">
<img src="https://drive.google.com/uc?export=view&id=1J3KzXBVTz86msNE0xgDMo3U13dVmXMjL" alt="Formulário do Wordpress" style="width: 700px;">
</div>

Concluída a configuração, faça login com suas credenciais. Na parte superior esquerda, clique no nome do projeto e acesse o site:

<div style="margin-top: 60px;">
<img src="https://drive.google.com/uc?export=view&id=10J-jVZiE58ZppulmojyyC1xg1dkQGJvt" alt="Dashboard do Wordpress" style="width: 700px;">
</div>
<div style="margin-top: 20px;">
<img src="https://drive.google.com/uc?export=view&id=1lpSqSyF36jfjj3entPw_l5ljApjtd-Nc" alt="Página do Wordpress" style="width: 700px;">
</div>

