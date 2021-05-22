<%
If Session("UserLoggedIn") <>"" Then
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fotoğraflar</title>
    <link rel="stylesheet" href="style2.css">
</head>
<body>
    <div class="baslıkfoto">
        <h1 >FOTOĞRAFLAR</h1>
    </div>
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
    <div id="foto">
        <img src="images (1).jpg" >
        <img src="images.jpg" >
        <img src="indir (2).jpg" >
        <img src="indir.jpg">
    </div>
</body>
</html>

<%
        else 
        response.redirect "oturumacma.asp"
        end if
        
        %>