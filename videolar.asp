<%
If Session("UserLoggedIn") <>"" Then
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Videolar</title>
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
    <div class="baslıkfoto">
        <h1 >VIDEOLAR</h1>
    </div>
    <div>
        <iframe id="video" width="560" height="315" src="https://www.youtube.com/embed/7CcZ5IsGzpM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
</body>
</html>

<%
        else 
        response.redirect "oturumacma.asp"
        end if
        
        %>