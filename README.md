# README

## Blocmetrics

An analytics service for tracking and reporting website / application events

## Setup

### 1. Sign-up and register your site

Add the name and base URL of your site to the application and click save.
__Note:__ be sure to leave off the trailing __'/'__ in your URL. For example, if your site is __http://coolsite.com/__, just enter __http://coolsite.com__

## Insert this snippet into your website or application's JavaScript file:

This will be the code which enables the tracking of events you define that you want to track.

```
blocmetrics = {};
blocmetrics.report = function(eventName){
  var event = {event: { eventname: eventName }};
  var request = new XMLHttpRequest();
  request.open("POST", "https://b-metrics.herokuapp.com/api/events", true);
  request.setRequestHeader('Content-Type', 'application/json');
  request.send(JSON.stringify(event));
};
```

## Define event(s)

Add `blocmetrics.report('eventName')` to whatever event you want tracked, replacing
`eventName` with your desired action. For example:

```
window.onload = function() {
  blocmetrics.report('view');
};
```

can be added to track when a page is loaded by the user which will be reported as `view`.

You can also add listeners like when a certain link is clicked, or image is loaded. Each event will be tracked however, and wherever, you name it.
