var wqSentences = [	
  wqSentences1,	
  wqSentences2,	
  wqSentences3,	
  wqSentences4,	
  wqSentences5,	
  wqSentences6,	
  wqSentences7,	
  wqSentences8,	
  wqSentences9,	
  wqSentences10,	
  wqSentences11,	
  wqSentences12,	
  wqSentences13,	
  wqSentences14,	
  wqSentences15,	
  wqSentences16,	
  wqSentences17,	
  wqSentences18,	
  wqSentences19,	
  wqSentences20,	
  wqSentences21,	
  wqSentences22,	
  wqSentences23,	
  wqSentences24,	
  wqSentences25,	
  wqSentences26,	
  wqSentences27,	
  wqSentences28,	
  wqSentences29,	
  wqSentences30,	
  wqSentences31,	
  wqSentences32,	
  wqSentences33,	
  wqSentences34,	
  wqSentences35,	
];

var mqSentences = [	
  mqSentences1,	
  mqSentences2,	
  mqSentences3,	
  mqSentences4,	
  mqSentences5,	
  mqSentences6,	
  mqSentences7,	
  mqSentences8,	
  mqSentences9,	
  mqSentences10,	
  mqSentences11,	
  mqSentences12,	
  mqSentences13,	
  mqSentences14,	
  mqSentences15,	
  mqSentences16,	
  mqSentences17,	
  mqSentences18,	
  mqSentences19,	
  mqSentences20,	
  mqSentences21,	
  mqSentences22,	
  mqSentences23,	
  mqSentences24,	
  mqSentences25,	
  mqSentences26,	
  mqSentences27,	
  mqSentences28,	
  mqSentences29,	
  mqSentences30,	
  mqSentences31,	
  mqSentences32,	
  mqSentences33,	
  mqSentences34,	
  mqSentences35,	
];

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

var wqSentences1 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Akşam Kardeşim Geldi", value: 1, side: 0),
    Answer(title: "Öğrenciler Kitap Okudu", value: 0),
    Answer(title: "Oyuncu Maça Hazırlandı", value: 0),
    Answer(title: "Sınav Sonuçları Açıklandı", value: 0),
    Answer(title: "Bebek Arabası Satıldı", value: 0),
  ],
  order: 1,
  pathAudio: "assets/sound/woman/wsound1.mp3",
  voiceSex: 0,
);

var wqSentences2 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Bebek Beşikte Uyudu ", value: 0),
    Answer(title: "Kız Elbise Giydi", value: 0),
    Answer(title: "Çay İkram Etti", value: 1, side: 0),
    Answer(title: "Çocuk Hızlı Koştu", value: 0),
    Answer(title: "Saatler Yeniden Ayarlandı", value: 0),
  ],
  order: 2,
  pathAudio: "assets/sound/woman/wsound2.mp3",
  voiceSex: 0,
);

var wqSentences3 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Tavuk Kümese Girdi", value: 0),
    Answer(title: "Siyah Gözlük Kırıldı", value: 0),
    Answer(title: "Ucuz Bilet İstedi", value: 0),
    Answer(title: "Bütün Düşüncem Değişti", value: 0),
    Answer(title: "Kuş Kafesten Uçtu", value: 1, side: 1),
  ],
  order: 3,
  pathAudio: "assets/sound/woman/wsound3.mp3",
  voiceSex: 0,
);

var wqSentences4 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Herkes Soru Sordu", value: 0),
    Answer(title: "Bize Masal Anlattı", value: 0),
    Answer(title: "Genç Kız Evi Temizledi", value: 0),
    Answer(title: "Duvara Resim Çizdi", value: 1, side: 1),
    Answer(title: "Çocuklar Ekmek Yaptı", value: 0),
  ],
  order: 4,
  pathAudio: "assets/sound/woman/wsound4.mp3",
  voiceSex: 0,
);

var wqSentences5 = new Question(
  title:
      "'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Tıp Merkezi Açıldı", value: 1, side: 0),
    Answer(title: "Kiralık Ev Aranıyor", value: 0),
    Answer(title: "Hava Erken Karardı", value: 0),
    Answer(title: "Sıcaklık Artmaya Başladı", value: 1, side: 1),
    Answer(title: "Orman Yangınları Arttı", value: 0),
  ],
  order: 5,
  pathAudio: "assets/sound/woman/wsound5.mp3",
  voiceSex: 0,
);

var wqSentences6 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Bıçak Çok Keskin", value: 0),
    Answer(title: "Köprüden Koşarak Geçti", value: 1, side: 0),
    Answer(title: "Yaşlı Amca Yolu Bulamadı", value: 0),
    Answer(title: "Pazardan Meyve Satın Aldı", value: 0),
    Answer(title: "Balık Sezonu Kapandı", value: 0),
  ],
  order: 6,
  pathAudio: "assets/sound/woman/wsound6.mp3",
  voiceSex: 0,
);

