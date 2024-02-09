```markdown
# Projeto Somos educação

O Somos educação é um projeto de automação de testes desenvolvido para verificar as funcionalidades da aplicação [nome da aplicação]. O objetivo principal deste projeto é garantir a integridade e o funcionamento correto da aplicação em diversas condições.

## Descrição do Projeto

Este projeto utiliza Ruby como linguagem de programação, Cucumber como framework de automação de teste e Capybara para interagir com a interface do usuário. Os testes automatizados abrangem várias funcionalidades da aplicação, incluindo:

- Criar Alunos e Professores
- Gerenciar logins
- Gerenciar Turma

## Instalação
```sh
Para instalar e executar os testes automatizados, siga estas etapas:
1. Clone o repositório: `git clone git@gitlab.com:jonathan.vieira/projeto_vaga.git`
2. Entre no diretório do projeto: `cd meu-projeto`
3. Instale as dependências: `bundle install`
```
## Desenvolvimento

## Contribuição

Se você deseja contribuir para este projeto, por favor, siga estas etapas:

Fork este repositório.
Crie uma nova branch com a sua feature: git checkout -b minha-feature
Faça commit das suas mudanças: git commit -m 'Adicionando uma nova feature'
Envie para o repositório original: git push origin minha-feature
Crie um pull request.

## Exemplos de Uso

Aqui estão alguns exemplos de cenários comuns de uso:

```sh
$ cucumber -p pretty -p uat -p chrome -t@nome_tag  # -t@tag Para rodar um cenário específico.
$ cucumber -p pretty -p dev -p chrome @cucumber    # @cucumber Para rodar todos os testes do projeto.
```

## Benefícios dos Testes Automatizados

Consistência: Os testes automatizados garantem que as funcionalidades da aplicação sejam consistentemente testadas em cada execução.
Eficiência: Automatizar os testes permite uma execução rápida e repetível dos casos de teste, economizando tempo e esforço.
Confiança: Ao verificar automaticamente as funcionalidades da aplicação, os testes automatizados fornecem uma camada adicional de confiança na qualidade do software.
Identificação precoce de problemas: Os testes automatizados ajudam a identificar rapidamente problemas de integração, regressão ou funcionalidade, permitindo correções imediatas.

## Para criar um cenário:

```sh
- Criar o cenário na estrutura `features\gherkins\<SISTEMA>\<FLUXO>`
- Criar os steps na estrutura `features\steps_definitions\<SISTEMA>\<FLUXO>`
- Criar os mapeamentos das páginas na estrutura `features\page_objects\<SISTEMA>\<PÁGINA>`
- Criar a abstração dos page_objects na estrutura `features\support\spec_helper\<SISTEMA>`
```

## Boas práticas:

```sh
- Seguir o Padrão de escrita dos Gherkins
- Dar uma atenção em especial para as tags
- Os cenários devem ser escritos em português e todo o desenvolvimento
- Os steps devem fazer apenas o que se propõem, nada a mais, nada a menos
- Prezar pelo reaproveitamento dos steps
```