package steps;

import org.junit.Assert;

import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Entao;
import groovy.json.internal.LazyMap;
import support.RESTSupport;

public class GeneralSteps {

    @Entao("^o usuario deve ver a mensagem \"([^\"]*)\"$")
    public void oUsuarioDeveVerAMensagem(String mensagem) throws Throwable {
        LazyMap messageJson = new LazyMap();
        messageJson.put("salvo com sucesso", 201);
        messageJson.put("sucesso", 200);
        messageJson.put("excluido com sucesso", 204);

        Assert.assertEquals(messageJson.get(mensagem),RESTSupport.getResponseCode());
    }

    @E("^o usuario deve ver o campo (.*) igual a \"([^\"]*)\"$")
	public void oUsuarioDeveVerOCampoIgualA(String campo, String valor) {
		Assert.assertEquals(valor, RESTSupport.key(campo));
	}
    
}