var wqSentences7 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Yolcu Otobüsü Kaza Yaptı", value: 1, side: 0),
    Answer(title: "Meyve Sepeti Hazırladı", value: 0),
    Answer(title: "Sonuçları Deftere Yazdı", value: 0),
    Answer(title: "Yeni Nesil Heyecanla Bekliyor", value: 0),
    Answer(title: "Yeşil Gözleri Vardı", value: 0),
  ],
  order: 7,
  pathAudio: "assets/sound/woman/wsound7.mp3",
  voiceSex: 0,
);

var wqSentences8 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Buraya Park Etmek Yasaktır", value: 0),
    Answer(title: "Misafir İçin Yemek Hazırladı", value: 0),
    Answer(title: "Sınava Zor Yetişti", value: 0),
    Answer(title: "Her Gün Bilgisayar Oynadı", value: 1, side: 0),
    Answer(title: "Almanya Dünya Kupasını Kazandı", value: 0),
  ],
  order: 8,
  pathAudio: "assets/sound/woman/wsound8.mp3",
  voiceSex: 0,
);

var wqSentences9 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "İki Ekmek Aldım", value: 0),
    Answer(title: "Güneş Gözlüğü Satın Aldım", value: 1, side: 0),
    Answer(title: "Akşam Yemeği Hazır", value: 0),
    Answer(title: "Genç Adam Arkadaşına Sarıldı", value: 0),
    Answer(title: "Yeni Ev Aldılar", value: 0),
  ],
  order: 9,
  pathAudio: "assets/sound/woman/wsound9.mp3",
  voiceSex: 0,
);

var wqSentences10 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Akşam Düğün Var", value: 0),
    Answer(title: "Kardeşim Futbol Oynadı", value: 0),
    Answer(title: "Film İzlenme Rekoru Kırdı", value: 0),
    Answer(title: "Annem Çamaşır Yıkadı", value: 0),
    Answer(title: "Uçak Alev Aldı", value: 1, side: 0),
  ],
  order: 10,
  pathAudio: "assets/sound/woman/wsound10.mp3",
  voiceSex: 0,
);

var wqSentences11 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Köprüden Koşarak Geçti", value: 1, side: 0),
    Answer(title: "Yaşlı Amca Yolu Bulamadı", value: 0),
    Answer(title: "Pazardan Meyve Satın Aldı", value: 0),
    Answer(title: "Balık Sezonu Kapandı", value: 0),
    Answer(title: "Takım Kaptanı Değişti", value: 0),
  ],
  order: 11,
  pathAudio: "assets/sound/woman/wsound11.mp3",
  voiceSex: 0,
);

var wqSentences12 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Kömür Ocakta Yandı", value: 1, side: 0),
    Answer(title: "Şişe Cam Kırıldı", value: 0),
    Answer(title: "Çay Fiyatı Arttı", value: 0),
    Answer(title: "Toprak İçin Kavga Etti", value: 0),
    Answer(title: "Altın Fiyatı Yükseldi", value: 0),
  ],
  order: 12,
  pathAudio: "assets/sound/woman/wsound12.mp3",
  voiceSex: 0,
);

var wqSentences13 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Sokak Lambası Yandı", value: 0),
    Answer(title: "Takım Kaptanı Değişti", value: 0),
    Answer(title: "Balık Türleri Azaldı", value: 0),
    Answer(title: "Balık Sezonu Kapandı", value: 1, side: 0),
    Answer(title: "Üniversite Sınavı Başladı", value: 0),
  ],
  order: 13,
  pathAudio: "assets/sound/woman/wsound13.mp3",
  voiceSex: 0,
);

var wqSentences14 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Ödül İçin Sahneye Çıktı", value: 0),
    Answer(title: "Sınav Tarihi Belli Oldu", value: 0),
    Answer(title: "Kitap En İyi Arkadaştır", value: 0),
    Answer(title: "Yazarlar Bir Araya Geldi", value: 0),
    Answer(title: "Ünlü Sanatçı Konser Verdi", value: 1, side: 0),
  ],
  order: 14,
  pathAudio: "assets/sound/woman/wsound14.mp3",
  voiceSex: 0,
);

var wqSentences15 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Üç Kardeş Ödev Yaptı", value: 1, side: 0),
    Answer(title: "Küçük Hanım Gülümsedi", value: 0),
    Answer(title: "Kömür Ocakta Yandı", value: 0),
    Answer(title: "Takım Kaptanı Değişti", value: 0),
    Answer(title: "Balık Türleri Azaldı", value: 0),
  ],
  order: 15,
  pathAudio: "assets/sound/woman/wsound15.mp3",
  voiceSex: 0,
);

