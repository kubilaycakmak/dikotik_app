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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
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
  pathAudio: 'assets/sound/woman/wsound1.mp3',
  voiceSex: 0,
);
