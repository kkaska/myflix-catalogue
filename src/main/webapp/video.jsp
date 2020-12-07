<%-- 
    Document   : video
    Created on : Nov 1, 2015, 11:41:17 AM
    Author     : andy
--%>
<%@page import="java.util.HashMap"%>
<%@page import="com.myflix.myflix.stores.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
       <link href="//vjs.zencdn.net/7.8.2/video-js.min.css" rel="stylesheet">
    <script src="//vjs.zencdn.net/7.8.2/video.min.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><!-- comment -->
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>myFlix Video</title>
    </head>
    <body>
        <h1>Your video</h1>
        <%
        Video video = (Video) request.getAttribute("Video");
            if (video != null) {
                
                    HashMap<String,String> fields= video.getfields();
                    String server=fields.get("server").replaceAll("\"", "");
                    String name=fields.get("Name").replaceAll("\"", "");
                    String pic=fields.get("pic").replaceAll("\"", "");
                    String file=fields.get("file").replaceAll("\"", "");
                    %>
                    <div id="instructions">

      <video id="my_video_1" class="video-js vjs-default-skin" width="640px" height="267px"
	     controls preload="none" poster='http://104.196.177.101/pics/<%=pic%>'
	     data-setup='{ "aspectRatio":"640:267", "playbackRates": [1, 1.5, 2] }'>
	<source src="http://34.73.114.48/mp4/<%=file%>" type='video/mp4' />
	
      </video>
      </div>
                    <%
            }
           
            
        %>
        <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
