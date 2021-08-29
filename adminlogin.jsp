<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TITLE HERE</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<!-- ..//JQuery Source\\.. -->
<script type="text/javascript" src="JS/jquery-1.4.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
 <script type="text/javascript">
	$(document).ready(function(){
		$("#login_frm").submit(function(){

			 //remove previous class and add new "myinfo" class
	        $("#msgbox").removeClass().addClass('myinfo').text('Validating Your Login ').fadeIn(2000);

			
			this.timer = setTimeout(function () {
				$.ajax({
		          	url: 'check.jsp',
		          	data: 'un='+ $('#login_id').val() +'&pw=' + $('#password').val(),
		          	type: 'post',
		   			success: function(msg){
						if(msg != 'ERROR') // Message Sent, check and redirect
						{				// and direct to the success page
							
							$("#msgbox").html('Login Verified, Logging in.....').addClass('myinfo').fadeTo(900,1,
			                  function()
			                  {
			                     //redirect to secure page
			                     document.location='login.jsp?user='+msg;
			                  });
	
						}
						else
						{
							$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
		                	{
			                  //add message and change the class of the box and start fading
			                  $(this).html('Sorry, Wrong Combination Of Username And Password.').removeClass().addClass('myerror').fadeTo(900,1);
			                });
	
						}
					}
				
				});
			}, 200);
			return false;
 		});		

	});

 </script> 
 	<script language="JavaScript">
javascript:window.history.forward(1);
</script>
</head>

<body>
 <div id="topheader">
   <div class="topmenu_area"><a href="index.html" class="home">Home</a> <a href="userlogin.jsp" class="about">Login</a> <a href="register.jsp" class="search">Register</a> </div>
   <div class="banner_textarea">
     <p class="banner_head">TITLE HERE</p>     
   </div>
   <div class="search_menu_banner">
     <div class="search_background">
       <div class="searchname">Search</div>
       <div class="searchbox">

         <label>
         <input name="textfield" type="text" class="searchtextbox" />
         </label>
       </div>
       <div class="searchbox">
         <div align="center"><a href="#" class="go">go</a></div>
       </div>
     </div>
     <div class="menu_area"><a href="vote.jsp" class="addidea">Vote</a> <a href="lists.jsp" class="loginhere">Lists</a> <a href="buzz.jsp" class="comments">Comments</a> <a href="members.jsp" class="contact">Members</a></div>   </div>
 </div>
 <div id="body_area">
  <div class="left">
    <div class="morelinks_top"></div>
    <div class="morelinks_area">
      <div class="morelinks_head">Categories</div>
      <div class="links_morearea">
	  <a href="index.html" class="morelink">Home</a><br />
        <a href="adminlogin.jsp" class="morelink">Admin Login</a> <br />
        <a href="userlogin.jsp" class="morelink">User login</a><br />
        <a href="register.jsp" class="morelink">Register</a><br />
        <a href="buzz.jsp" class="morelink">blog</a> <br />
        <a href="vote.jsp" class="morelink">Vote</a><br />
		 <a href="lists.jsp" class="morelink">Top Lists</a><br />
      </div>
    </div>
    <div class="morelinks_bottom"></div>
  </div>
  <div class="body_area1">
 
    <div class="mid">
      <div class="tick_head"><span class="tick_head1">Admin Login Here</span></div>
      <form name="login_frm" id="login_frm" action="check.jsp" method="post">
    <div id="login_box">
      <div id="login_header">
            Login
      </div>
      <div id="form_val">
        <div class="label">User Id :</div>
        <div class="control"><input type="text" name="login_id" id="login_id"/>&nbsp;Admin</div>
        
        <div class="label">Password:</div>
        <div class="control"><input type="password" name="password" id="password"/>&nbsp;Admin</div>
        <div style="clear:both;height:0px;"></div>
      
      	<div id="msgbox"></div>
      </div>
      <div id="login_footer">
        <label>
        <input type="submit" name="login" id="login" value="Login" class="send_button" />
        </label>
      </div>
    </div>
</form>
    </div>
    <div class="right_area">
      <div class="right_top"></div>
      <div class="right_head">
        <div class="morelinks_head">Latest Blogs </div>
      </div>  
      <div class="right_links_area">
        <div class="links_morearea"><a href="index.html" class="morelink">Home</a><br />
        <a href="adminlogin.jsp" class="morelink">Admin Login</a> <br />
        <a href="userlogin.jsp" class="morelink">User login</a><br />
        <a href="register.jsp" class="morelink">Register</a><br />
        <a href="buzz.jsp" class="morelink">blog</a> <br />
        </div>
        <div class="freeregistration">
          <div align="center"><span class="free">Free</span> registration</div>
        </div>
      </div>
      <div class="right_bottom"></div>
    </div>
  </div>
 </div>
  <table align="center" width="100%" height="10%">
 <tr>
 <td height="63" align="center" background="images/fotter_bg.jpg"><font style="font-family:verdana;font-size:12px;color:white;">TITLE HERE</font></td>
 </tr>
 </table>
 </body>
</html>
