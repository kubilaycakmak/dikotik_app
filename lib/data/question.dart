class Question {
  String title;
  int side; // 0 left / 1 right / 2 both
  List<Answer> answer;
  String pathAudio;
  int voiceSex; // 0 - woman / 1 - man
  int order;

  Question(
      {this.voiceSex,
      this.pathAudio,
      this.order,
      this.title,
      this.side,
      this.answer});
}

class Answer {
  double value;
  String title;
  int side; // 0 left - 1 right
  Answer({this.title, this.value, this.side});
}

var wTestQuestions = [wq1, wq2, wq3, wq4, wq5];
var wQuestions = [];

var mQuestions = [];

var wq1 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Akşam Kardeşim Geldi', value: 1, side: 0),
    Answer(title: 'Öğrenciler Kitap Okudu', value: 0),
    Answer(title: 'Oyuncu Maça Hazırlandı', value: 0),
    Answer(title: 'Sınav Sonuçları Açıklandı', value: 0),
    Answer(title: 'Bebek Arabası Satıldı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound1.mp3',
  voiceSex: 0,
);

var wq2 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Bebek Beşikte Uyudu ', value: 0),
    Answer(title: 'Kız Elbise Giydi', value: 0),
    Answer(title: 'Çay İkram Etti', value: 1, side: 0),
    Answer(title: 'Çocuk Hızlı Koştu', value: 0),
    Answer(title: 'Saatler Yeniden Ayarlandı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound2.mp3',
  voiceSex: 0,
);

var wq3 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Tavuk Kümese Girdi', value: 0),
    Answer(title: 'Siyah Gözlük Kırıldı', value: 0),
    Answer(title: 'Ucuz Bilet İstedi', value: 0),
    Answer(title: 'Bütün Düşüncem Değişti', value: 0),
    Answer(title: 'Kuş Kafesten Uçtu', value: 1, side: 1),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound3.mp3',
  voiceSex: 0,
);

var wq4 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Herkes Soru Sordu', value: 0),
    Answer(title: 'Bize Masal Anlattı', value: 0),
    Answer(title: 'Genç Kız Evi Temizledi', value: 0),
    Answer(title: 'Duvara Resim Çizdi', value: 1, side: 1),
    Answer(title: 'Çocuklar Ekmek Yaptı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound4.mp3',
  voiceSex: 0,
);

var wq5 = new Question(
  title:
      ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Tıp Merkezi Açıldı', value: 1, side: 0),
    Answer(title: 'Kiralık Ev Aranıyor', value: 0),
    Answer(title: 'Hava Erken Karardı', value: 0),
    Answer(title: 'Sıcaklık Artmaya Başladı', value: 1, side: 1),
    Answer(title: 'Orman Yangınları Arttı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound5.mp3',
  voiceSex: 0,
);

var wq6 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Bıçak Çok Keskin', value: 0),
    Answer(title: 'Köprüden Koşarak Geçti', value: 1, side: 0),
    Answer(title: 'Yaşlı Amca Yolu Bulamadı', value: 0),
    Answer(title: 'Pazardan Meyve Satın Aldı', value: 0),
    Answer(title: 'Balık Sezonu Kapandı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound6.mp3',
  voiceSex: 0,
);

var wq7 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Yolcu Otobüsü Kaza Yaptı', value: 1, side: 0),
    Answer(title: 'Meyve Sepeti Hazırladı', value: 0),
    Answer(title: 'Sonuçları Deftere Yazdı', value: 0),
    Answer(title: 'Yeni Nesil Heyecanla Bekliyor', value: 0),
    Answer(title: 'Yeşil Gözleri Vardı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound7.mp3',
  voiceSex: 0,
);

var wq8 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Buraya Park Etmek Yasaktır', value: 0),
    Answer(title: 'Misafir İçin Yemek Hazırladı', value: 0),
    Answer(title: 'Sınava Zor Yetişti', value: 0),
    Answer(title: 'Her Gün Bilgisayar Oynadı', value: 1, side: 0),
    Answer(title: 'Almanya Dünya Kupasını Kazandı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound8.mp3',
  voiceSex: 0,
);

var wq9 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'İki Ekmek Aldım', value: 0),
    Answer(title: 'Güneş Gözlüğü Satın Aldım', value: 1, side: 0),
    Answer(title: 'Akşam Yemeği Hazır', value: 0),
    Answer(title: 'Genç Adam Arkadaşına Sarıldı', value: 0),
    Answer(title: 'Yeni Ev Aldılar', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound9.mp3',
  voiceSex: 0,
);

