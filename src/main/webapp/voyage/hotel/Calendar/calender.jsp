<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<link href='fullcalender/fullcalendar.css' rel='stylesheet' />
<script src='fullcalender/fullcalendar.js'></script>

<style>
body {
background:url(http://www.digiphotohub.com/wp-content/uploads/2015/09/bigstock-Abstract-Blurred-Background-Of-92820527.jpg);
}
</style>

<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      defaultDate: '2019-01-31',
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'Long Event',
          start: '2019-01-07',
          end: '2019-01-10'
        },
        {
          title: '沒有空房',
          url: 'http://google.com/',
          start: '2019-02-01'
        },
        {
          title: '沒有空房',
          url: 'http://google.com/',
          start: '2019-02-02'
        },
        {
          title: '沒有空房',
          url: 'http://google.com/',
          start: '2019-02-03'
        },
        {
          title: '現在預定',
          url: 'http://google.com/',
          start: '2019-02-04'
        },
        {
          title: '現在預定',
          url: 'http://google.com/',
          start: '2019-02-05'
        },
        {
          title: '現在預定',
          url: 'http://google.com/',
          start: '2019-02-06'
        },
        {
          title: '沒有空房',
          url: 'http://google.com/',
          start: '2019-02-07'
        },
        {
          title: '沒有空房',
          url: 'http://google.com/',
          start: '2019-02-08'
        },
        {
          title: '沒有空房',
          url: 'http://google.com/',
          start: '2019-02-09'
        },
        {
          title: '沒有空房',
          url: 'http://google.com/',
          start: '2019-02-10'
        },
        
      ]
    });

    calendar.render();
  });

</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    font-size: 20px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>
</head>
<body>

  <div id='calendar' style="background: rgba(255,255,255,70%)"></div>

</body>
</html>