var wqSentences16 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Çocuk Sırada Bekledi", value: 0),
    Answer(title: "Eski Günleri Özledim", value: 0),
    Answer(title: "Kızın Gözleri Çok Güzeldi", value: 0),
    Answer(title: "Doktor Hasta İle İlgilendi", value: 0),
    Answer(title: " Buraya Park Etmek Yasaktır", value: 1, side: 1),
  ],
  order: 16,
  pathAudio: "assets/sound/woman/wsound16.mp3",
  voiceSex: 0,
);

var wqSentences17 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Yaşam Mücadelesi Veriyor", value: 1, side: 1),
    Answer(title: "Korku Filmi İzledim", value: 0),
    Answer(title: "Şarkı Söylemeye Başladı", value: 0),
    Answer(title: "Sınıf Başkanı Seçildi", value: 0),
    Answer(title: "Öğrenciler Mavi Önlük Giydi", value: 0),
  ],
  order: 17,
  pathAudio: "assets/sound/woman/wsound17.mp3",
  voiceSex: 0,
);

var wqSentences18 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Maç Ne Zaman Başladı", value: 0),
    Answer(title: "Sıcak Günler Geri Geldi", value: 0),
    Answer(title: "Dün Güneş Tutulması Görüldü", value: 1, side: 1),
    Answer(title: "Müzik Dinlemeyi Çok Severim", value: 0),
    Answer(title: "Güneş Işıl Işıl Parlıyor", value: 0),
  ],
  order: 18,
  pathAudio: "assets/sound/woman/wsound18.mp3",
  voiceSex: 0,
);

var wqSentences19 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Her Gün Bilgisayar Oynadı", value: 0),
    Answer(title: "Yeşil Domatesler Kızardı", value: 0),
    Answer(title: "Almanya Dünya Kupasını Kazandı", value: 0),
    Answer(title: "Telefon Numarasını Değiştirdi", value: 1, side: 1),
    Answer(title: "Okyanus Kadar Mavi", value: 0),
  ],
  order: 19,
  pathAudio: "assets/sound/woman/wsound19.mp3",
  voiceSex: 0,
);

var wqSentences20 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Yemek Tarifi Hazırladı", value: 0),
    Answer(title: "Kitap Okumak Güzeldir", value: 1, side: 1),
    Answer(title: "Eski Masa Beyaza Boyandı", value: 0),
    Answer(title: "Bu Yıl Ödül Kazandı", value: 0),
    Answer(title: "Dünya Rekoru Kırdı", value: 0),
  ],
  order: 20,
  pathAudio: "assets/sound/woman/wsound20.mp3",
  voiceSex: 0,
);

var wqSentences21 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Tıp Merkezi Açıldı", value: 0),
    Answer(title: "Kiralık Ev Aranıyor", value: 0),
    Answer(title: "Hoca Ders Anlatıyor", value: 1, side: 1),
    Answer(title: "Sıcaklık Artmaya Başladı", value: 0),
    Answer(title: "Güneş Gözlüğü İndirime Girdi", value: 0),
  ],
  order: 21,
  pathAudio: "assets/sound/woman/wsound21.mp3",
  voiceSex: 0,
);

var wqSentences22 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Hırsız Hemen Yakalandı", value: 0),
    Answer(title: "Fırtına Uyarısı Yapıldı", value: 0),
    Answer(title: "Hayat Erken Başladı", value: 0),
    Answer(title: "Kadın Söz İstedi", value: 1, side: 1),
    Answer(title: "Eski Haline Döndü", value: 0),
  ],
  order: 22,
  pathAudio: "assets/sound/woman/wsound22.mp3",
  voiceSex: 0,
);

var wqSentences23 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Öğrenci Not İstedi", value: 0),
    Answer(title: "Müzik Festivali Düzenlendi", value: 1, side: 1),
    Answer(title: "Altın Madeni Bulundu", value: 0),
    Answer(title: "Bir Ton Kömür Yandı", value: 0),
    Answer(title: "Soba Alev Aldı", value: 0),
  ],
  order: 23,
  pathAudio: "assets/sound/woman/wsound23.mp3",
  voiceSex: 0,
);

var wqSentences24 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Kazı Çalışması Yapılıyor", value: 0),
    Answer(title: "Anneme Yardım Ettim", value: 0),
    Answer(title: "Balık Türleri Azaldı", value: 1, side: 1),
    Answer(title: "Hayat Çok Güzel", value: 0),
    Answer(title: "Balık Sezonu Kapandı", value: 0),
  ],
  order: 24,
  pathAudio: "assets/sound/woman/wsound24.mp3",
  voiceSex: 0,
);