var wq10 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Akşam Düğün Var', value: 0),
    Answer(title: 'Kardeşim Futbol Oynadı', value: 0),
    Answer(title: 'Film İzlenme Rekoru Kırdı', value: 0),
    Answer(title: 'Annem Çamaşır Yıkadı', value: 0),
    Answer(title: 'Uçak Alev Aldı', value: 1, side: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound10.mp3',
  voiceSex: 0,
);

var wq11 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Köprüden Koşarak Geçti', value: 1, side: 0),
    Answer(title: 'Yaşlı Amca Yolu Bulamadı', value: 0),
    Answer(title: 'Pazardan Meyve Satın Aldı', value: 0),
    Answer(title: 'Balık Sezonu Kapandı', value: 0),
    Answer(title: 'Takım Kaptanı Değişti', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound11.mp3',
  voiceSex: 0,
);

var wq12 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Kömür Ocakta Yandı', value: 1, side: 0),
    Answer(title: 'Şişe Cam Kırıldı', value: 0),
    Answer(title: 'Çay Fiyatı Arttı', value: 0),
    Answer(title: 'Toprak İçin Kavga Etti', value: 0),
    Answer(title: 'Altın Fiyatı Yükseldi', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound12.mp3',
  voiceSex: 0,
);

var wq13 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Sokak Lambası Yandı', value: 0),
    Answer(title: 'Takım Kaptanı Değişti', value: 0),
    Answer(title: 'Balık Türleri Azaldı', value: 0),
    Answer(title: 'Balık Sezonu Kapandı', value: 1, side: 0),
    Answer(title: 'Üniversite Sınavı Başladı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound13.mp3',
  voiceSex: 0,
);

var wq14 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Ödül İçin Sahneye Çıktı', value: 0),
    Answer(title: 'Sınav Tarihi Belli Oldu', value: 0),
    Answer(title: 'Kitap En İyi Arkadaştır', value: 0),
    Answer(title: 'Yazarlar Bir Araya Geldi', value: 0),
    Answer(title: 'Ünlü Sanatçı Konser Verdi', value: 1, side: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound14.mp3',
  voiceSex: 0,
);

var wq15 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Üç Kardeş Ödev Yaptı', value: 1, side: 0),
    Answer(title: 'Küçük Hanım Gülümsedi', value: 0),
    Answer(title: 'Kömür Ocakta Yandı', value: 0),
    Answer(title: 'Takım Kaptanı Değişti', value: 0),
    Answer(title: 'Balık Türleri Azaldı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound15.mp3',
  voiceSex: 0,
);

var wq16 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Çocuk Sırada Bekledi', value: 0),
    Answer(title: 'Eski Günleri Özledim', value: 0),
    Answer(title: 'Kızın Gözleri Çok Güzeldi', value: 0),
    Answer(title: 'Doktor Hasta İle İlgilendi', value: 0),
    Answer(title: ' Buraya Park Etmek Yasaktır', value: 1, side: 1),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound16.mp3',
  voiceSex: 0,
);

var wq17 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Yaşam Mücadelesi Veriyor', value: 1, side: 1),
    Answer(title: 'Korku Filmi İzledim', value: 0),
    Answer(title: 'Şarkı Söylemeye Başladı', value: 0),
    Answer(title: 'Sınıf Başkanı Seçildi', value: 0),
    Answer(title: 'Öğrenciler Mavi Önlük Giydi', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound17.mp3',
  voiceSex: 0,
);

