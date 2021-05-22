<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<% 
'kutuyu boş bırakmayı engelleme
If trim(request("name"))="" then  
response.write ("<b>Eksik Bilgi! </b> Lütfen boş bırakmayınız.   [ <a href=""javascript:history.back()"">Geri</a> ]<br><br> ")
response.end  
end if

'--------------
'VT baglantisinin yapimasi:
Set Baglantim = CreateObject("ADODB.Connection") 
'VT'nin acilmasi:
Baglantim.Open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ="& Server.MapPath("veritaban.mdb"))
'Tablo nesnesinin olusturulmasi:
Set Tablom = server. CreateObject("ADODB.Recordset")
'Tablonun acilmasi:
Tablom.Open "info", Baglantim, 1, 3

'Tabloya veri eklemeye baslangic:
Tablom.AddNew 
'Tablodaki alanlara veri aktarma

Tablom("adi") =  request("name")
Tablom("soyadi") =  request("surname")
Tablom("cinsiyet") =  request("gender")
Tablom("isiniz") =  request("job")
Tablom("sehir") =  request("city")
Tablom("adresiniz") =  request("address")
Tablom("eposta") =  request("email")
Tablom("sifre") =  request("pass")




'aktarma islemi birince tablonun guncellenmesi:
Tablom.Update

'tablonun kapatilmasi:
  Tablom.close
  set Tablom= Nothing
'baglantinin kesilmesi:
  Baglantim.close
  set Baglantim= Nothing


%>
<p><a href="../index.html">Başarılı bir şekilde kayıt oldunuz Ana Sayfaya dönebilirsiniz...</a></p>