public with sharing class JSONResponseParser implements IHttpResponseParser {

    public String parseHttpResponse(HttpResponse response) {
        Map<String, Object> objectMap = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
        return JSON.serializePretty(objectMap);
    }
}