var wq18 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Maç Ne Zaman Başladı', value: 0),
    Answer(title: 'Sıcak Günler Geri Geldi', value: 0),
    Answer(title: 'Dün Güneş Tutulması Görüldü', value: 1, side: 1),
    Answer(title: 'Müzik Dinlemeyi Çok Severim', value: 0),
    Answer(title: 'Güneş Işıl Işıl Parlıyor', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound18.mp3',
  voiceSex: 0,
);

var wq19 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Her Gün Bilgisayar Oynadı', value: 0),
    Answer(title: 'Yeşil Domatesler Kızardı', value: 0),
    Answer(title: 'Almanya Dünya Kupasını Kazandı', value: 0),
    Answer(title: 'Telefon Numarasını Değiştirdi', value: 1, side: 1),
    Answer(title: 'Okyanus Kadar Mavi', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound19.mp3',
  voiceSex: 0,
);

var wq20 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Yemek Tarifi Hazırladı', value: 0),
    Answer(title: 'Kitap Okumak Güzeldir', value: 1, side: 1),
    Answer(title: 'Eski Masa Beyaza Boyandı', value: 0),
    Answer(title: 'Bu Yıl Ödül Kazandı', value: 0),
    Answer(title: 'Dünya Rekoru Kırdı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound20.mp3',
  voiceSex: 0,
);

var wq21 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Tıp Merkezi Açıldı', value: 0),
    Answer(title: 'Kiralık Ev Aranıyor', value: 0),
    Answer(title: 'Hoca Ders Anlatıyor', value: 1, side: 1),
    Answer(title: 'Sıcaklık Artmaya Başladı', value: 0),
    Answer(title: 'Güneş Gözlüğü İndirime Girdi', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound21.mp3',
  voiceSex: 0,
);

var wq22 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Hırsız Hemen Yakalandı', value: 0),
    Answer(title: 'Fırtına Uyarısı Yapıldı', value: 0),
    Answer(title: 'Hayat Erken Başladı', value: 0),
    Answer(title: 'Kadın Söz İstedi', value: 1, side: 1),
    Answer(title: 'Eski Haline Döndü', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound22.mp3',
  voiceSex: 0,
);

var wq23 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Öğrenci Not İstedi', value: 0),
    Answer(title: 'Müzik Festivali Düzenlendi', value: 1, side: 1),
    Answer(title: 'Altın Madeni Bulundu', value: 0),
    Answer(title: 'Bir Ton Kömür Yandı', value: 0),
    Answer(title: 'Soba Alev Aldı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound23.mp3',
  voiceSex: 0,
);

var wq24 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Kazı Çalışması Yapılıyor', value: 0),
    Answer(title: 'Anneme Yardım Ettim', value: 0),
    Answer(title: 'Balık Türleri Azaldı', value: 1, side: 1),
    Answer(title: 'Hayat Çok Güzel', value: 0),
    Answer(title: 'Balık Sezonu Kapandı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound24.mp3',
  voiceSex: 0,
);

var wq25 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Duvar Yeşile Boyandı', value: 0),
    Answer(title: 'Halıya Çay Döküldü', value: 0),
    Answer(title: 'Salon Perdesi Çok Uzun', value: 0),
    Answer(title: 'Sol Eline İğne Battı', value: 0),
    Answer(title: 'Ayna Yere Düştü', value: 1, side: 1),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound25.mp3',
  voiceSex: 0,
);

