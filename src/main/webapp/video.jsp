<%-- 
    Document   : video
    Created on : Nov 1, 2015, 11:41:17 AM
    Author     : andy
--%>
<%@page import="java.util.HashMap"%>
<%@page import="com.myflix.myflix.stores.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link href="//vjs.zencdn.net/7.8.2/video-js.min.css" rel="stylesheet">
    <script src="//vjs.zencdn.net/7.8.2/video.min.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><!-- comment -->
 
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
    </body>
</html>
