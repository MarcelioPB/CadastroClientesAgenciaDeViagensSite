Algoritmo "Ag�ncia de Viagens"
Var
   clientes_nome: vetor[1..100] de caractere
   clientes_cpf: vetor[1..100] de caractere

   destinos_nome: vetor[1..100] de caractere
   destinos_local: vetor[1..100] de caractere

   opcao: inteiro
   indice_cliente, indice_destino, i: inteiro

Procedimento CadastroCliente()
Inicio
   indice_cliente <- indice_cliente + 1
   indice_destino <- indice_destino + 1

   Escreva("Digite o nome do cliente: ")
   Leia(clientes_nome[indice_cliente])

   Escreva("Digite o CPF do cliente: ")
   Leia(clientes_cpf[indice_cliente])
   
   Escreva("Digite o seu destino: ")
   Leia(destinos_nome[indice_destino])

   Escreval("Cliente cadastrado com sucesso!")
Fimprocedimento

Procedimento ConsultarCliente()
Var
   cpf_busca: caractere
   encontrado: logico
Inicio
   encontrado <- falso

   Escreva("Digite o CPF do cliente que deseja consultar: ")
   Leia(cpf_busca)

   i <- 1
   Escreval("------ Cliente com esse CPF: ------")
   Enquanto (i <= indice_cliente) Faca
      Se clientes_cpf[i] = cpf_busca Entao
         Escreval("Nome: ", clientes_nome[i])
         Escreval("CPF: ", clientes_cpf[i])
         Escreval("Destino: ", destinos_nome[i])
         encontrado <- verdadeiro
         Interrompa
      FimSe
      i <- i + 1
   FimEnquanto

   Se Nao encontrado Entao
      Escreval("Cliente n�o encontrado.")
   FimSe
Fimprocedimento

Procedimento ConsultarDestino()
Var
   destino_busca: caractere
   encontrado: logico
Inicio
   //encontrado <- falso

   Escreva("Digite o nome do destino que deseja consultar: ")
   Leia(destino_busca)

   i <- 1
   Escreval("------ Clientes deste destino: ------")
   Enquanto (i <= 100) Faca
      Se destinos_nome[i] = destino_busca Entao
         Escreval("Nome: ", clientes_nome[i])
         Escreval("CPF: ", clientes_cpf[i])
         Escreval("Destino: ", destinos_nome[i])
         Escreval("-------------------------------")

         //encontrado <- verdadeiro
         //Interrompa
      FimSe
      i <- i + 1
   FimEnquanto

   Se Nao encontrado Entao
      Escreval("Destino n�o encontrado.")
   FimSe
Fimprocedimento

Inicio
   indice_cliente <- 0
   indice_destino <- 0

   Repita
      Escreval("------ MENU ------")
      Escreval("1 - Cadastrar cliente")
      Escreval("2 - Consultar cliente")
      Escreval("3 - Consultar destino")
      Escreval("0 - Sair")
      Escreva("Escolha uma op��o: ")
      Leia(opcao)

      Escolha opcao
         Caso 1
            CadastroCliente()
         Caso 2
            ConsultarCliente()
         Caso 3
            ConsultarDestino()
         Caso 0
            Escreval("Encerrando o programa...")
      FimEscolha

   Ate opcao = 0
FimAlgoritmo