var wq26 = new Question(
  title:
      ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Güneşli Günler Yaklaştı', value: 1, side: 0),
    Answer(title: 'Başkan Saraya Davet Etti', value: 0),
    Answer(title: 'Müzik Grubu Dağıldı', value: 0),
    Answer(title: 'Kayak Sezonu Açıldı', value: 1, side: 1),
    Answer(title: 'Akşam Haberleri Başladı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound26.mp3',
  voiceSex: 0,
);

var wq27 = new Question(
  title:
      ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Sınıfta Şarkı Söyledi', value: 0),
    Answer(title: 'Çocuk Kedi Sevdi', value: 0),
    Answer(title: 'Köyde Kutlama Yapıldı', value: 1, side: 0),
    Answer(title: 'Anneler Günü Kutlandı', value: 0),
    Answer(title: 'Kara Delik Bulundu', value: 1, side: 1),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound27.mp3',
  voiceSex: 0,
);

var wq28 = new Question(
  title:
      ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Ödül İçin Sahneye Çıktı', value: 1, side: 0),
    Answer(title: 'Yeşil Domatesler Kızardı', value: 1, side: 1),
    Answer(title: 'Bu Asansör Dört Kişilik', value: 0),
    Answer(title: 'Kitaplıkta Yer Kalmadı', value: 0),
    Answer(title: 'Markette İndirim Vardı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound28.mp3',
  voiceSex: 0,
);

var wq29 = new Question(
  title:
      ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Personel Sayısı Azaldı', value: 0),
    Answer(title: 'Sınava Zor Yetişti', value: 1, side: 1),
    Answer(title: 'Misafir İçin Yemek Hazırladı', value: 1, side: 0),
    Answer(title: 'Hastane Başhekimi Geldi', value: 0),
    Answer(title: 'Doktor Reçete Yazdı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound29.mp3',
  voiceSex: 0,
);

var wq30 = new Question(
  title:
      ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Bugün Diyete Başladım', value: 1, side: 0),
    Answer(title: 'Müzik Dinlemeyi Çok Severim', value: 0),
    Answer(title: 'Güneş Işıl Işıl Parlıyor', value: 0),
    Answer(title: 'Büyük İndirim Başladı', value: 1, side: 1),
    Answer(title: 'Spor Sağlık İçin Önemli', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound30.mp3',
  voiceSex: 0,
);

var wq31 = new Question(
  title:
      ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Uçak Seferi İptal Edildi', value: 0),
    Answer(title: 'Dergi Sayısı Azaldı', value: 1, side: 0),
    Answer(title: 'Öğretmen Ders Verdi', value: 1, side: 1),
    Answer(title: 'Eski Günleri Özledim', value: 0),
    Answer(title: 'Çocuk Sırada Bekledi', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound31.mp3',
  voiceSex: 0,
);

var wq32 = new Question(
  title:
      ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Kuş Yuva Yaptı', value: 1, side: 0),
    Answer(title: 'İşçi Maaş Aldı', value: 0),
    Answer(title: 'Büyük Savaş Başladı', value: 0),
    Answer(title: 'Ağaçlar Çiçek Açtı', value: 1, side: 1),
    Answer(title: 'Ormana Fidan Dikti', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound32.mp3',
  voiceSex: 0,
);

var wq33 = new Question(
  title:
      ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Sınav Tarihi Belli Oldu', value: 1, side: 0),
    Answer(title: 'Kitap En İyi Arkadaştır', value: 0),
    Answer(title: 'Yazarlar Bir Araya Geldi', value: 1, side: 1),
    Answer(title: 'Dergi Sayısı Azaldı', value: 0),
    Answer(title: 'Uçak Seferi İptal Edildi', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound33.mp3',
  voiceSex: 0,
);

var wq34 = new Question(
  title:
      ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Zil Erken Çaldı', value: 0),
    Answer(title: 'Çalışmak Başarı Getirir', value: 0),
    Answer(title: 'Otobüs Kaza Yaptı', value: 0),
    Answer(title: 'Hava Erken Karardı', value: 1, side: 0),
    Answer(title: 'Orman Yangınları Arttı', value: 1, side: 1),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound34.mp3',
  voiceSex: 0,
);

var wq35 = new Question(
  title:
      ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Adam Gazete Okudu', value: 1, side: 1),
    Answer(title: 'Sıcak Günler Geri Geldi', value: 0),
    Answer(title: 'Güneş Tutulması Görüldü', value: 0),
    Answer(title: 'Kitap Okumak Güzeldir', value: 1, side: 0),
    Answer(title: 'Sefer Saati Değişti', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound35.mp3',
  voiceSex: 0,
);



var mq1 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Bebek Arabası Satıldı', value: 0),
    Answer(title: 'Kuş Yuva Yaptı', value: 1, side: 0),
    Answer(title: 'Yeni Bölüm Başladı', value: 0),
    Answer(title: 'Çizgi Film İzledi', value: 0),
    Answer(title: 'Araba Kaza Yaptı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound1.mp3',
  voiceSex: 1,
);



var mq2 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Doktor İğne Yaptı', value: 0),
    Answer(title: 'Kardeşim Futbol Oynadı', value: 0),
    Answer(title: 'Akşam Düğün Var', value: 0),
    Answer(title: 'Araba Ani Fren Yaptı', value: 1, side: 0),
    Answer(title: 'Manavdan Elma Aldım', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound2.mp3',
  voiceSex: 1,
);




var mq3 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Film İzlenme Rekoru Kırdı', value: 0),
    Answer(title: 'Annem Çamaşır Yıkadı', value: 1, side: 1),
    Answer(title: 'Rüyamda Seni Gördüm', value: 0),
    Answer(title: 'Yemek Tarifi Hazırladı', value: 0),
    Answer(title: 'Çocuk Süt İçti', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound3.mp3',
  voiceSex: 1,
);
var mq4 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Yağmurlu Günler Başladı', value: 0),
    Answer(title: 'Hava Çok Soğuktu', value: 0),
    Answer(title: 'Kız Kardeşim Geldi', value: 0),
    Answer(title: 'Şarkı Söylemeye Başladı', value: 0),
    Answer(title: 'Adam Gazete Okudu', value: 1, side: 1),
  ],
  order: 0,
  pathAudio: 'sound/woman/wsound4.mp3',
  voiceSex: 1,
);



var mq5 = new Question(
  title: ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Çocuk Süt İçti', value: 0),
    Answer(title: 'Yaşam Mücadelesi Veriyor', value: 0),
    Answer(title: 'Yemek Tarifi Hazırladı', value: 1, side: 0),
    Answer(title: 'Kız Kardeşim Geldi', value: 1,side: 1),
    Answer(title: 'Hava Çok Soğuktu', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound5.mp3',
  voiceSex: 0,
);





var mq6 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Siyah Gözlük Kırıldı', value: 0),
    Answer(title: 'Ucuz Bilet İstedi', value: 0),
    Answer(title: 'Kedi İçeri Girdi', value: 0),
    Answer(title: 'Tavuk Kümese Girdi', value: 1, side: 0),
    Answer(title: 'Ona Söz Verdim', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound6.mp3',
  voiceSex: 1,
);




var mq7 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Yeni Ev Satın Aldı', value: 0),
    Answer(title: 'Kahvesini Alıp Oturdu', value: 0),
    Answer(title: 'Erken Kayıt Başladı', value: 1, side: 0),
    Answer(title: 'Otel Bu Sene Yenilendi' , value: 0),
    Answer(title: 'Kömür Ocakta Yandı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound7.mp3',
  voiceSex: 1,
);




var mq8 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Şişe Cam Kırıldı', value: 1, side: 0),
    Answer(title: 'Çay Fiyatı Arttı', value: 0),
    Answer(title: 'Sefer Saati Değişti', value: 0),
    Answer(title: 'İyi Bir Baba Oldu', value: 0),
    Answer(title: 'İki Ay Önce Evlendi', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound8.mp3',
  voiceSex: 1,
);




var mq9 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Spor Salonuna Kayıt Yaptırdı', value: 0),
    Answer(title: 'Çocuk İşitme Cihazı Kullanıyor', value: 0),
    Answer(title: 'Hesabı Ödemeden Çıktı', value: 0),
    Answer(title: 'Bebek Annesine Baktı', value: 1, side: 0),
    Answer(title: 'Sanayi Üretimi Yükselişe Geçti', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound9.mp3',
  voiceSex: 1,
);






var mq10 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Müzik Dinlemeyi Çok Severim', value: 0),
    Answer(title: 'Güneş Işıl Işıl Parlıyor', value: 1, side: 0),
    Answer(title: 'Spor Sağlık İçin Önemli', value: 0),
    Answer(title: 'Büyük İndirim Başladı', value: 0),
    Answer(title: 'Hoca Ders Anlatıyor', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound10.mp3',
  voiceSex: 1,
);





var mq11 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Herkes Fikir Verdi', value: 0),
    Answer(title: 'En Büyük Gemi Seçildi', value: 0),
    Answer(title: 'Orman Yangınları Arttı', value: 0),
    Answer(title: 'Bu Elbise Çok Şık', value: 0),
    Answer(title: 'Sıcaklık Artmaya Başladı', value: 1, side: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound11.mp3',
  voiceSex: 1,
);





var mq12 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Bebek Annesine Sarıldı', value: 1, side: 0),
    Answer(title: 'Asker Selam Verdi', value: 0),
    Answer(title: 'Bahçeden Papatya Topladım', value: 0),
    Answer(title: 'Bıçak Çok Keskin', value: 0),
    Answer(title: 'Köprüden Koşarak Geçti', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound12.mp3',
  voiceSex: 1,
);



var mq13 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'İyi Bir Baba Oldu', value: 0),
    Answer(title: 'İki Ay Önce Evlendi', value: 0),
    Answer(title: 'Yemekten Önce Su İçti', value: 0),
    Answer(title: 'Doktor Reçete Yazdı', value: 1, side: 0),
    Answer(title: 'Personel Sayısı Azaldı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound13.mp3',
  voiceSex: 1,
);



var mq14 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Fındık Fiyatı Yükseldi', value: 0),
    Answer(title: 'Bir Kova Su Getirdi', value: 0),
    Answer(title: 'Tiyatro Bileti Aldım', value: 1, side: 0),
    Answer(title: 'Ünlü Sanat Eseri Satıldı', value: 0),
    Answer(title: 'Fabrika Ucuza Satıldı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound14.mp3',
  voiceSex: 1,
);


var mq16 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Pazardan Meyve Satın Aldı', value: 0),
    Answer(title: 'Takım Kaptanı Değişti', value: 0),
    Answer(title: 'Sokak Lambası Yandı', value: 0),
    Answer(title: 'Üniversite Sınavı Başladı', value: 1, side: 1),
    Answer(title: 'Telefonun Ekranı Kırıldı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound16.mp3',
  voiceSex: 1,
);



var mq17 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Bahçeye Salıncak Kurdu', value: 0),
    Answer(title: 'Belediye Binası Yenilendi', value: 0),
    Answer(title: 'Bu Asansör Dört Kişilik', value: 0),
    Answer(title: 'Markette İndirim Vardı', value: 0),
    Answer(title: 'Kitaplıkta Yer Kalmadı', value: 1, side: 1),
  ],
  order: 0,
  pathAudio: 'sound/man/msound17.mp3',
  voiceSex: 1,
);




var mq18 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Tüm Bilgileri Dosyada Sakladı', value: 0),
    Answer(title: 'Meyve Sepeti Hazırladı', value: 1, side: 1),
    Answer(title: 'Yol Çok Uzun', value: 0),
    Answer(title: 'Kapı Aniden Kapandı', value: 0),
    Answer(title: 'Annem Sevinçten Ağladı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound18.mp3',
  voiceSex: 1,
);






var mq19 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Hızla Yola Çıktı', value: 1, side: 1),
    Answer(title: 'Bu Elbise Çok Şık', value: 0),
    Answer(title: 'Gözlük İndirime Girdi', value: 0),
    Answer(title: 'Hoca Ders Anlatıyor', value: 0),
    Answer(title: 'İklim Değişikliği Uyarısı Yapıldı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound19.mp3',
  voiceSex: 1,
);




var mq20 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Soru Kolay Geldi', value: 0),
    Answer(title: 'Boş Oda Yok', value: 0),
    Answer(title: 'Almanya Dünya Kupasını Kazandı', value: 1, side: 1),
    Answer(title: 'Meclis Hemen Toplandı', value: 0),
    Answer(title: 'Polis Şifre Çözdü', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound20.mp3',
  voiceSex: 1,
);




var mq21 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Sınav Tarihi Belli Oldu', value: 0),
    Answer(title: 'Suya Zam Geldi', value: 0),
    Answer(title: 'Küçük Çocuk Yardım Bekledi', value: 0),
    Answer(title: 'Evde Tek Başına Kaldı', value: 0),
    Answer(title: 'Yazarlar Bir Araya Geldi', value: 1, side: 1),
  ],
  order: 0,
  pathAudio: 'sound/man/msound21.mp3',
  voiceSex: 1,
);





var mq22 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Annem Sevinçten Ağladı', value: 0),
    Answer(title: 'Yolda Para Buldum', value: 0),
    Answer(title: 'Yeni Devlet Kuruldu', value: 0),
    Answer(title: 'Sınav Tarihi Belli Oldu', value: 1, side: 1),
    Answer(title: 'Herkes Fikir Verdi', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound22.mp3',
  voiceSex: 1,
);




var mq23 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Banka Bugün Erken Kapandı', value: 0),
    Answer(title: 'İşçi Maaş Aldı', value: 0),
    Answer(title: 'Öğrenciler Mavi Önlük Giydi', value: 1, side: 1),
    Answer(title: 'Büyük Savaş Başladı', value: 0),
    Answer(title: 'Ormana Fidan Dikti', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound23.mp3',
  voiceSex: 1,
);




var mq24 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Almanya Dünya Kupasını Kazandı', value: 0),
    Answer(title: 'Meslek Seçimi Yaptı', value: 0),
    Answer(title: 'Öğrenci Not İstedi', value: 0),
    Answer(title: 'Müzik Festivali Düzenlendi', value: 0),
    Answer(title: 'Bahçeye Salıncak Kurdu', value: 1, side: 1),
  ],
  order: 0,
  pathAudio: 'sound/man/msound24.mp3',
  voiceSex: 1,
);