var wqSentences25 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Duvar Yeşile Boyandı", value: 0),
    Answer(title: "Halıya Çay Döküldü", value: 0),
    Answer(title: "Salon Perdesi Çok Uzun", value: 0),
    Answer(title: "Sol Eline İğne Battı", value: 0),
    Answer(title: "Ayna Yere Düştü", value: 1, side: 1),
  ],
  order: 25,
  pathAudio: "assets/sound/woman/wsound25.mp3",
  voiceSex: 0,
);

var wqSentences26 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Güneşli Günler Yaklaştı", value: 1, side: 0),
    Answer(title: "Başkan Saraya Davet Etti", value: 0),
    Answer(title: "Müzik Grubu Dağıldı", value: 0),
    Answer(title: "Kayak Sezonu Açıldı", value: 1, side: 1),
    Answer(title: "Akşam Haberleri Başladı", value: 0),
  ],
  order: 26,
  pathAudio: "assets/sound/woman/wsound26.mp3",
  voiceSex: 0,
);

var wqSentences27 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Sınıfta Şarkı Söyledi", value: 0),
    Answer(title: "Çocuk Kedi Sevdi", value: 0),
    Answer(title: "Köyde Kutlama Yapıldı", value: 1, side: 0),
    Answer(title: "Anneler Günü Kutlandı", value: 0),
    Answer(title: "Kara Delik Bulundu", value: 1, side: 1),
  ],
  order: 27,
  pathAudio: "assets/sound/woman/wsound27.mp3",
  voiceSex: 0,
);

var wqSentences28 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Ödül İçin Sahneye Çıktı", value: 1, side: 0),
    Answer(title: "Yeşil Domatesler Kızardı", value: 1, side: 1),
    Answer(title: "Bu Asansör Dört Kişilik", value: 0),
    Answer(title: "Kitaplıkta Yer Kalmadı", value: 0),
    Answer(title: "Markette İndirim Vardı", value: 0),
  ],
  order: 28,
  pathAudio: "assets/sound/woman/wsound28.mp3",
  voiceSex: 0,
);

var wqSentences29 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Personel Sayısı Azaldı", value: 0),
    Answer(title: "Sınava Zor Yetişti", value: 1, side: 1),
    Answer(title: "Misafir İçin Yemek Hazırladı", value: 1, side: 0),
    Answer(title: "Hastane Başhekimi Geldi", value: 0),
    Answer(title: "Doktor Reçete Yazdı", value: 0),
  ],
  order: 29,
  pathAudio: "assets/sound/woman/wsound29.mp3",
  voiceSex: 0,
);

var wqSentences30 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Bugün Diyete Başladım", value: 1, side: 0),
    Answer(title: "Müzik Dinlemeyi Çok Severim", value: 0),
    Answer(title: "Güneş Işıl Işıl Parlıyor", value: 0),
    Answer(title: "Büyük İndirim Başladı", value: 1, side: 1),
    Answer(title: "Spor Sağlık İçin Önemli", value: 0),
  ],
  order: 30,
  pathAudio: "assets/sound/woman/wsound30.mp3",
  voiceSex: 0,
);

var wqSentences31 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Uçak Seferi İptal Edildi", value: 0),
    Answer(title: "Dergi Sayısı Azaldı", value: 1, side: 0),
    Answer(title: "Öğretmen Ders Verdi", value: 1, side: 1),
    Answer(title: "Eski Günleri Özledim", value: 0),
    Answer(title: "Çocuk Sırada Bekledi", value: 0),
  ],
  order: 31,
  pathAudio: "assets/sound/woman/wsound31.mp3",
  voiceSex: 0,
);

var wqSentences32 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Kuş Yuva Yaptı", value: 1, side: 0),
    Answer(title: "İşçi Maaş Aldı", value: 0),
    Answer(title: "Büyük Savaş Başladı", value: 0),
    Answer(title: "Ağaçlar Çiçek Açtı", value: 1, side: 1),
    Answer(title: "Ormana Fidan Dikti", value: 0),
  ],
  order: 32,
  pathAudio: "assets/sound/woman/wsound32.mp3",
  voiceSex: 0,
);

var wqSentences33 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Sınav Tarihi Belli Oldu", value: 1, side: 0),
    Answer(title: "Kitap En İyi Arkadaştır", value: 0),
    Answer(title: "Yazarlar Bir Araya Geldi", value: 1, side: 1),
    Answer(title: "Dergi Sayısı Azaldı", value: 0),
    Answer(title: "Uçak Seferi İptal Edildi", value: 0),
  ],
  order: 33,
  pathAudio: "assets/sound/woman/wsound33.mp3",
  voiceSex: 0,
);

