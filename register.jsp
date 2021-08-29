<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TITLE HERE</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
		<link rel="stylesheet" href="css/template.css" type="text/css" media="screen" title="no title" charset="utf-8" />
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js" type="text/javascript"></script>
		<script src="JS/jquery.validationEngine-en.js" type="text/javascript"></script>
		<script src="JS/jquery.validationEngine.js" type="text/javascript"></script>
		
		<!-- AJAX SUCCESS TEST FONCTION	
			<script>function callSuccessFunction(){alert("success executed")}
					function callFailFunction(){alert("fail executed")}
			</script>
		-->
		
		<script>	
		$(document).ready(function() {
			// SUCCESS AJAX CALL, replace "success: false," by:     success : function() { callSuccessFunction() }, 
			
			$("#formID").validationEngine()
			
			
			//$.validationEngine.loadValidation("#date")
			//alert($("#formID").validationEngine({returnIsValid:true}))
			//$.validationEngine.buildPrompt("#date","This is an example","error")	 		 // Exterior prompt build example								 // input prompt close example
			//$.validationEngine.closePrompt(".formError",true) 							// CLOSE ALL OPEN PROMPTS
		});
		
		// JUST AN EXAMPLE OF VALIDATIN CUSTOM FUNCTIONS : funcCall[validate2fields]
		function validate2fields(){
			if($("#firstname").val() =="" || $("#lastname").val() == ""){
				return true;
			}else{
				return false;
			}
		}
	</script>
	<style type="text/css">
	#font
	{
	font-family:verdana;
	font-size:12px;
	font-color:green;
	padding:3px 3px 3px 3px;
	}
	</style>	
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
	   <form id="form1" name="form1" method="post" action="searchengine.jsp">
        <div class="searchbox"> 
          <label> 
          <input name="textfield" type="text" class="searchtextbox" />
          </label>
        </div>
       <div class="searchbox">
         <div align="center"><a href="searchengine.jsp" class="go">go</a></div>
       </div>
	   </form>
     </div>
      <div class="menu_area"><a href="vote.jsp" class="addidea">Vote</a> <a href="lists.jsp" class="loginhere">Lists</a> <a href="buzz.jsp" class="comments">Comments</a> <a href="members.jsp" class="contact">Members</a></div>
   </div>
 </div>
 <div id="body_area">
  <div class="left">
    <div class="morelinks_top"></div>
    <div class="morelinks_area">
      <div class="morelinks_head">Categories</div>
      <div class="links_morearea">
	 <a href="index.html" class="morelink">Home</a><br /><br>
        <a href="lists1.jsp" class="morelink">Lists</a> <br /><br>
        <a href="vote.jsp" class="morelink">Vote</a><br /><br>
        <a href="buzz.jsp" class="morelink">Buzz</a><br /><br>
        <a href="members.jsp" class="morelink">Members</a> <br /><br>
		 <a href="adminlogin.jsp" class="morelink">Admin Login</a> <br /><br>
      </div>
    </div>
    <div class="morelinks_bottom"></div>
  </div>
  <div class="body_area1">
 
    <div class="mid"><br>
	 <div class="tick_head"><span class="tick_head1">New User Register Here</span></div><br><br>
    <div class="wrap">
           <form id="formID" class="formular" method="post" action="insert.jsp">
			<fieldset>
				<legend>User informations</legend>
				<label>
					<span>Desired username : </span>
					<input value="" class="validate[required,custom[noSpecialCaracters],length[0,20]]" type="text" name="user" id="user" />
				</label><br>
				<label>
					<span>First name (optional)</span>
					<input value=""  class="validate[optional,custom[onlyLetter],length[0,100]] text-input" type="text" name="firstname" id="firstname" />
				</label><br>
				<label>
					<span>Last name : </span>
					<input value=""  class="validate[required,custom[onlyLetter],length[0,100],funcCall[validate2fields]] text-input" type="text" id="lastname" name="lastname"  />
				</label><br>
				<div>
					<span><font color="#FF0000">Gender :</font> <br /></span><br>
					
					<input class="validate[required] radio" type="radio" name="data[User][preferedColor]"  id="radio1"  value="5">&nbsp;<font color="#006600">Male</font> 
					
					<input class="validate[required] radio" type="radio" name="data[User][preferedColor]"  id="radio2"  value="3"/>&nbsp;<font color="#006600">Female</font>
					
				</div><br>
				<div>
					<span><font color="#FF0000">Interested In : </font><br /></span><br>
				
					<input class="validate[minCheckbox[2]] checkbox" type="checkbox"  name="data[User3][preferedColor]" id="data[User3][preferedColor]" value="5">&nbsp;<font color="#006600">Java</font>
					
					<input class="validate[minCheckbox[2]] checkbox" type="checkbox" name="data[User3][preferedColor]" id="maxcheck2"  value="3"/>&nbsp;<font color="#006600">Dotnet</font>
				
					<input class="validate[minCheckbox[2]] checkbox" type="checkbox" name="data[User3][preferedColor]" id="maxcheck3"  value="9"/>&nbsp;<font color="#006600">PHP</font>
				</div><br>
				<label>
					<span>Date : (format YYYY-MM-DD)</span>
					<input value="1111-11-11"  class="validate[required,custom[date]] text-input" type="text" name="date"  id="date" />
				</label>
				<br>
				<label>
					<span>Ranking Area 1:</span>
				<select name="sport" class="validate[required]"  id="sport" style="font-family:verdana;" >
					<option value="">Choose a Area</option>
					<option value="option1">JAVA</option>
					<option value="option2">DOTNET</option>
					<option value="option3">PHP</option>
				</select>
				</label>
				<br>
				<label>
					<span>Age : </span>
					<input value=""  class="validate[required,custom[onlyNumber],length[0,3]] text-input" type="text" name="age"  id="age" />
				</label>
					<br>
				<label>
					<span>Telephone : </span>
					<input value=""  class="validate[required,custom[telephone]] text-input" type="text" name="telephone"  id="telephone" />
				</label><br>
			</fieldset>
			<fieldset>
				<legend>Password</legend>
				<label>
					<span>Password : </span>
					<input value=""  class="validate[required,length[6,11]] text-input" type="password" name="password"  id="password" />
				</label>
				<label>
					<span>Confirm password : </span>
					<input value=""  class="validate[required,confirm[password]] text-input" type="password" name="password2"  id="password2" />
				</label>
			</fieldset>
			<fieldset>
				<legend>Email</legend>
				<label>
					<span>Email address : </span>
					<input value=""  class="validate[required,custom[email]] text-input" type="text" name="email" id="email"  />
				</label>
				<label>
					<span>Confirm email address : </span>
					<input value="" class="validate[required,confirm[email]] text-input" type="text" name="email2"  id="email2" />
				</label>
			</fieldset>
			<fieldset>
				<legend>Comments</legend>
				<label>
					<span>Description : </span>

					<textarea value="ced@hotmail.com" class="validate[required,length[6,300]] text-input" name="comments" id="comments" /> </textarea>
				</label>

			</fieldset>
			<fieldset>
				<legend>Conditions</legend>
				<div class="infos">Checking this box indicates that you accept terms of use. If you do not accept these terms, do not use this website : </div>
				<label>
					<span class="checkbox">I accept terms of use : </span>
					<input class="validate[required] checkbox" type="checkbox"  id="agree"  name="agree"/>
				</label>
			</fieldset>
<input class="submit" type="submit" value="Validate & Send the form!" style="font-family:verdana;font-size:12px;color:red;border:1px solid green;"/>
<hr/>
</form>
		  </div>
    </div>
    <div class="right_area">
      <div class="right_top"></div>
      <div class="right_head">
        <div class="morelinks_head">Latest Blogs </div>
      </div>  
      <div class="right_links_area">
        <div class="links_morearea"><a href="index.html" class="morelink">Home</a><br />
        <a href="lists1.jsp" class="morelink">Lists</a> <br />
        <a href="vote.jsp" class="morelink">Vote</a><br />
        <a href="buzz.jsp" class="morelink">Buzz</a><br />
        <a href="members.jsp" class="morelink">Members</a> <br />
        </div>
        <div class="freeregistration">
         <div align="center"><a href="register.jsp" style="text-decoration:none;"><span class="free">Free Registration</span></a></div>
        </div>
      </div>
      <div class="right_bottom"></div>
    </div>
  </div>
 </div>
 
</body>
</html>
