<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
dim username, user

Response.Buffer=True
Response.Expires = -100
 	
username=request.form("username")
userpwd=request.form("userpwd")

Veritabani_Yol=SERVER.MAPPATH("Veritaban.mdb")
Set Baglanti=Server.CreateObject("Adodb.Connection")
Baglanti.Open "DBQ=" & Veritabani_Yol &   ";Driver={Microsoft Access Driver (*.mdb)}"
Set Rs=Server.CreateObject("Adodb.recordset")

Sorgu="select * from info where eposta = '" & request.form("username") & "' and sifre = '" & Request.form("userpwd") & "'"
    Set grup = Baglanti.Execute(sorgu) 'ppp
    

		Rs.Open Sorgu, Baglanti, 1, 3
		If RS.BOF And RS.EOF Then
		%>
		    
			
			<%
		Else
		    user = grup("adi")
	        Session("UserLoggedIn") = user 
	     	Response.Write "<h1>Bilgiler onaylandi.</h1>"
            Response.Write " <h1>Hosgeldiniz <b>(" & Session("UserLoggedIn") & ")</b></h1> " 
	     	%>
			




	     
				
			<a href="index.html" style="font-size: 30px;"> Hoşgeldiniz... Anasayfaya geçmek için lütfen tıklayınız.</a>	
		
			
			 
 				
 		<%
 		End If
 		%>