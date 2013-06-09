@RestResource(urlMapping='/jira/issue/*') 
global class APIResource_JIRA_Issue {

    @HttpPost
    global static void createIssue() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;

        try {
            //System.debug(req.requestBody.toString());
            JIRAIssue newIssue = JIRAIssue.parse(req.requestBody.toString());
            
            Case newCase = new Case(
                    Origin = 'Web - JIRA',
                    Status = 'New',
                    Subject = newIssue.issue.fields.summary,
                    Description = newIssue.issue.fields.description
                );
            insert newCase;

            res.statusCode = 200;
        }
        catch (Exception e) {
            //System.debug(e.getMessage());
            res.statusCode = 500;
        }
    }
 
    // @IsTest
    // static void test1() {
    //     RestRequest req = new RestRequest();
    //     RestResponse res = new RestResponse();
    //     req.params.put('param1', 'test');
 
    //     RestContext.request = req;
    //     RestContext.response = res;
 
    //     JIRANewIssueHandler.doGet();
    // }
 
}