var wqSentences34 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Zil Erken Çaldı", value: 0),
    Answer(title: "Çalışmak Başarı Getirir", value: 0),
    Answer(title: "Otobüs Kaza Yaptı", value: 0),
    Answer(title: "Hava Erken Karardı", value: 1, side: 0),
    Answer(title: "Orman Yangınları Arttı", value: 1, side: 1),
  ],
  order: 34,
  pathAudio: "assets/sound/woman/wsound34.mp3",
  voiceSex: 0,
);

var wqSentences35 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Adam Gazete Okudu", value: 1, side: 1),
    Answer(title: "Sıcak Günler Geri Geldi", value: 0),
    Answer(title: "Güneş Tutulması Görüldü", value: 0),
    Answer(title: "Kitap Okumak Güzeldir", value: 1, side: 0),
    Answer(title: "Sefer Saati Değişti", value: 0),
  ],
  order: 35,
  pathAudio: "assets/sound/woman/wsound35.mp3",
  voiceSex: 0,
);

var mqSentences1 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Bebek Arabası Satıldı", value: 0),
    Answer(title: "Kuş Yuva Yaptı", value: 1, side: 0),
    Answer(title: "Yeni Bölüm Başladı", value: 0),
    Answer(title: "Çizgi Film İzledi", value: 0),
    Answer(title: "Araba Kaza Yaptı", value: 0),
  ],
  order: 1,
  pathAudio: "assets/sound/man/msound1.mp3",
  voiceSex: 1,
);

var mqSentences2 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Doktor İğne Yaptı", value: 0),
    Answer(title: "Kardeşim Futbol Oynadı", value: 0),
    Answer(title: "Akşam Düğün Var", value: 0),
    Answer(title: "Araba Ani Fren Yaptı", value: 1, side: 0),
    Answer(title: "Manavdan Elma Aldım", value: 0),
  ],
  order: 2,
  pathAudio: "assets/sound/man/msound2.mp3",
  voiceSex: 1,
);

var mqSentences3 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Film İzlenme Rekoru Kırdı", value: 0),
    Answer(title: "Annem Çamaşır Yıkadı", value: 1, side: 1),
    Answer(title: "Rüyamda Seni Gördüm", value: 0),
    Answer(title: "Yemek Tarifi Hazırladı", value: 0),
    Answer(title: "Çocuk Süt İçti", value: 0),
  ],
  order: 3,
  pathAudio: "assets/sound/man/msound3.mp3",
  voiceSex: 1,
);
var mqSentences4 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Yağmurlu Günler Başladı", value: 0),
    Answer(title: "Hava Çok Soğuktu", value: 0),
    Answer(title: "Kız Kardeşim Geldi", value: 0),
    Answer(title: "Şarkı Söylemeye Başladı", value: 0),
    Answer(title: "Adam Gazete Okudu", value: 1, side: 1),
  ],
  order: 4,
  pathAudio: "assets/sound/man/msound4.mp3",
  voiceSex: 1,
);

var mqSentences5 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Çocuk Süt İçti", value: 0),
    Answer(title: "Yaşam Mücadelesi Veriyor", value: 0),
    Answer(title: "Yemek Tarifi Hazırladı", value: 1, side: 0),
    Answer(title: "Kız Kardeşim Geldi", value: 1, side: 1),
    Answer(title: "Hava Çok Soğuktu", value: 0),
  ],
  order: 5,
  pathAudio: "assets/sound/man/msound5.mp3",
  voiceSex: 0,
);

var mqSentences6 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Siyah Gözlük Kırıldı", value: 0),
    Answer(title: "Ucuz Bilet İstedi", value: 0),
    Answer(title: "Kedi İçeri Girdi", value: 0),
    Answer(title: "Tavuk Kümese Girdi", value: 1, side: 0),
    Answer(title: "Ona Söz Verdim", value: 0),
  ],
  order: 6,
  pathAudio: "assets/sound/man/msound6.mp3",
  voiceSex: 1,
);

var mqSentences7 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Yeni Ev Satın Aldı", value: 0),
    Answer(title: "Kahvesini Alıp Oturdu", value: 0),
    Answer(title: "Erken Kayıt Başladı", value: 1, side: 0),
    Answer(title: "Otel Bu Sene Yenilendi", value: 0),
    Answer(title: "Kömür Ocakta Yandı", value: 0),
  ],
  order: 7,
  pathAudio: "assets/sound/man/msound7.mp3",
  voiceSex: 1,
);

var mqSentences8 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Şişe Cam Kırıldı", value: 1, side: 0),
    Answer(title: "Çay Fiyatı Arttı", value: 0),
    Answer(title: "Sefer Saati Değişti", value: 0),
    Answer(title: "İyi Bir Baba Oldu", value: 0),
    Answer(title: "İki Ay Önce Evlendi", value: 0),
  ],
  order: 8,
  pathAudio: "assets/sound/man/msound8.mp3",
  voiceSex: 1,
);

