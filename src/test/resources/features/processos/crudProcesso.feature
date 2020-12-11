# language: pt
	
	@processo
	Funcionalidade: Testar as operacoes basicas de processos
		
   	Cenário: Testar a criação de processo
   		Dado o usuario querer criar um novo processo
   		E o usuario informa a vara igual a "vara teste"
   		E o usuario informa o numero_processo igual a "1234"
   		E o usuario informa a natureza igual a "civil"
   		E o usuario informa a partes igual a "parte1"
   		E o usuario informa o urgente igual a "N"
   		E o usuario informa o arbitramento igual a "S"
   		E o usuario informa a assistente_social igual a "Gisele"
   		E o usuario informa a data_entrada igual a "20/10/2020"
   		E o usuario informa a data_saida igual a "30/10/2020"
   		E o usuario informa a data_agendamento igual a "25/10/2020"
   		E o usuario informa o status igual a "Aguardando"
   		E o usuario informa a observacao igual a "Nenhuma"
   		Quando o usuario clicar no botao salvar
   		Entao o usuario deve ver a mensagem "salvo com sucesso"
   	
   	Cenário: Testar busca de processo por id
   		Dado o usuario querer consultar um processo pelo id
   		E o usuario informa o id do processo criado
   		Quando o usuario clicar no botão mostrar
   		Entao o usuario deve ver a mensagem "sucesso"
   		E o usuario deve ver o campo vara igual a "vara teste"
   		E o usuario deve ver o campo numero_processo igual a "1234"
   		E o usuario deve ver o campo natureza igual a "civil"
   		E o usuario deve ver o campo partes igual a "parte1"
   		E o usuario deve ver o campo urgente igual a "N"
   		E o usuario deve ver o campo arbitramento igual a "S"
   		E o usuario deve ver o campo assistente_social igual a "Gisele"
   		E o usuario deve ver o campo data_entrada igual a "2020-10-20"
   		E o usuario deve ver o campo data_saida igual a "2020-10-30"
   		E o usuario deve ver o campo data_agendamento igual a "2020-10-25"
   		E o usuario deve ver o campo status igual a "Aguardando"
   		E o usuario deve ver o campo observacao igual a "Nenhuma"
   	
   	Cenário: Testar atualizacao do processo por id
   		Dado o usuario querer atualizar um processo pelo id
   		E o usuario informa o id do processo criado
			E o usuario informa a vara igual a "vara atualizado"
   		E o usuario informa o numero_processo igual a "123456"
   		E o usuario informa a natureza igual a "civil"
   		E o usuario informa a partes igual a "parte2"
   		E o usuario informa o urgente igual a "S"
   		E o usuario informa o arbitramento igual a "N"
   		E o usuario informa a assistente_social igual a "Antonio"
   		E o usuario informa a data_entrada igual a "21/10/2020"
   		E o usuario informa a data_saida igual a "29/10/2020"
   		E o usuario informa a data_agendamento igual a "24/10/2020"
   		E o usuario informa o status igual a "Andamento"
   		E o usuario informa a observacao igual a "Nenhuma obs"
   		Quando o usuario clicar no botão atualizar
   		Entao o usuario deve ver a mensagem "sucesso"

   	Cenário: Testar exclusao do processo por id
   		Dado o usuario querer excluir um processo pelo id
   		E o usuario informa o id do processo criado
   		Quando o usuario clicar no botão excluir
   		Entao o usuario deve ver a mensagem "excluido com sucesso"
   		