var mq25 = new Question(
  title: 'Sadece sağ kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'Hırsız Hemen Yakalandı', value: 0),
    Answer(title: 'Pizza Hamuru Kalın Oldu', value: 0),
    Answer(title: 'Kahvaltıda Yumurta Yedi', value: 0),
    Answer(title: 'Fırtına Uyarısı Yapıldı', value: 1, side: 1),
    Answer(title: 'Bir Ton Kömür Yandı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound25.mp3',
  voiceSex: 1,
);




var mq26 = new Question(
  title: ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Sıra Sana Geldi', value: 1, side: 0),
    Answer(title: 'Güzel Resim Çizdi', value: 1, side: 1),
    Answer(title: 'Siyah Kalem Verdi', value: 0),
    Answer(title: 'Zaman Çabuk Geçti', value: 0),
    Answer(title: 'Acı Biber Yedi', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound26.mp3',
  voiceSex: 0,
);




var mq27 = new Question(
  title: ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Hava Çok Soğuktu', value: 0),
    Answer(title: 'Kız Kardeşim Geldi', value: 1, side: 0),
    Answer(title: 'Korku Filmi İzledim', value: 0),
    Answer(title: 'Şarkı Söylemeye Başladı', value: 0),
    Answer(title: 'Adam Gazete Okudu', value: 1, side: 1),
  ],
  order: 0,
  pathAudio: 'sound/man/msound27.mp3',
  voiceSex: 0,
);



var mq28 = new Question(
  title: ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Sınav Yeri Belirlendi', value: 1, side: 1),
    Answer(title: 'Bilim Başarıyla İlerliyor', value: 0),
    Answer(title: 'Yeni Bölüm Yayınlandı', value: 0),
    Answer(title: 'Sinemaya Yeni Film Geldi', value: 1, side: 0),
    Answer(title: 'Otobüs Durağa Girdi', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound28.mp3',
  voiceSex: 0,
);




var mq29 = new Question(
  title: ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Mor Bisiklet Aldı', value: 0),
    Answer(title: 'Güneş Gözlüğü İndirime Girdi', value: 1, side: 0),
    Answer(title: 'Eski Masa Beyaza Boyandı', value: 0),
    Answer(title: 'Bu Yıl Ödül Kazandı', value: 0),
    Answer(title: 'Köprüden Koşarak Geçti', value: 1, side: 1),
  ],
  order: 0,
  pathAudio: 'sound/man/msound29.mp3',
  voiceSex: 0,
);




var mq30 = new Question(
  title: ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Genç Kız Evi Temizledi', value: 0),
    Answer(title: 'Duvara Resim Çizdi', value: 1, side: 0),
    Answer(title: 'Alevlerin Arasında Kaldı', value: 0),
    Answer(title: 'Pizza Hamuru Kalın Oldu', value: 0),
    Answer(title: 'Polis Yanlış Kişiyi Tutukladı', value: 1, side: 1),
  ],
  order: 0,
  pathAudio: 'sound/man/msound30.mp3',
  voiceSex: 0,
);