var mqSentences9 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Spor Salonuna Kayıt Yaptırdı", value: 0),
    Answer(title: "Çocuk İşitme Cihazı Kullanıyor", value: 0),
    Answer(title: "Hesabı Ödemeden Çıktı", value: 0),
    Answer(title: "Bebek Annesine Baktı", value: 1, side: 0),
    Answer(title: "Sanayi Üretimi Yükselişe Geçti", value: 0),
  ],
  order: 9,
  pathAudio: "assets/sound/man/msound9.mp3",
  voiceSex: 1,
);

var mqSentences10 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Müzik Dinlemeyi Çok Severim", value: 0),
    Answer(title: "Güneş Işıl Işıl Parlıyor", value: 1, side: 0),
    Answer(title: "Spor Sağlık İçin Önemli", value: 0),
    Answer(title: "Büyük İndirim Başladı", value: 0),
    Answer(title: "Hoca Ders Anlatıyor", value: 0),
  ],
  order: 10,
  pathAudio: "assets/sound/man/msound10.mp3",
  voiceSex: 1,
);

var mqSentences11 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Herkes Fikir Verdi", value: 0),
    Answer(title: "En Büyük Gemi Seçildi", value: 0),
    Answer(title: "Orman Yangınları Arttı", value: 0),
    Answer(title: "Bu Elbise Çok Şık", value: 0),
    Answer(title: "Sıcaklık Artmaya Başladı", value: 1, side: 0),
  ],
  order: 11,
  pathAudio: "assets/sound/man/msound11.mp3",
  voiceSex: 1,
);

var mqSentences12 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Bebek Annesine Sarıldı", value: 1, side: 0),
    Answer(title: "Asker Selam Verdi", value: 0),
    Answer(title: "Bahçeden Papatya Topladım", value: 0),
    Answer(title: "Bıçak Çok Keskin", value: 0),
    Answer(title: "Köprüden Koşarak Geçti", value: 0),
  ],
  order: 12,
  pathAudio: "assets/sound/man/msound12.mp3",
  voiceSex: 1,
);

var mqSentences13 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "İyi Bir Baba Oldu", value: 0),
    Answer(title: "İki Ay Önce Evlendi", value: 0),
    Answer(title: "Yemekten Önce Su İçti", value: 0),
    Answer(title: "Doktor Reçete Yazdı", value: 1, side: 0),
    Answer(title: "Personel Sayısı Azaldı", value: 0),
  ],
  order: 13,
  pathAudio: "assets/sound/man/msound13.mp3",
  voiceSex: 1,
);

var mqSentences14 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Fındık Fiyatı Yükseldi", value: 0),
    Answer(title: "Bir Kova Su Getirdi", value: 0),
    Answer(title: "Tiyatro Bileti Aldım", value: 1, side: 0),
    Answer(title: "Ünlü Sanat Eseri Satıldı", value: 0),
    Answer(title: "Fabrika Ucuza Satıldı", value: 0),
  ],
  order: 14,
  pathAudio: "assets/sound/man/msound14.mp3",
  voiceSex: 1,
);

var mqSentences16 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Pazardan Meyve Satın Aldı", value: 0),
    Answer(title: "Takım Kaptanı Değişti", value: 0),
    Answer(title: "Sokak Lambası Yandı", value: 0),
    Answer(title: "Üniversite Sınavı Başladı", value: 1, side: 1),
    Answer(title: "Telefonun Ekranı Kırıldı", value: 0),
  ],
  order: 16,
  pathAudio: "assets/sound/man/msound16.mp3",
  voiceSex: 1,
);

var mqSentences17 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Bahçeye Salıncak Kurdu", value: 0),
    Answer(title: "Belediye Binası Yenilendi", value: 0),
    Answer(title: "Bu Asansör Dört Kişilik", value: 0),
    Answer(title: "Markette İndirim Vardı", value: 0),
    Answer(title: "Kitaplıkta Yer Kalmadı", value: 1, side: 1),
  ],
  order: 17,
  pathAudio: "assets/sound/man/msound17.mp3",
  voiceSex: 1,
);

var mqSentences18 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Tüm Bilgileri Dosyada Sakladı", value: 0),
    Answer(title: "Meyve Sepeti Hazırladı", value: 1, side: 1),
    Answer(title: "Yol Çok Uzun", value: 0),
    Answer(title: "Kapı Aniden Kapandı", value: 0),
    Answer(title: "Annem Sevinçten Ağladı", value: 0),
  ],
  order: 18,
  pathAudio: "assets/sound/man/msound18.mp3",
  voiceSex: 1,
);

