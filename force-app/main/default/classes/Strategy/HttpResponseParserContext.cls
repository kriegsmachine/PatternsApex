// Used by client code to set concrete strategy and get needed info according to that strategy
public with sharing class HttpResponseParserContext {
    IHttpResponseParser parser;

    public void setParser(IHttpResponseParser parser) {
        this.parser = parser;
    }

    public String parseHttpResponse(HttpResponse response) {
        return parser.parseHttpResponse(response);
    }
}

/* Example on client side:
IHttpResponseParser parser = new JSONResponseParser();
HttpResponseParserContext context = new HttpResponseParserContext();
context.setParser(parser);
context.parseHttpResponse(HttpResponse);
 */