@RestResource(urlMapping='/newjiraissue/*') 
global class JIRANewIssueHandler {
    @HttpGet
    global static void doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        try {
            String param1 = req.params.get('param1');
            res.addHeader('Content-Type', 'application/json');
            String resBody = '{ "param1": ' + param1 + ' }';
            res.responseBody = Blob.valueOf(resBody);
            res.statusCode = 200;
        } catch(Exception e) {
            res.statusCode = 500;
        }
    }
 
    @IsTest
    static void test1() {
        RestRequest req = new RestRequest();
        RestResponse res = new RestResponse();
        req.params.put('param1', 'test');
 
        RestContext.request = req;
        RestContext.response = res;
 
        JIRANewIssueHandler.doGet();
    }
 
}