var mqSentences19 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Hızla Yola Çıktı", value: 1, side: 1),
    Answer(title: "Bu Elbise Çok Şık", value: 0),
    Answer(title: "Gözlük İndirime Girdi", value: 0),
    Answer(title: "Hoca Ders Anlatıyor", value: 0),
    Answer(title: "İklim Değişikliği Uyarısı Yapıldı", value: 0),
  ],
  order: 19,
  pathAudio: "assets/sound/man/msound19.mp3",
  voiceSex: 1,
);

var mqSentences20 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Soru Kolay Geldi", value: 0),
    Answer(title: "Boş Oda Yok", value: 0),
    Answer(title: "Almanya Dünya Kupasını Kazandı", value: 1, side: 1),
    Answer(title: "Meclis Hemen Toplandı", value: 0),
    Answer(title: "Polis Şifre Çözdü", value: 0),
  ],
  order: 20,
  pathAudio: "assets/sound/man/msound20.mp3",
  voiceSex: 1,
);

var mqSentences21 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Sınav Tarihi Belli Oldu", value: 0),
    Answer(title: "Suya Zam Geldi", value: 0),
    Answer(title: "Küçük Çocuk Yardım Bekledi", value: 0),
    Answer(title: "Evde Tek Başına Kaldı", value: 0),
    Answer(title: "Yazarlar Bir Araya Geldi", value: 1, side: 1),
  ],
  order: 21,
  pathAudio: "assets/sound/man/msound21.mp3",
  voiceSex: 1,
);

var mqSentences22 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Annem Sevinçten Ağladı", value: 0),
    Answer(title: "Yolda Para Buldum", value: 0),
    Answer(title: "Yeni Devlet Kuruldu", value: 0),
    Answer(title: "Sınav Tarihi Belli Oldu", value: 1, side: 1),
    Answer(title: "Herkes Fikir Verdi", value: 0),
  ],
  order: 22,
  pathAudio: "assets/sound/man/msound22.mp3",
  voiceSex: 1,
);

var mqSentences23 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Banka Bugün Erken Kapandı", value: 0),
    Answer(title: "İşçi Maaş Aldı", value: 0),
    Answer(title: "Öğrenciler Mavi Önlük Giydi", value: 1, side: 1),
    Answer(title: "Büyük Savaş Başladı", value: 0),
    Answer(title: "Ormana Fidan Dikti", value: 0),
  ],
  order: 23,
  pathAudio: "assets/sound/man/msound23.mp3",
  voiceSex: 1,
);

var mqSentences24 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Almanya Dünya Kupasını Kazandı", value: 0),
    Answer(title: "Meslek Seçimi Yaptı", value: 0),
    Answer(title: "Öğrenci Not İstedi", value: 0),
    Answer(title: "Müzik Festivali Düzenlendi", value: 0),
    Answer(title: "Bahçeye Salıncak Kurdu", value: 1, side: 1),
  ],
  order: 24,
  pathAudio: "assets/sound/man/msound24.mp3",
  voiceSex: 1,
);

var mqSentences25 = new Question(
  title: "'Sadece sağ kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 1,
  answer: <Answer>[
    Answer(title: "Hırsız Hemen Yakalandı", value: 0),
    Answer(title: "Pizza Hamuru Kalın Oldu", value: 0),
    Answer(title: "Kahvaltıda Yumurta Yedi", value: 0),
    Answer(title: "Fırtına Uyarısı Yapıldı", value: 1, side: 1),
    Answer(title: "Bir Ton Kömür Yandı", value: 0),
  ],
  order: 25,
  pathAudio: "assets/sound/man/msound25.mp3",
  voiceSex: 1,
);

var mqSentences26 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Sıra Sana Geldi", value: 1, side: 0),
    Answer(title: "Güzel Resim Çizdi", value: 1, side: 1),
    Answer(title: "Siyah Kalem Verdi", value: 0),
    Answer(title: "Zaman Çabuk Geçti", value: 0),
    Answer(title: "Acı Biber Yedi", value: 0),
  ],
  order: 26,
  pathAudio: "assets/sound/man/msound26.mp3",
  voiceSex: 0,
);

var mqSentences27 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Hava Çok Soğuktu", value: 0),
    Answer(title: "Kız Kardeşim Geldi", value: 1, side: 0),
    Answer(title: "Korku Filmi İzledim", value: 0),
    Answer(title: "Şarkı Söylemeye Başladı", value: 0),
    Answer(title: "Adam Gazete Okudu", value: 1, side: 1),
  ],
  order: 27,
  pathAudio: "assets/sound/man/msound27.mp3",
  voiceSex: 0,
);

