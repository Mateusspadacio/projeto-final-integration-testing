package definition;

import groovy.json.internal.LazyMap;

public class Processo {

    private static final String URL_PROCESSO = "http://agapito-server.herokuapp.com/processos/";
    private static LazyMap fieldsJson = new LazyMap();
    private static String id;

    public static void addFields(String field, String value) {
        fieldsJson.put(field, value);
    }

    public static void clearFields() {
        fieldsJson.clear();
    }

    public static LazyMap getFields() {
        return fieldsJson;
    }

    public static String getEndPoint() {
        return URL_PROCESSO;
    }
    
    public static String getId() {
    	return id;
    }
    
    public static void setId(String idProcesso) {
    	id = idProcesso;
    }

}
