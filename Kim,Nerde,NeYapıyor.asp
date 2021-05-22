<%
If Session("UserLoggedIn") <>"" Then
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kİm, Nererde, Ne Yapıyor</title>
    <link rel="stylesheet" href="style2.css">
    
</head>
<body>
    <table id="tablo1">
       
        <tbody>
            <tr>
                <th>Isim</th><th>Soyisim</th><th>Cinsiyet</th><th>Sehir</th><th>Meslek</th><th>E-posta</th>
                
            </tr>
            <%
            Set oConn = Server.CreateObject("ADODB.Connection")
            oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Veritaban.mdb"))
            ssql="select * from info; "
            Set oRS = oConn.Execute(sSQL)
            Do While NOT oRS.EOF
            %>
            
           <tr></tr><th><%=oRS("adi")%></th><th><%=oRS("soyadi")%></th><th> <%=oRS("cinsiyet")%></th> <th><%=oRS("sehir")%> </th> <th> <%=oRS("isiniz")%></th> <th> <%=oRS("eposta")%></th></tr>
 

<%
oRS.MoveNext
Loop
oConn.Close
Set oRS = Nothing
Set oConn = Nothing
%>

        
    </table>
    <div class="icerik" id="anaicerik">
        <ul>
        <li><a href="index.html">Ana Sayfa</a></li>
        <li><a href="kayit.asp">Kişi Kayıt</a></li>
        <li><a href="oturumacma.asp">Oturum Açma</a></li>
        <li><a href="forum.asp">Forum</a></li>
        <li><a href="fotograflar.asp">Fotoğraflar</a></li>
        <li><a href="videolar.asp">Videolar</a></li>
        <li><a href="Kim,Nerde,NeYapıyor.asp">Kim, Nerede,
            <br> Ne Yapıyor?</a></li>
        <li><a href="harita.asp">Harita</a></li>
        </ul>
       
    </div>
    
    
</body>
</html>

<%
else 
response.redirect "oturumacma.asp"
end if

%>