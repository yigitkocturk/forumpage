<%
If Session("UserLoggedIn") <>"" Then
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forum</title>
    <link rel="stylesheet" href="style2.css">
</head>
<body>
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

    
    <form action="veriGirisOkumaForum.asp" method="post">
        <p> <textarea name="yorum" rows="7" cols="70"></textarea></p>
    <button>Yorum Yap</button>
    <input type="text" name="datetime" value="<%=date()%> " hidden>
    <input type="text" name="name" value="<%Response.Write " <b>" & Session("UserLoggedIn") & "</b>" %>" hidden >
    </form>

    <table  >
        <tr>
            <td style="width: 20%;"><h1>Adi Soyad</h1></td>
            <td style="width: 20%;"><h1>Tarih</h1></td>
            <td style="width: 20%;"><h1>Mesaj</h1></td>
        </tr>
        <%
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" &Server.MapPath("veritaban.mdb"))
ssql="select * from forum; "
Set oRS = oConn.Execute(sSQL)
Do While NOT oRS.EOF
%>
    
        <tr>
            <td><%=oRS("adi")%></td><td><%=oRS("tarih")%></td><td><%=oRS("yorum")%></td>
            </tr>
            
            <%
            oRS.MoveNext
            Loop
            oConn.Close
            Set oRS = Nothing
            Set oConn = Nothing
            %>
       
    </table>
</body>
</html>

<%
        else 
        response.redirect "oturumacma.asp"
        end if
        
        %>