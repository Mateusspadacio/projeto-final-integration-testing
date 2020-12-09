package steps;

import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Quando;
import definition.Processo;
import support.RESTSupport;

public class VerProcesso {
	
	@Dado("^o usuario querer visualizar um processo$")
	public void oUsuarioQuererVisualizarUmProcesso() {
	}
	
	@Quando("^o usuario informa o id \"([^\"]*)\"$")
	public void oUsuarioInformaOId(String id) {
		Processo.setId(id);
	}
	
	@E("^o usuario clicar no botao mostrar$")
	public void oUsuarioClicarNoBotaoMostrar() {
		RESTSupport.executeGet(Processo.getEndPoint() + Processo.getId());
	}
	
}
