package steps;

import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Quando;
import definition.Processo;
import support.RESTSupport;

public class CrudProcesso {

	@Dado("^o usuario querer criar um novo processo$")
	public void oUsuarioQuererCriarUmNovoProcesso() {
		Processo.clearFields();
	}

	@E("^o usuario informa a (.*) igual a \"([^\"]*)\"$")
	public void oUsuarioInformaACampoAIgualAValor(String campo, String valor) {
		Processo.addFields(campo, valor);
	}

	@E("^o usuario informa o (.*) igual a \"([^\"]*)\"$")
	public void oUsuarioInformaOCampoAIgualAValor(String campo, String valor) {
		Processo.addFields(campo, valor);
	}

	@Quando("^o usuario clicar no botao salvar$")
	public void oUsuarioClicarNoBotaoSalvar() {
		RESTSupport.executePost(Processo.getEndPoint(), Processo.getFields());
		Processo.setId(RESTSupport.key("id").toString());
	}

	@Dado("^o usuario querer consultar um processo pelo id$")
	public void oUsuarioQuererConsultarUmProcessoPeloId() {
		Processo.clearFields();
	}

	@Quando("^o usuario clicar no botão mostrar$")
	public void oUsuarioClicarNoBotãoMostrar() {
		RESTSupport.executeGet(Processo.getEndPoint() + Processo.getId());
	}

	@E("^o usuario informa o id do processo criado$")
	public void oUsuarioInformaOidDoProcessoCriado() throws Throwable {
		System.out.println("Id do processo criado: " + Processo.getId());
	}

	@Dado("^o usuario querer atualizar um processo pelo id$")
	public void oUsuarioQuererAtualizarUmProcessoPeloId() {
		Processo.clearFields();
	}
	
	@Quando("^o usuario clicar no botão atualizar$")
	public void oUsuarioClicarNoBotaoAtualizar() {
		RESTSupport.executePut(Processo.getEndPoint() + Processo.getId(), Processo.getFields());
	}
	
	@Dado("^o usuario querer excluir um processo pelo id$")
	public void oUsuarioQuererExcluirUmProcessoPeloId() {
		Processo.clearFields();
	}
	
	@Quando("^o usuario clicar no botão excluir$")
	public void oUsuarioClicarNoBotãoExcluir() {
		RESTSupport.executeDelete(Processo.getEndPoint() + Processo.getId());
	}
}
