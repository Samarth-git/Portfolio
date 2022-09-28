<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Portfolio</title>
	    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" />
	    <!--[if IE 7]>
	      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css//font-awesome-ie7.min.css">
	    <![endif]-->
	
	<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/style.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
	<script>
	var result = null;
	function getSign(){
    		var date=document.getElementById("date");
    		if (date.value != "-1" || date.value!= null ){
    			var Dvalue = date.value;
    			var arr = Dvalue.split("-")
				
				
				const Http = new XMLHttpRequest();
				const url="http://localhost:8888/sign?day=" + arr[2] + "&month=" + arr[1];
				    			
    			console.log(url);
				
				Http.open("POST", url);
				Http.send();
				console.log("OK")
				
				Http.onreadystatechange = (e) => {
				  result = Http.response;
				  
				  
				  var rsDiv=document.getElementById("resDiv");
				  var rsImg=document.getElementById("resImg")
				  if (result != null){
					rsDiv.style.display="block";
					rsDiv.style.border="thin solid #000";
					rsDiv.style.backgroundColor="#fff";
					rsDiv.style.width="350px";
					rsDiv.style.opacity="0.6";
					rsDiv.innerHTML = "&nbsp; Your Astro Sign is : " + result;
					
					rsImg.style.display="block";
					rsImg.innerHTML ="<img src=\"virgo.jpg\" alt=\"Astro Sign Image\" width=\"50%\" height=\"30%\" style = \"margin-left: 55px;\"> <br> <input type=\"submit\" class=\"btn_form\" value=\"Check Horoscope\" style = \"margin-top: 15px; margin-left: 65px;\" onclick = getHoroscope() />";
					
					// rsImg.style.borderLeft = "thin dashed #000";
					
					
				  }else {
				    rsDiv.style.display = "none";
				    rsImg.style.display = "none";
				  }
				}
				
    		}
    	}
	function getHoroscope(){
		
		if (result!= null ){
			
			var resultHR;
			const Http = new XMLHttpRequest();
			const url="https://aztro.sameerkumar.website/?sign="+result+"&day=today"
			    			
			console.log(url);
			
			Http.open("POST", url);
			Http.send();
			console.log("OK")
			
			Http.onreadystatechange = (e) => {
			  resultHR = Http.response;
			  console.log(resultHR);
			  console.log(typeof(resultHR));
			  
			  var rsImg=document.getElementById("resImg");
			  rsImg.innerHTML ="<img src=\"virgo.jpg\" alt=\"Astro Sign Image\" width=\"50%\" height=\"30%\" style = \"margin-left: 55px;\"> <br>" +"<div style=\"margin-top:20px;\">"+ json2ul(JSON.parse(resultHR), '') +"</div>";
			}
		}
	}
	
	function json2ul(json, str)
	{
		console.log(typeof(json));
	        if (typeof(json)!='object') {
	        	console.log("Json error");
	                return '';
	        }

	        str += '<ul style="padding-left:25px;">';
	
	        for (key in json){
	        		console.log(json[key]);
	                str += "<li> <b>"+key+ "</b>";
	                str += " : <i>" + json[key] + "</i>";
	                str += "</li>";
	        }
	        str += '</ul>';

	        return str;
	}
	</script>
	
	</head>
	<body>
	    <jsp:include page="pgheader.jsp"></jsp:include>
	    	
	    <div class="middle_area">
	        <div class="auto_width">
	            <div class="full_width">
	                <div class="white_contnent">
						<h3 class="big_heading">Personal Portfolio</h3>
						<div style = "display:flex;width:85%;">
							<div style="flex: 1; border-right: 2px solid #000; background-image:linear-gradient(rgba(255,255,255,0.5), rgba(255,255,255,0.5)), url(../zodiac_disc.jpg); background-size:contain; background-repeat:no-repeat; background-position:left; height:400px">
								<h2>Check Your Astro Sign</h2>
								<table cellpadding="0" cellspacing="0">
									<tr>
										<td align="right" style = "padding-bottom: 40px; border-bottom: 0px;" >Birth Date:</td>
										<td style = "border-bottom: 0px;">
											<table>
												<tr style = "border-bottom: 0px;">
													<td style="position: relative; border-bottom: 0px;">
														<span class="title_st_nt" style = "margin-top: 25px;">date</span>
														<input type="date" name="date" id="date" class="search_input-search" style = "margin-top: 25px;"/>
														<input type="submit" class="btn_form" value="Check" style = "margin-top: 15px;" onclick = getSign() />
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
								
								<div id="resDiv" style = "margin-top: 25px;">								
								<h2 id="res"> </h2>
								</div>
								
								<div id="resImg" style="float: right; width: 370px; height:400px; margin-top: -225px;">
								</div>
							
							</div>

							<div style ="margin-right: 10px; padding-left:20px; width:30%">
								<h1>Samarth Gupta</h1>
								<h2 style = "margin-top: 15px; margin-bottom: 15px;">Digital Applications Developer - Java</h2>
								<a href="resume.pdf" class="btn-rounded">Download Resume</a>
								
								<p style = "margin-top: 15px; font-weight: bold;">
								Skilled Web Developer with ~2 years of experience, adept in all stages 
								of advanced Java web development. Knowledgeable in development, 
								testing, and debugging processes. Bringing forth expertise in design, 
								installation, testing and maintenance of web systems.
								</p>
							</div>
						</div>
	                </div>
	            </div>
	        </div>
	    </div>	
	 	<jsp:include page="pgfooter.jsp"></jsp:include>
	</body>
</html>

