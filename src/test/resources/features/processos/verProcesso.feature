# language: pt

	@processo
	Funcionalidade: Visualizar processo
		
		Contexto:
			Dado o usuario querer visualizar um processo
			
			Esquema do Cenario: usuario visualizando um processo
				Quando o usuario informa o id "<id>"
				E o usuario clicar no botao mostrar
				Entao o usuario deve ver a mensagem "sucesso"
				E o usuario deve ver o campo vara igual a "<vara>"
		   	E o usuario deve ver o campo numero_processo igual a "<numero_processo>"
		   	E o usuario deve ver o campo natureza igual a "<natureza>"
		   	E o usuario deve ver o campo partes igual a "<partes>"
		   	E o usuario deve ver o campo urgente igual a "<urgente>"
		   	E o usuario deve ver o campo arbitramento igual a "<arbitramento>"
		   	E o usuario deve ver o campo assistente_social igual a "<assistente_social>"
		   	E o usuario deve ver o campo data_entrada igual a "<data_entrada>"
		   	E o usuario deve ver o campo data_saida igual a "<data_saida>"
		   	E o usuario deve ver o campo data_agendamento igual a "<data_agendamento>"
		   	E o usuario deve ver o campo status igual a "<status>"
		   	E o usuario deve ver o campo observacao igual a "<observacao>"
				
				Exemplos:
					| id    | vara                       | numero_processo | natureza    | partes  | urgente | arbitramento | assistente_social | data_entrada | data_saida | data_agendamento | status    | observacao   |
		   		| 2240  | Teste Mateus nao deletar   | 112233          | civil       | nenhum  | N       | N            | Mateus            | 2020-12-08   | 2020-12-10 | 2020-12-09       | Andamento | nenhuma      |
		   		| 2241  | Teste Mateus nao deletar 2 | 4455            | trabalhista | parte2  | N       | N            | Joao              | 2020-11-01   | 2020-11-05 | 2020-11-04       | Parado    | parado teste |
		   		