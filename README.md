# Sabor Local

O **Sabor Local** é um projeto acadêmico desenvolvido com o objetivo de criar
um aplicativo de delivery próprio para um restaurante especializado em comida mineira.

Por meio da aplicação, o usuário poderá criar uma conta, realizar login,
cadastrar seu endereço e realizar pedidos diretamente com o restaurante.

## Tecnologias utilizadas

- FlutterFlow - desenvolvimento do front-end
- Xano - back-end e gerenciamento dos dados
- SendGrid - envio dos códigos de verificação por e-mail
- Trello - organização e gerenciamento das tarefas
- Figma - prototipação das telas

---

## 1. Tela de Login

A primeira tela desenvolvida foi a tela de login.

Nela, o usuário pode informar:

- E-mail
- Senha

Também existe a opção **Cadastre-se**, utilizada por usuários que ainda
não possuem uma conta.

### Interface

![Tela de Login](https://github.com/user-attachments/assets/1a3a4d88-ea18-47c4-9597-3b61ec0d2cfd)

**Figura 1 - Tela de Login desenvolvida no FlutterFlow**

Caso o usuário ainda não possua uma conta, ao selecionar **Cadastre-se**
ele será encaminhado para a tela de cadastro.

---

## 2. Tela de Cadastro

A tela de cadastro é responsável por coletar os dados iniciais do usuário.

São solicitadas as seguintes informações:

- Nome completo
- E-mail
- CPF
- Telefone
- Senha

### Interface

![Tela de Cadastro](https://github.com/user-attachments/assets/6d00a127-658b-4bbc-977d-3a25ea1cf652)

**Figura 2 - Tela de Cadastro de Usuário**

Após preencher os dados e selecionar o botão **Seguir**, o usuário é
encaminhado para a etapa de verificação do e-mail.

---

## 3. Verificação de E-mail

Nesta etapa, o usuário deve informar o código de verificação enviado
para o e-mail cadastrado.

O código é enviado utilizando o **SendGrid**.

### Interface

![Verificação de E-mail](https://github.com/user-attachments/assets/267ae189-37d7-4aea-acd1-01dcac50947b)

### Mensagem Encaminhada
![Verificação de E-mail](https://github.com/user-attachments/assets/f3d88e34-4762-4355-ac27-dc94000fb5af)

**Figura 3 - Tela de Verificação de E-mail**

A tela também permite reenviar o código caso o usuário não tenha recebido
a primeira mensagem.

Após a validação correta do código, o usuário é encaminhado para o
cadastro de endereço.

---

## 4. Cadastro de Endereço

Após a verificação do e-mail, o usuário deve cadastrar seu primeiro endereço.

São solicitadas informações como:

- CEP
- Logradouro
- Número
- Bairro
- Complemento
- Referência

### Interface

![Cadastro de Endereço](https://github.com/user-attachments/assets/97febfb7-8eb1-45f0-8d88-374d266520cd)

**Figura 4 - Tela de Cadastro de Endereço**

Após concluir essa etapa, o usuário possuirá seus dados pessoais,
e-mail verificado e endereço cadastrado.