var mq31 = new Question(
  title: ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Annem Sevinçten Ağladı', value: 1, side: 1),
    Answer(title: 'Otobüs Kaza Yaptı', value: 0),
    Answer(title: 'Bugün Deprem Oldu', value: 0),
    Answer(title: 'Bahçeye Salıncak Kurdu', value: 1, side: 0),
    Answer(title: 'Su İçmek Faydalı', value: 0), 
  ],
  order: 0,
  pathAudio: 'sound/man/msound31.mp3',
  voiceSex: 0,
);




var mq32 = new Question(
  title: ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Garson Yemek Getirdi', value: 0),
    Answer(title: 'Çocuk Şiir Okudu', value: 0),
    Answer(title: 'Lise Mezunu İş Arıyor', value: 1,side: 1),
    Answer(title: 'Ucuz Bilet İstedi', value: 1, side: 0),
    Answer(title: 'Üç Kardeş Ödev Yaptı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound32.mp3',
  voiceSex: 0,
);




var mq33 = new Question(
  title: ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Su İçmek Faydalı', value: 1,side: 1),
    Answer(title: 'Otobüs Kaza Yaptı', value: 1, side: 0),
    Answer(title: 'Bugün Deprem Oldu', value: 0),
    Answer(title: 'Yeni Devlet Kuruldu', value: 0),
    Answer(title: 'Yolda Para Buldum', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound33.mp3',
  voiceSex: 0,
);


var mq34 = new Question(
  title: ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Araba Ani Fren Yaptı', value: 1,side: 1),
    Answer(title: 'Babam Balık Tuttu', value: 0),
    Answer(title: 'İki Fincan Kahve Aldı', value: 0),
    Answer(title: 'Yarın Okulda Ders Var', value: 1, side: 0),
    Answer(title: 'Soğuk Su İçti', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound34.mp3',
  voiceSex: 0,
);





var mq35 = new Question(
  title: ' Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'Uçak Seyahati Yaptım', value: 0), 
    Answer(title: 'Akşam Kardeşim Geldi', value: 1, side: 0),
    Answer(title: 'Akşam Düğün Var', value: 1, side: 1),
    Answer(title: 'Uygun Fiyata Bilet Aldım', value: 0),
    Answer(title: 'Akşam Misafir Geldi', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound35.mp3',
  voiceSex: 0,
);

var mq15 = new Question(
  title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'Okyanus Kadar Mavi', value: 0),
    Answer(title: 'Uygulanan Tedavi Yanıt Verdi', value: 1, side: 0),
    Answer(title: 'Hastane Başhekimi Geldi', value: 0),
    Answer(title: 'Doktor Reçete Yazdı', value: 0),
    Answer(title: 'Personel Sayısı Azaldı', value: 0),
  ],
  order: 0,
  pathAudio: 'sound/man/msound15.mp3',
  voiceSex: 1,
);


















