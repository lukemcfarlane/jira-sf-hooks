public class JIRAIssue {

    public class Comments {
        public String self;
        public String id;
        public Reporter author;
        public String body;
        public Reporter updateAuthor;
        public String created;
        public String updated;
    }

    public class Resolution {
        public String self;
        public String id;
        public String description;
        public String name;
    }

    public class Fields {
        public String summary;
        public Progress progress;
        public Timetracking timetracking;
        public Issuetype issuetype;
        public Votes votes;
        public Resolution resolution;
        public List<FixVersions> fixVersions;
        public String resolutiondate;
        public Integer timespent;
        public Reporter reporter;
        public Object aggregatetimeoriginalestimate;
        public String created;
        public String updated;
        public Object description;
        public Priority priority;
        public Object duedate;
        public List<FixVersions> issuelinks;
        public Watches watches;
        public Worklog worklog;
        public List<FixVersions> subtasks;
        public Status status;
        public List<FixVersions> labels;
        public Integer workratio;
        public Reporter assignee;
        public List<FixVersions> attachment;
        public Integer aggregatetimeestimate;
        public Project project;
        public List<FixVersions> versions;
        public Object environment;
        public Integer timeestimate;
        public Progress aggregateprogress;
        public String lastViewed;
        public List<FixVersions> components;
        public Comment comment;
        public Object timeoriginalestimate;
        public Integer aggregatetimespent;
    }

    public class Comment {
        public Integer startAt;
        public Integer maxResults;
        public Integer total;
        public List<Comments> comments;
    }

    public class Issuetype {
        public String self;
        public String id;
        public String description;
        public String iconUrl;
        public String name;
        public Boolean subtask;
    }

    // public class AvatarUrls {
    //     public String 16x16;
    //     public String 24x24;
    //     public String 32x32;
    //     public String 48x48;
    // }

    public class Timetracking {
        public String remainingEstimate;
        public String timeSpent;
        public Integer remainingEstimateSeconds;
        public Integer timeSpentSeconds;
    }

    public class Worklogs {
        public String self;
        public Reporter author;
        public Reporter updateAuthor;
        public String comment;
        public String created;
        public String updated;
        public String started;
        public String timeSpent;
        public Integer timeSpentSeconds;
        public String id;
    }

    public class Worklog {
        public Integer startAt;
        public Integer maxResults;
        public Integer total;
        public List<Worklogs> worklogs;
    }

    public class Progress {
        public Integer progress;
        public Integer total;
        public Integer percent;
    }

    public class Priority {
        public String self;
        public String iconUrl;
        public String name;
        public String id;
    }

    public class Status {
        public String self;
        public String description;
        public String iconUrl;
        public String name;
        public String id;
    }

    public class Votes {
        public String self;
        public Integer votes;
        public Boolean hasVoted;
    }

    public String expand;
    public String id;
    public String self;
    public String key;
    public Fields fields;

    public class Watches {
        public String self;
        public Integer watchCount;
        public Boolean isWatching;
    }

    public class Project {
        public String self;
        public String id;
        public String key;
        public String name;
        //public AvatarUrls avatarUrls;
    }

    public class FixVersions {
    }

    public class Reporter {
        public String self;
        public String name;
        public String emailAddress;
        // public AvatarUrls avatarUrls;
        public String displayName;
        public Boolean active;
    }

    
    public static JIRAIssue parse(String json) {
        return (JIRAIssue) System.JSON.deserialize(json, JIRAIssue.class);
    }
    
    static testMethod void testParse() {
        String json = '{\"expand\":\"renderedFields,names,schema,transitions,operations,editmeta,changelog\",\"id\":\"10000\",\"self\":\"http://localhost:8080/rest/api/latest/issue/10000\",\"key\":\"JIB-1\",\"fields\":{\"summary\":\"Don\'t know if REST API working on local server\",\"progress\":{\"progress\":1200,\"total\":1200,\"percent\":100},\"timetracking\":{\"remainingEstimate\":\"0m\",\"timeSpent\":\"20m\",\"remainingEstimateSeconds\":0,\"timeSpentSeconds\":1200},\"issuetype\":{\"self\":\"http://localhost:8080/rest/api/2/issuetype/3\",\"id\":\"3\",\"description\":\"A task that needs to be done.\",\"iconUrl\":\"http://localhost:8080/images/icons/issuetypes/task.png\",\"name\":\"Task\",\"subtask\":false},\"votes\":{\"self\":\"http://localhost:8080/rest/api/2/issue/JIB-1/votes\",\"votes\":0,\"hasVoted\":false},\"resolution\":{\"self\":\"http://localhost:8080/rest/api/2/resolution/1\",\"id\":\"1\",\"description\":\"A fix for this issue is checked into the tree and tested.\",\"name\":\"Fixed\"},\"fixVersions\":[],\"resolutiondate\":\"2013-06-09T16:13:17.649+1200\",\"timespent\":1200,\"reporter\":{\"self\":\"http://localhost:8080/rest/api/2/user?username=jhill\",\"name\":\"jhill\",\"emailAddress\":\"james.hill@trineo.co.nz\",\"avatarUrls\":{\"16x16\":\"http://localhost:8080/secure/useravatar?size=xsmall&avatarId=10122\",\"24x24\":\"http://localhost:8080/secure/useravatar?size=small&avatarId=10122\",\"32x32\":\"http://localhost:8080/secure/useravatar?size=medium&avatarId=10122\",\"48x48\":\"http://localhost:8080/secure/useravatar?avatarId=10122\"},\"displayName\":\"James Hill\",\"active\":true},\"aggregatetimeoriginalestimate\":null,\"created\":\"2013-06-09T15:56:13.710+1200\",\"updated\":\"2013-06-09T16:13:27.334+1200\",\"description\":null,\"priority\":{\"self\":\"http://localhost:8080/rest/api/2/priority/1\",\"iconUrl\":\"http://localhost:8080/images/icons/priorities/blocker.png\",\"name\":\"Blocker\",\"id\":\"1\"},\"duedate\":null,\"issuelinks\":[],\"watches\":{\"self\":\"http://localhost:8080/rest/api/2/issue/JIB-1/watchers\",\"watchCount\":1,\"isWatching\":true},\"worklog\":{\"startAt\":0,\"maxResults\":1,\"total\":1,\"worklogs\":[{\"self\":\"http://localhost:8080/rest/api/2/issue/10000/worklog/10000\",\"author\":{\"self\":\"http://localhost:8080/rest/api/2/user?username=jhill\",\"name\":\"jhill\",\"emailAddress\":\"james.hill@trineo.co.nz\",\"avatarUrls\":{\"16x16\":\"http://localhost:8080/secure/useravatar?size=xsmall&avatarId=10122\",\"24x24\":\"http://localhost:8080/secure/useravatar?size=small&avatarId=10122\",\"32x32\":\"http://localhost:8080/secure/useravatar?size=medium&avatarId=10122\",\"48x48\":\"http://localhost:8080/secure/useravatar?avatarId=10122\"},\"displayName\":\"James Hill\",\"active\":true},\"updateAuthor\":{\"self\":\"http://localhost:8080/rest/api/2/user?username=jhill\",\"name\":\"jhill\",\"emailAddress\":\"james.hill@trineo.co.nz\",\"avatarUrls\":{\"16x16\":\"http://localhost:8080/secure/useravatar?size=xsmall&avatarId=10122\",\"24x24\":\"http://localhost:8080/secure/useravatar?size=small&avatarId=10122\",\"32x32\":\"http://localhost:8080/secure/useravatar?size=medium&avatarId=10122\",\"48x48\":\"http://localhost:8080/secure/useravatar?avatarId=10122\"},\"displayName\":\"James Hill\",\"active\":true},\"comment\":\"Successfully access this issue\'s JSON at http://localhost:8080/rest/api/latest/issue/JIB-1.json\",\"created\":\"2013-06-09T16:13:17.646+1200\",\"updated\":\"2013-06-09T16:13:17.646+1200\",\"started\":\"2013-06-09T16:12:00.000+1200\",\"timeSpent\":\"20m\",\"timeSpentSeconds\":1200,\"id\":\"10000\"}]},\"subtasks\":[],\"status\":{\"self\":\"http://localhost:8080/rest/api/2/status/6\",\"description\":\"The issue is considered finished, the resolution is correct. Issues which are closed can be reopened.\",\"iconUrl\":\"http://localhost:8080/images/icons/statuses/closed.png\",\"name\":\"Closed\",\"id\":\"6\"},\"labels\":[],\"workratio\":-1,\"assignee\":{\"self\":\"http://localhost:8080/rest/api/2/user?username=jhill\",\"name\":\"jhill\",\"emailAddress\":\"james.hill@trineo.co.nz\",\"avatarUrls\":{\"16x16\":\"http://localhost:8080/secure/useravatar?size=xsmall&avatarId=10122\",\"24x24\":\"http://localhost:8080/secure/useravatar?size=small&avatarId=10122\",\"32x32\":\"http://localhost:8080/secure/useravatar?size=medium&avatarId=10122\",\"48x48\":\"http://localhost:8080/secure/useravatar?avatarId=10122\"},\"displayName\":\"James Hill\",\"active\":true},\"attachment\":[],\"aggregatetimeestimate\":0,\"project\":{\"self\":\"http://localhost:8080/rest/api/2/project/JIB\",\"id\":\"10000\",\"key\":\"JIB\",\"name\":\"Jira-Integration-Bugs\",\"avatarUrls\":{\"16x16\":\"http://localhost:8080/secure/projectavatar?size=xsmall&pid=10000&avatarId=10011\",\"24x24\":\"http://localhost:8080/secure/projectavatar?size=small&pid=10000&avatarId=10011\",\"32x32\":\"http://localhost:8080/secure/projectavatar?size=medium&pid=10000&avatarId=10011\",\"48x48\":\"http://localhost:8080/secure/projectavatar?pid=10000&avatarId=10011\"}},\"versions\":[],\"environment\":null,\"timeestimate\":0,\"aggregateprogress\":{\"progress\":1200,\"total\":1200,\"percent\":100},\"lastViewed\":\"2013-06-09T16:13:27.507+1200\",\"components\":[],\"comment\":{\"startAt\":0,\"maxResults\":1,\"total\":1,\"comments\":[{\"self\":\"http://localhost:8080/rest/api/2/issue/10000/comment/10000\",\"id\":\"10000\",\"author\":{\"self\":\"http://localhost:8080/rest/api/2/user?username=jhill\",\"name\":\"jhill\",\"emailAddress\":\"james.hill@trineo.co.nz\",\"avatarUrls\":{\"16x16\":\"http://localhost:8080/secure/useravatar?size=xsmall&avatarId=10122\",\"24x24\":\"http://localhost:8080/secure/useravatar?size=small&avatarId=10122\",\"32x32\":\"http://localhost:8080/secure/useravatar?size=medium&avatarId=10122\",\"48x48\":\"http://localhost:8080/secure/useravatar?avatarId=10122\"},\"displayName\":\"James Hill\",\"active\":true},\"body\":\"Successfully access this issue\'s JSON at http://localhost:8080/rest/api/latest/issue/JIB-1.json\",\"updateAuthor\":{\"self\":\"http://localhost:8080/rest/api/2/user?username=jhill\",\"name\":\"jhill\",\"emailAddress\":\"james.hill@trineo.co.nz\",\"avatarUrls\":{\"16x16\":\"http://localhost:8080/secure/useravatar?size=xsmall&avatarId=10122\",\"24x24\":\"http://localhost:8080/secure/useravatar?size=small&avatarId=10122\",\"32x32\":\"http://localhost:8080/secure/useravatar?size=medium&avatarId=10122\",\"48x48\":\"http://localhost:8080/secure/useravatar?avatarId=10122\"},\"displayName\":\"James Hill\",\"active\":true},\"created\":\"2013-06-09T16:13:17.662+1200\",\"updated\":\"2013-06-09T16:13:17.662+1200\"}]},\"timeoriginalestimate\":null,\"aggregatetimespent\":1200}}';
        JIRAIssue obj = parse(json);
        System.assert(obj != null);
    }
}