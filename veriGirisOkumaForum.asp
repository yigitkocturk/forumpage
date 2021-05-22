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
Tablom.Open "forum", Baglantim, 1, 3

'Tabloya veri eklemeye baslangic:
Tablom.AddNew 
'Tablodaki alanlara veri aktarma

Tablom("adi") =  request("name")
Tablom("Tarih") =  request("datetime")
Tablom("yorum") =  request("yorum")





'aktarma islemi birince tablonun guncellenmesi:
Tablom.Update

'tablonun kapatilmasi:
  Tablom.close
  set Tablom= Nothing
'baglantinin kesilmesi:
  Baglantim.close
  set Baglantim= Nothing


%>
<p><a href="forum.asp">Forum Sayfasına Dön...</a></p>