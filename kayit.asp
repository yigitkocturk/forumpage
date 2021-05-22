
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KİŞİ KAYIT</title>
    <link rel="stylesheet" href="style2.css">
    <head runat="./a.aspx.cs"></head>
</head>
<body>
    
    
    <div id="form">
        <p id="p1">! Lütfen Aşağıdaki Bilgileri Eksiksiz Doldurunuz !</p><br>
        <form action="veriGirisOkuma.asp" method="post">
            <br><br><br>
            <p> <input id="aa" name="name" type="text" placeholder="Adınızı Girin. " required></p>
            <p><input  id="aa" name="surname" type="text" placeholder="Soyadınızı Girin. " required></p>
            
            <p><select id="aa" name="gender" >
                <option value="">Seçiniz...</option>
                <option value="Kadin">Kadın</option>
                <option value="Erkek">Erkek</option>
            </select></p>
            <p><input id="aa"  name="job" type="text" placeholder="İşinizi Girin. " required></p>
            <p><select id="aa"  name="city">
                <option value="">Seçiniz...</option>
                <option value="Adana">Adana</option>
                <option value="Adiyaman">Adıyaman</option>
                <option value="Afyonkarahisar">Afyonkarahisar</option>male
                <option value="Agri">Ağrı</option>
                <option value="Amasya">Amasya</option>
                <option value="Ankara">Ankara</option>
                <option value="Antalya">Antalya</option>
                <option value="Artvin">Artvin</option>
                <option value="Aydin">Aydın</option>
                <option value="Balikesir">Balıkesir</option>
                <option value="Bilecik">Bilecik</option>
                <option value="Bingol">Bingöl</option>
                <option value="Bitlis">Bitlis</option>
                <option value="Bolu">Bolu</option>
                <option value="Burdur">Burdur</option>
                <option value="Bursa">Bursa</option>
                <option value="Canakkale">Çanakkale</option>
                <option value="Cankiri">Çankırı</option>
                <option value="Corum">Çorum</option>
                <option value="Denizli">Denizli</option>
                <option value="Diyarbakir">Diyarbakır</option>
                <option value="Edirne">Edirne</option>
                <option value="Elazıg">Elazığ</option>
                <option value="Erzincan">Erzincan</option>
                <option value="Erzurum">Erzurum</option>
                <option value="Eskisehir">Eskişehir</option>
                <option value="Gaziantep">Gaziantep</option>
                <option value="Giresun">Giresun</option>
                <option value="Gumushane">Gümüşhane</option>
                <option value="Hakkari">Hakkâri</option>
                <option value="Hatay">Hatay</option>
                <option value="Isparta">Isparta</option>
                <option value="Mersin">Mersin</option>
                <option value="Istanbul">İstanbul</option>
                <option value="Izmir">İzmir</option>
                <option value="Kars">Kars</option>
                <option value="Kastamonu">Kastamonu</option>
                <option value="Kayseri">Kayseri</option>
                <option value="Kirklareli">Kırklareli</option>
                <option value="Kirsehir">Kırşehir</option>
                <option value="Kocaeli">Kocaeli</option>
                <option value="Konya">Konya</option>
                <option value="Kutahya">Kütahya</option>
                <option value="Malatya">Malatya</option>
                <option value="Manisa">Manisa</option>
                <option value="Kahramanmaras">Kahramanmaraş</option>
                <option value="Mardin">Mardin</option>
                <option value="Mugla">Muğla</option>
                <option value="Mus">Muş</option>
                <option value="Nevsehir">Nevşehir</option>
                <option value="Nigde">Niğde</option>
                <option value="Ordu">Ordu</option>
                <option value="Rize">Rize</option>
                <option value="Sakarya">Sakarya</option>
                <option value="Samsun">Samsun</option>
                <option value="Siirt">Siirt</option>
                <option value="Sinop">Sinop</option>
                <option value="Sivas">Sivas</option>
                <option value="Tekirdag">Tekirdağ</option>
                <option value="Tokat">Tokat</option>
                <option value="Trabzon">Trabzon</option>
                <option value="Tunceli">Tunceli</option>
                <option value="Sanliurfa">Şanlıurfa</option>
                <option value="Usak">Uşak</option>
                <option value="Van">Van</option>
                <option value="Yozgat">Yozgat</option>
                <option value="Zonguldak">Zonguldak</option>
                <option value="Aksaray">Aksaray</option>
                <option value="Bayburt">Bayburt</option>
                <option value="Karaman">Karaman</option>
                <option value="Kirikkale">Kırıkkale</option>
                <option value="Batman">Batman</option>
                <option value="Sirnak">Şırnak</option>
                <option value="Bartin">Bartın</option>
                <option value="Ardahan">Ardahan</option>
                <option value="Igdir">Iğdır</option>
                <option value="Yalova">Yalova</option>
                <option value="Karabuk">Karabük</option>
                <option value="Kilis">Kilis</option>
                <option value="Osmaniye">Osmaniye</option>
                <option value="Duzce">Düzce</option>
            </select></p>
            <p><input id="aa"  name="address"type="text" placeholder="Adresinizi Girin."></p>
            <p><input id="aa" name="email"  type="text" placeholder="E-posta Girin."></p>
            <p><input id="aa"  name="pass" type="password" placeholder="Şifre Girin" required></p>
            <input id="btn"   type="submit" value="Kaydet" onclick="Button1Click" >
        </form>
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
</body>
</html>