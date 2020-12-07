<%-- 
    Document   : videos
    Created on : Nov 1, 2015, 10:38:29 AM
    Author     : andy
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.myflix.myflix.stores.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://vjs.zencdn.net/4.11/video-js.css" rel="stylesheet">
    <script src="http://vjs.zencdn.net/4.11/video.js"></script>
        <link href="http://vjs.zencdn.net/4.11/video-js.css" rel="stylesheet">
    <script src="http://vjs.zencdn.net/4.11/video.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><!-- comment -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     
    <title>Videos</title>
    </head>
    <body>
         <h1>Your Videos</h1>
         <div class ="videos" style="float: left; border:2px solid #cccccc; padding:10px;font-size:7px; margin: 10px")>
         <%
            LinkedList<Video> lsVideos = (java.util.LinkedList<Video>) request.getAttribute("Videos");
            if (lsVideos != null) {
                for (Video video:lsVideos){
                    HashMap<String,String> fields= video.getfields();
                    String server=fields.get("server").replaceAll("\"", "");
                    String name=fields.get("Name").replaceAll("\"", "");
                    String thumb=fields.get("thumb").replaceAll("\"", "");
                    String suuid=fields.get("uuid").replaceAll("\"", "");
                    String category=fields.get("category").replaceAll("\"", "");
                    %>
                    <h2 class="name"><%=name%></h2>
                    <h3 class="category">Catagory: <%=category%></h3>
                    <a href="/myflix/video/<%=suuid%>">
                    <img src="http://34.73.114.48/pics/<%=thumb%>">
                    </a>
                    <%
                }
            }
            
        %>
         </div><!-- comment -->
         
            <div class ="recommendations" style="float: right; border:2px solid #cccccc; padding:10px;font-size:12px; margin: 10px")>
           <h2>Recommendations</h2>
             <%
             ArrayList<String> recs=(java.util.ArrayList<String>) request.getAttribute("Recomendations");
             if (recs!=null){
                 %><ul><%
             for (String title:recs){
                 %>
                 <li class="category">: <%=title%></li>
                 <%
               }
%></ul><%
             }else{
                  %>
                 <p>N recommendations available<p>
                 <%

             }

             %>
        
         </div>
                <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
