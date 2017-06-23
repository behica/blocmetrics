# README

## Blocmetrics

- An analytics service for tracking and reporting website / application events

Insert this snippet into your website or application:

```
blocmetrics = {};
blocmetrics.report = function(eventName){
  var event = {event: { eventname: eventName }};
  var request = new XMLHttpRequest();
  request.open("POST", "http://localhost:8080/api/events", true);
  request.setRequestHeader('Content-Type', 'application/json');
  request.send(JSON.stringify(event));
};
```