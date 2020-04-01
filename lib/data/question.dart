class Question{
  String title;
  int side; // 0 left / 1 right / 2 both
  List<Answer> answer;
  String pathAudio;
  int voiceSex; // 0 - woman / 1 - man
  int order;

  Question({
    this.voiceSex,
    this.pathAudio,
    this.order,
    this.title,
    this.side,
    this.answer
  });
}

class Answer{
  double value;
  String title;

  Answer({this.title, this.value});
}

var wQuestions = [
  wq1,
  wq2,
  wq3
];

var mQuestions = [
  mq1,
];

var wq1 = new Question(
    title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
    side: 0,
    answer: <Answer>[
      Answer(title: 'Akşam Kardeşim Geldi', value: 1),
      Answer(title: 'Öğrenciler Kitap Okudu', value: 0),
      Answer(title: 'Oyuncu Maça Hazırlandı', value: 0),
      Answer(title: 'Sınav Sonuçları Açıklandı', value: 0),
      Answer(title: 'Bebek Arabası Satıldı', value: 0),    
    ],
    order: 0,
    pathAudio: 'assets/sound/woman/wsound1.mp3',
    voiceSex: 0,
  );

  var mq1 = new Question(
    title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
    side: 0,
    answer: <Answer>[
      Answer(title: 'Bebek Arabası Satıldı', value: 0),
      Answer(title: 'Kuş Yuva Yaptı', value: 1),
      Answer(title: 'Yeni Bölüm Başladı', value: 0),
      Answer(title: 'Çizgi Film İzledi', value: 0),
      Answer(title: 'Araba Kaza Yaptı', value: 0),    
    ],
    order: 0,
    pathAudio: 'assets/sound/woman/wsound1.mp3',
    voiceSex: 0,
  );

  var wq2 = new Question(
    title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
    side: 1,
    answer: <Answer>[
      Answer(title: 'Bebek Beşikte Uyudu', value: 0),
      Answer(title: 'Kız Elbise Giydi ', value: 0),
      Answer(title: 'Çay İkram Etti', value: 1),
      Answer(title: 'Çocuk Hızlı Koştu', value: 0),
      Answer(title: 'Saatler Yeniden Ayarlandı', value: 0),    
    ],
    order: 0,
    pathAudio: 'assets/sound/woman/wsound1.mp3',
    voiceSex: 0,
  );  
  
  var wq3 = new Question(
    title: 'Hem sağ kulağınızdan duyduğunuz cümleyi, hem de sol kulağınızdan duyduğunuz cümleleri işaretleyiniz.',
    side: 2,
    answer: <Answer>[
      Answer(title: 'Tıp Merkezi Açıldı', value: 1),
      Answer(title: 'Kiralık Ev Aranıyor', value: 0),
      Answer(title: 'Hava Erken Karardı', value: 0),
      Answer(title: 'Sıcaklık Artmaya Başladı', value: 1),
      Answer(title: 'Orman Yangınları Arttı', value: 0),    
    ],
    order: 0,
    pathAudio: 'assets/sound/woman/wsound1.mp3',
    voiceSex: 0,
  );

// List questions = <Question>[
//   Question(
//     title: 'Sadece sol kulağınızdan duyduğunuz cümleyi işaretleyiniz.',
//     a1: Answer(title: 'Akşam Kardeşim Geldi', value: 1),
//     a2: Answer(title: 'Öğrenciler Kitap Okudu', value: 0),
//     a3: Answer(title: 'Oyuncu Maça Hazırlandı', value: 0),
//     a4: Answer(title: 'Sınav Sonuçları Açıklandı', value: 0),
//     a5: Answer(title: 'Bebek Arabası Satıldı', value: 0),
//     order: 0,
//     pathAudio: 'assets/sound/woman/wsound1.mp3',
//     voiceSex: 0,
//   ),

  // 'Akşam Kardeşim Geldi',
  // 'Çay İkram Etti',
  // 'Kuş Kafesten Uçtu',
  // 'Duvara Resim Çizdi',
  // 'Orman Yangınları Arttı',

  // 'Tıp Merkezi Açıldı',
  // 'Sıcaklık Artmaya Başladı',

  // 'Köprüden Koşarak Geçti',
  // 'Yolcu Otobüsü Kaza Yaptı',
  // 'Her Gün Bilgisayar Oynadı',
  // 'Güneş Gözlüğü Satın aldım',
  // 'Uçak Alev Aldı',
  // 'Köprüden Koşarak Geçti',
  // 'Kömür Ocakta Yandı',
  // 'Balık Sezonu Kapandı',
  // 'Ünlü Sanatçı Konser Verdi',
  // 'Üç Kardeş Ödev Yaptı',
  // 'Buraya Park Etmek Yasaktır',
  // 'Yaşam Mücadelesi Veriyor',
  // 'Dün Güneş Tutulması Görüldü',
  // 'Telefon Numarasını Değiştirdi',
  // 'Kitap Okumak Güzeldir',
  // 'Hoca Ders Anlatıyor',
  // 'Kadın Söz İstedi',
  // 'Müzik Festivali Düzenlendi',
  // 'Balık Türleri Azaldı',
  // 'Ayna Yere Düştü',

  // 'Güneşli Günler Yaklaştı',
  // 'Kayak Sezonu Açıldı',

  // 'Köyde Kutlama Yapıldı',
  // 'Kara Delik Bulundu',

  // 'Ödül İçin Sahneye Çıktı',
  // 'Yeşil Domatesler Kızardı',

  // 'Sınava Zor Yetişti',
  // 'Misafir İçin Yemek Hazırladı',

  // 'Bugün Diyete Başladım',
  // 'Büyük İndirim Başladı',

  // 'Dergi Sayısı Azaldı',
  // 'Öğretmen Ders Verdi',

  // 'Kuş Yuva Yaptı',
  // 'Ağaçlar Çiçek Açtı',

  // 'Sınav Tarihi Belli Oldu',
  // 'Yazarlar Bir Araya Geldi',

  // 'Hava Erken Karardı',
  // 'Orman Yangınları Arttı',

  // 'Adam Gazete Okudu',
  // 'Kitap Okumak Güzeldir'
// ];