var mqSentences28 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Sınav Yeri Belirlendi", value: 1, side: 1),
    Answer(title: "Bilim Başarıyla İlerliyor", value: 0),
    Answer(title: "Yeni Bölüm Yayınlandı", value: 0),
    Answer(title: "Sinemaya Yeni Film Geldi", value: 1, side: 0),
    Answer(title: "Otobüs Durağa Girdi", value: 0),
  ],
  order: 28,
  pathAudio: "assets/sound/man/msound28.mp3",
  voiceSex: 0,
);

var mqSentences29 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Mor Bisiklet Aldı", value: 0),
    Answer(title: "Güneş Gözlüğü İndirime Girdi", value: 1, side: 0),
    Answer(title: "Eski Masa Beyaza Boyandı", value: 0),
    Answer(title: "Bu Yıl Ödül Kazandı", value: 0),
    Answer(title: "Köprüden Koşarak Geçti", value: 1, side: 1),
  ],
  order: 29,
  pathAudio: "assets/sound/man/msound29.mp3",
  voiceSex: 0,
);

var mqSentences30 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Genç Kız Evi Temizledi", value: 0),
    Answer(title: "Duvara Resim Çizdi", value: 1, side: 0),
    Answer(title: "Alevlerin Arasında Kaldı", value: 0),
    Answer(title: "Pizza Hamuru Kalın Oldu", value: 0),
    Answer(title: "Polis Yanlış Kişiyi Tutukladı", value: 1, side: 1),
  ],
  order: 30,
  pathAudio: "assets/sound/man/msound30.mp3",
  voiceSex: 0,
);

var mqSentences31 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Annem Sevinçten Ağladı", value: 1, side: 1),
    Answer(title: "Otobüs Kaza Yaptı", value: 0),
    Answer(title: "Bugün Deprem Oldu", value: 0),
    Answer(title: "Bahçeye Salıncak Kurdu", value: 1, side: 0),
    Answer(title: "Su İçmek Faydalı", value: 0),
  ],
  order: 31,
  pathAudio: "assets/sound/man/msound31.mp3",
  voiceSex: 0,
);

var mqSentences32 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Garson Yemek Getirdi", value: 0),
    Answer(title: "Çocuk Şiir Okudu", value: 0),
    Answer(title: "Lise Mezunu İş Arıyor", value: 1, side: 1),
    Answer(title: "Ucuz Bilet İstedi", value: 1, side: 0),
    Answer(title: "Üç Kardeş Ödev Yaptı", value: 0),
  ],
  order: 32,
  pathAudio: "assets/sound/man/msound32.mp3",
  voiceSex: 0,
);

var mqSentences33 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Su İçmek Faydalı", value: 1, side: 1),
    Answer(title: "Otobüs Kaza Yaptı", value: 1, side: 0),
    Answer(title: "Bugün Deprem Oldu", value: 0),
    Answer(title: "Yeni Devlet Kuruldu", value: 0),
    Answer(title: "Yolda Para Buldum", value: 0),
  ],
  order: 33,
  pathAudio: "assets/sound/man/msound33.mp3",
  voiceSex: 0,
);

var mqSentences34 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Araba Ani Fren Yaptı", value: 1, side: 1),
    Answer(title: "Babam Balık Tuttu", value: 0),
    Answer(title: "İki Fincan Kahve Aldı", value: 0),
    Answer(title: "Yarın Okulda Ders Var", value: 1, side: 0),
    Answer(title: "Soğuk Su İçti", value: 0),
  ],
  order: 34,
  pathAudio: "assets/sound/man/msound34.mp3",
  voiceSex: 0,
);

var mqSentences35 = new Question(
  title:
      " 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 2,
  answer: <Answer>[
    Answer(title: "Uçak Seyahati Yaptım", value: 0),
    Answer(title: "Akşam Kardeşim Geldi", value: 1, side: 0),
    Answer(title: "Akşam Düğün Var", value: 1, side: 1),
    Answer(title: "Uygun Fiyata Bilet Aldım", value: 0),
    Answer(title: "Akşam Misafir Geldi", value: 0),
  ],
  order: 35,
  pathAudio: "assets/sound/man/msound35.mp3",
  voiceSex: 0,
);

var mqSentences15 = new Question(
  title: "'Sadece sol kulağınızdan' duyduğunuz cümleyi işaretleyiniz.",
  side: 0,
  answer: <Answer>[
    Answer(title: "Okyanus Kadar Mavi", value: 0),
    Answer(title: "Uygulanan Tedavi Yanıt Verdi", value: 1, side: 0),
    Answer(title: "Hastane Başhekimi Geldi", value: 0),
    Answer(title: "Doktor Reçete Yazdı", value: 0),
    Answer(title: "Personel Sayısı Azaldı", value: 0),
  ],
  order: 15,
  pathAudio: "assets/sound/man/msound15.mp3",
  voiceSex: 1,
);

