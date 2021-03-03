public with sharing class XMLResponseParser implements IHttpResponseParser {

    public String parseHttpResponse(HttpResponse response) {
        return response.getBodyDocument().toXmlString();
    }
}