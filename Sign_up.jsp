<%-- 
    Document   : Sign_up
    Created on : 26 Mar 2025, 21:55:17
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
            
    </head>
    <body style="background: url('_image/images.jpg');background-size: cover;background-attachment: fixed;backface-visibility:">
        <div class ="container">
            <div class="row">
                <div class ="col m6 offset-m3">
                    <div class ="card">
                        <div class="card-content">
                            <h3 style="margin-top: 10px;" class="center-align">Register here !!</h3>
                            <h5 id="msg" class="center-align"></h5>
                            
                            
                            <div class="form center-align"> 
                                
                                
<!--                                // creating form-->
                                <form action="Register" method="post" id="myform">
                                    
                                    <input type="text" name="user_name" placeholder="Enter user name "/>
                                    <input type="password" name="user_password" placeholder="Enter your password"/>
                                    <input type="email" name="user_email"placeholder="Enter your emial"/>
                                    <button type="submit" class="btn">Submit</button>
                                </form>
                        </div>
                            
                            <div class="loader center-align" style="margin-top: 10px; display: none">
                                <div class="preloader-wrapper big active">
      <div class="spinner-layer spinner-blue">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-red">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-yellow">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-green">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>
    </div>
                                <h5>Please wait...</h5>                  
                                
                                
                            </div>
                    </div>
            </div>
        </div>
        </div>
            <script
  src="https://code.jquery.com/jquery-3.7.1.min.js"
  integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
  crossorigin="anonymous"></script>
  <script>
      $(document).ready(function(){
          // to print any thing on the cpnsole  we use console.log()
            console.log("page is reaady..")  
            $("#myform").on('submit',function(event){
//               iska kaam hai hia ki jo bhi work by default ho rha hai site ka usko rok diyanjaye  
        event.preventDefault();
                // ye serialize ke pass data servlet se ayega 
                var f =$(this).serialize();
                console.log(f);
                $(".loader").show();
                $(".form").hide();
                
                $.ajax({
                    url:"Register",
                    data:f,
                    type:'POST',
                    success: function(data,textStatus,jqXHR){
                        console.log(data);
                        console.log("success...");
                         $(".loader").hide();
                          $(".form").show();
                          if(data.trim()==='done..'){
                              $("#msg").html("Suceesssfully register...")
                              $("#msg").addClass('green-text')
                              $(".form").hide();
                          }else{
                              $("#msg").html("UnSuceesssfully register...")
                               $("#msg").addClass('red-text')
                          }
                    },
                    error: function(jqXHR,textStatus,errorThrown){
                        console.log(data);
                        console.log("error...");
                        $(".loader").hide();
                        $(".form").show();
                        $("#msg").html("UnSuceesssfully register...")
                         $("#msg").addClass('red-text')
                        
                    }
                })
                
            })
          }
      )
  </script>
    </body>
</html>
