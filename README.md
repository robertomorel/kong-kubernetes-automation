# Kong API Gateway

O Kong Enterprise é a solução de gerenciamento de API mais rápida, com mais recursos avançados e segura criada no Kong Gateway — o gateway de API mais adotado do mundo.

> [Documentação](https://konghq.com/products/kong-gatewa)

## Conceitos

- Rotas
- Services
- Plugins
- Consumers
- Upstreams
- Targets

### Consumers

Quem consome a API

### Rotas

Endereço

- Atua dentro do runtime do Kong
- Proxy
- /api/path

### Plugins

São os comportamentos que gostaríamos de colocar no proxy

### Upstreams

É uma abstração de um backend (service)

- Serve para expor uma API

### Targets

São os endereços atingíveis (IPs) dos upstreams

## Kubernetes Ingress

É a maneira de realizar a exposição de rotas HTTP e HTTPS para fora do cluster. Este roteamento de tráfego é controlado por regras definidas dentro do recurso Ingress do Kubernetes

- Routing rules
- Cada service tem um conjunto de PODs aos quais a ele pertencem
- Ponto de entrada HTTPS para pessoas externas acessem os clusters
- Ex.: Quando vem na rota A, quero que vá para o serviço B

O Kong entende quando chega um objeto Ingress chega e o controller do Kong transforma/traduz e cria as rotas com o Kong Proxy

## Kong API Gateway

### Deploy no Kubernetes

- Banco de Dados (Não recomendado - Statefull)
- DB-Less K8s

## Getting Started

### Ferramentas

- Kind
- Kubeclt
- Helm v3
- Prometheus
  - Implementação de coleta de métricas
- keycloak
  - Implementação certificada de OpenId connect.
  - Especificação que fala sobre como lidar com autenticação, sessão e controle de usuários, token
  - Pode controlar ciclo de vide de usuários e da aplicação

### Instalação

Instalando o Kong com ferramentas Kubernetes. Podemos fazer a instalação de cada entidade do Kong

> Kubernetes apply -f \*\*.yaml -n <contexto>

- Kong Plugin: kratelimit.yaml
- Prometeus: kprometheus.yaml
- Ingress: bets-api.yaml
- OpenID Connect - Keycloak: kopenid.yaml

## APIOps

Princípio para API automatizada. Conceito que aplica os sólidos e testados princípios de DevOps e GitOps para Microserviços

1. Design das APIs

- Modelo para especificação de contrato

2. CI/ CD

- Versionamento
- Pull request
- Validar o contrato

3. Runtime

- Kong API Gateway

### GitOps

Prática que usa a infraestruturra como código, que implica que um determinado ambiente (dev, stg, prod) esteja criado em uma maneira declarativa através de manifestos, e que através de automação seja possível recriar o ambiente de maneira repetitiva.
Os manifestos devem estar armazenados dentro de um repositório git.

#### Ferramentas

- Github Actions: provê o mecanismo para disparar fluxos em determinadas situações
- Spectral: Validar arquivos e contratos. Garantir a conformidade do padrão do contrato.
- Postman: Testes do contrato.
- ArgoCD: GitOps operator. Olha um repo e aplica o estado da Main no cluster

---

## Exemplo

Clique [aqui](https://github.com/robertomorel/bets-app) para ver um exemplo de projeto em Golang para utilização de todas as ferramentas citadas.
