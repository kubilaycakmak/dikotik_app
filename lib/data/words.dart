import 'package:dikotik_app/data/question.dart';
import 'package:dikotik_app/pages/result_page.dart';
import 'package:dikotik_app/pages/test_page.dart';
import 'package:dikotik_app/pages/warning_page.dart';
import 'package:flutter/material.dart';


var wqWord1 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'yan', value: 0),
    Answer(title: 'yat', value: 0),
    Answer(title: 'hep', value: 0),
    Answer(title: 'yağ', value: 1, side: 1),
    Answer(title: 'vah', value: 1, side: 0),
  ],
  order: 1,
  pathAudio: 'assets/sound1/woman/1wWordSound.mp3',
  voiceSex: 0,
);

var wqWord2 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'saz', value: 0),
    Answer(title: 'hiç', value: 0),
    Answer(title: 'tak', value: 0),
    Answer(title: 'top', value: 1, side: 1),
    Answer(title: 'ton', value: 1, side: 0),
  ],
  order: 2,
  pathAudio: 'assets/sound1/woman/2wWordSound.mp3',
  voiceSex: 0,
);

var wqWord3 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'şık', value: 1),
    Answer(title: 'şir', value: 0),
    Answer(title: 'şey', value: 0),
    Answer(title: 'saç', value: 0),
    Answer(title: 'sen', value: 0),
  ],
  order: 3,
  pathAudio: 'assets/sound1/woman/3wWordSound.mp3',
  voiceSex: 0,
);

var wqWord4 = new Question(
  title: 'Sadece SAĞ kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'sel', value: 0),
    Answer(title: 'sen', value: 1),
    Answer(title: 'şal', value: 0),
    Answer(title: 'mum', value: 0),
    Answer(title: 'şiş', value: 0),
  ],
  order: 4,
  pathAudio: 'assets/sound1/woman/4wWordSound.mp3',
  voiceSex: 0,
);

var wqWord5 = new Question(
  title: 'Sadece SAĞ kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'kök', value: 0),
    Answer(title: 'saz', value: 1),
    Answer(title: 'dal', value: 0),
    Answer(title: 'sar', value: 0),
    Answer(title: 'çim', value: 0),
  ],
  order: 5,
  pathAudio: 'assets/sound1/woman/5wWordSound.mp3',
  voiceSex: 0,
);

var wqWord6 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'ak', value: 1),
    Answer(title: 'del', value: 0),
    Answer(title: 'dem', value: 0),
    Answer(title: 'saç', value: 0),
    Answer(title: 'bak', value: 0),
  ],
  order: 6,
  pathAudio: 'assets/sound1/woman/6wWordSound.mp3',
  voiceSex: 0,
);

var wqWord7 = new Question(
  title: 'Sadece SOL kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'dem', value: 0),
    Answer(title: 'bak', value: 0),
    Answer(title: 'del', value: 1),
    Answer(title: 'gör', value: 0),
    Answer(title: 'ye', value: 0),
  ],
  order: 7,
  pathAudio: 'assets/sound1/woman/7wWordSound.mp3',
  voiceSex: 0,
);

var wqWord8 = new Question(
  title: 'Sadece SOL kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'fes', value: 0),
    Answer(title: 'bak', value: 0),
    Answer(title: 'küs', value: 0),
    Answer(title: 'tek', value: 0),
    Answer(title: 'fal', value: 1),
  ],
  order: 8,
  pathAudio: 'assets/sound1/woman/8wWordSound.mp3',
  voiceSex: 0,
);

var wqWord9 = new Question(
  title: 'Sadece SOL kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'don', value: 0),
    Answer(title: 'bak', value: 0),
    Answer(title: 'fay', value: 1),
    Answer(title: 'sap', value: 0),
    Answer(title: 'tim', value: 0),
  ],
  order: 9,
  pathAudio: 'assets/sound1/woman/9wWordSound.mp3',
  voiceSex: 0,
);

var wqWord10 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'kil', value: 0),
    Answer(title: 'kalp', value: 0),
    Answer(title: 'del', value: 0),
    Answer(title: 'geç', value: 1),
    Answer(title: 'genç', value: 0),
  ],
  order: 10,
  pathAudio: 'assets/sound1/woman/10wWordSound.mp3',
  voiceSex: 0,
);

var wqWord11 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'sen', value: 0),
    Answer(title: 'kim', value: 0),
    Answer(title: 'dal', value: 0),
    Answer(title: 'kal', value: 1),
    Answer(title: 'kalp', value: 0),
  ],
  order: 11,
  pathAudio: 'assets/sound1/woman/11wWordSound.mp3',
  voiceSex: 0,
);

var wqWord12 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'kil', value: 1),
    Answer(title: 'ben', value: 0),
    Answer(title: 'bal', value: 0),
    Answer(title: 'gök', value: 0),
    Answer(title: 'kim', value: 0),
  ],
  order: 12,
  pathAudio: 'assets/sound1/woman/12wWordSound.mp3',
  voiceSex: 0,
);

var wqWord13 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'fen', value: 0),
    Answer(title: 'ben', value: 0),
    Answer(title: 'bot', value: 0),
    Answer(title: 'buz', value: 1),
    Answer(title: 'genç', value: 0),
  ],
  order: 13,
  pathAudio: 'assets/sound1/woman/13wWordSound.mp3',
  voiceSex: 0,
);

var wqWord14 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'ten', value: 0),
    Answer(title: 'tel', value: 1),
    Answer(title: 'şey', value: 0),
    Answer(title: 'şiş', value: 0),
    Answer(title: 'yem', value: 0),
  ],
  order: 14,
  pathAudio: 'assets/sound1/woman/14wWordSound.mp3',
  voiceSex: 0,
);

var wqWord15 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'ben', value: 0),
    Answer(title: 'Türk', value: 0),
    Answer(title: 'saz', value: 0),
    Answer(title: 'nem', value: 0),
    Answer(title: 'tüm', value: 1),
  ],
  order: 15,
  pathAudio: 'assets/sound1/woman/15wWordSound.mp3',
  voiceSex: 0,
);

var wqWord16 = new Question(
  title: 'Sadece SAĞ kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'şey', value: 0),
    Answer(title: 'bal', value: 1, side: 1),
    Answer(title: 'dal', value: 0),
    Answer(title: 'gam', value: 0),
    Answer(title: 'şiş', value: 0),
  ],
  order: 16,
  pathAudio: 'assets/sound1/woman/16wWordSound.mp3',
  voiceSex: 0,
);

var wqWord17 = new Question(
  title: 'Sadece SAĞ kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'çim', value: 1, side: 1),
    Answer(title: 'çil', value: 0),
    Answer(title: 'dans', value: 0),
    Answer(title: 'gül', value: 0),
    Answer(title: 'ten', value: 0),
  ],
  order: 17,
  pathAudio: 'assets/sound1/woman/17wWordSound.mp3',
  voiceSex: 0,
);

var wqWord18 = new Question(
  title: 'Sadece SAĞ kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'ben', value: 0),
    Answer(title: 'al', value: 0),
    Answer(title: 'dal', value: 0),
    Answer(title: 'çöp', value: 1, side: 1),
    Answer(title: 'çöl', value: 0),
  ],
  order: 18,
  pathAudio: 'assets/sound1/woman/18wWordSound.mp3',
  voiceSex: 0,
);

var wqWord19 = new Question(
  title: 'Sadece SAĞ kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'renk', value: 0),
    Answer(title: 'kas', value: 0),
    Answer(title: 'kan', value: 0),
    Answer(title: 'fay', value: 0),
    Answer(title: 'fark', value: 1, side: 1),
  ],
  order: 19,
  pathAudio: 'assets/sound1/woman/19wWordSound.mp3',
  voiceSex: 0,
);

var wqWord20 = new Question(
  title: 'Sadece SAĞ kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'nar', value: 0),
    Answer(title: 'say', value: 0),
    Answer(title: 'çil', value: 0),
    Answer(title: 'kep', value: 0),
    Answer(title: 'nem', value: 1, side: 1),
  ],
  order: 20,
  pathAudio: 'assets/sound1/woman/20wWordSound.mp3',
  voiceSex: 0,
);

var wqWord21 = new Question(
  title: 'Sadece SAĞ kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'sar', value: 0),
    Answer(title: 'fay', value: 0),
    Answer(title: 'kalp', value: 0),
    Answer(title: 'çöp', value: 0),
    Answer(title: 'say', value: 1, side: 1),
  ],
  order: 21,
  pathAudio: 'assets/sound1/woman/21wWordSound.mp3',
  voiceSex: 0,
);

var wqWord22 = new Question(
  title: 'Sadece SAĞ kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'nem', value: 0),
    Answer(title: 'yay', value: 0),
    Answer(title: 'siz', value: 1, side: 1),
    Answer(title: 'kap', value: 0),
    Answer(title: 'sis', value: 0),
  ],
  order: 22,
  pathAudio: 'assets/sound1/woman/22wWordSound.mp3',
  voiceSex: 0,
);

var wqWord23 = new Question(
  title: 'Sadece SAĞ kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'kil', value: 0),
    Answer(title: 'yan', value: 0),
    Answer(title: 'kir', value: 1, side: 1),
    Answer(title: 'kas', value: 0),
    Answer(title: 'sel', value: 0),
  ],
  order: 23,
  pathAudio: 'assets/sound1/woman/23wWordSound.mp3',
  voiceSex: 0,
);

var wqWord24 = new Question(
  title: 'Sadece SAĞ kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'kir', value: 0),
    Answer(title: 'hal', value: 1, side: 1),
    Answer(title: 'şey', value: 0),
    Answer(title: 'göl', value: 0),
    Answer(title: 'hak', value: 0),
  ],
  order: 24,
  pathAudio: 'assets/sound1/woman/24wWordSound.mp3',
  voiceSex: 0,
);

var wqWord25 = new Question(
  title: 'Sadece SAĞ kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'mert', value: 0),
    Answer(title: 'gül', value: 1, side: 1),
    Answer(title: 'seç', value: 0),
    Answer(title: 'ser', value: 0),
    Answer(title: 'göl', value: 0),
  ],
  order: 25,
  pathAudio: 'assets/sound1/woman/25wWordSound.mp3',
  voiceSex: 0,
);

var wqWord26 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'can', value: 1, side: 1),
    Answer(title: 'Türk', value: 0),
    Answer(title: 'cam', value: 1, side: 0),
    Answer(title: 'nem', value: 0),
    Answer(title: 'şiş', value: 0),
  ],
  order: 26,
  pathAudio: 'assets/sound1/woman/26wWordSound.mp3',
  voiceSex: 0,
);

var wqWord27 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'cem', value: 1, side: 0),
    Answer(title: 'cep', value: 1, side: 1),
    Answer(title: 'tüp', value: 0),
    Answer(title: 'sap', value: 0),
    Answer(title: 'çil', value: 0),
  ],
  order: 27,
  pathAudio: 'assets/sound1/woman/27wWordSound.mp3',
  voiceSex: 0,
);

var wqWord28 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'çöp', value: 0),
    Answer(title: 'dal', value: 1, side: 1),
    Answer(title: 'genç', value: 0),
    Answer(title: 'dağ', value: 1, side: 0),
    Answer(title: 'mont', value: 0),
  ],
  order: 28,
  pathAudio: 'assets/sound1/woman/28wWordSound.mp3',
  voiceSex: 0,
);

var wqWord29 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'mars', value: 0),
    Answer(title: 'tüm', value: 0),
    Answer(title: 'tok', value: 1, side: 0),
    Answer(title: 'tip', value: 0),
    Answer(title: 'top', value: 1, side: 1),
  ],
  order: 29,
  pathAudio: 'assets/sound1/woman/29wWordSound.mp3',
  voiceSex: 0,
);

var wqWord30 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'gör', value: 1, side: 1),
    Answer(title: 'gök', value: 1, side: 0),
    Answer(title: 'son', value: 0),
    Answer(title: 'sis', value: 0),
    Answer(title: 'gam', value: 0),
  ],
  order: 30,
  pathAudio: 'assets/sound1/woman/30wWordSound.mp3',
  voiceSex: 0,
);

var wqWord31 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'şiş', value: 0),
    Answer(title: 'kim', value: 1, side: 0),
    Answer(title: 'vah', value: 0),
    Answer(title: 'yaş', value: 0),
    Answer(title: 'kir', value: 1, side: 1),
  ],
  order: 31,
  pathAudio: 'assets/sound1/woman/31wWordSound.mp3',
  voiceSex: 0,
);

var wqWord32 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'bot', value: 0),
    Answer(title: 'can', value: 0),
    Answer(title: 'küp', value: 1, side: 0),
    Answer(title: 'kürk', value: 1, side: 1),
    Answer(title: 'çim', value: 0),
  ],
  order: 32,
  pathAudio: 'assets/sound1/woman/32wWordSound.mp3',
  voiceSex: 0,
);

var wqWord33 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'dem', value: 0),
    Answer(title: 'mart', value: 1, side: 1),
    Answer(title: 'mars', value: 1, side: 0),
    Answer(title: 'kim', value: 0),
    Answer(title: 'mert', value: 0),
  ],
  order: 33,
  pathAudio: 'assets/sound1/woman/33wWordSound.mp3',
  voiceSex: 0,
);

var wqWord34 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'saf', value: 1, side: 1),
    Answer(title: 'sağ', value: 1, side: 0),
    Answer(title: 'siz', value: 0),
    Answer(title: 'sis', value: 0),
    Answer(title: 'sen', value: 0),
  ],
  order: 34,
  pathAudio: 'assets/sound1/woman/34wWordSound.mp3',
  voiceSex: 0,
);

var wqWord35 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'tost', value: 0),
    Answer(title: 'kek', value: 0),
    Answer(title: 'kalp', value: 0),
    Answer(title: 'ton', value: 1, side: 0),
    Answer(title: 'toy', value: 1, side: 1),
  ],
  order: 35,
  pathAudio: 'assets/sound1/woman/35wWordSound.mp3',
  voiceSex: 0,
);

var mqWord1 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'yay', value: 0),
    Answer(title: 'yat', value: 0),
    Answer(title: 'hep', value: 0),
    Answer(title: 'bak', value: 1, side: 1),
    Answer(title: 'alt', value: 1, side: 0),
  ],
  order: 1,
  pathAudio: 'assets/sound1/man/1mWordSound.mp3',
  voiceSex: 0,
);

var mqWord2 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'fal', value: 0),
    Answer(title: 'fes', value: 0),
    Answer(title: 'ham', value: 0),
    Answer(title: 'fön', value: 1, side: 1),
    Answer(title: 'fok', value: 1, side: 0),
  ],
  order: 2,
  pathAudio: 'assets/sound1/man/2mWordSound.mp3',
  voiceSex: 0,
);

var mqWord3 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'cem', value: 1, side: 0),
    Answer(title: 'çak', value: 0),
    Answer(title: 'dem', value: 0),
    Answer(title: 'can', value: 0),
    Answer(title: 'bak', value: 0),
  ],
  order: 3,
  pathAudio: 'assets/sound1/man/3mWordSound.mp3',
  voiceSex: 0,
);

var mqWord4 = new Question(
  title: 'Sadece SAĞ kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'kan', value: 0),
    Answer(title: 'hap', value: 1, side: 1),
    Answer(title: 'ham', value: 0),
    Answer(title: 'gam', value: 0),
    Answer(title: 'hak', value: 0),
  ],
  order: 4,
  pathAudio: 'assets/sound1/man/4mWordSound.mp3',
  voiceSex: 0,
);

var mqWord5 = new Question(
  title: 'Sadece SAĞ kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'bel', value: 0),
    Answer(title: 'ben', value: 1, side: 1),
    Answer(title: 'dal', value: 0),
    Answer(title: 'sel', value: 0),
    Answer(title: 'sen', value: 0),
  ],
  order: 5,
  pathAudio: 'assets/sound1/man/5mWordSound.mp3',
  voiceSex: 0,
);

var mqWord6 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'bak', value: 1, side: 0),
    Answer(title: 'del', value: 0),
    Answer(title: 'dem', value: 0),
    Answer(title: 'saç', value: 0),
    Answer(title: 'bal', value: 0),
  ],
  order: 6,
  pathAudio: 'assets/sound1/man/6mWordSound.mp3',
  voiceSex: 0,
);

var mqWord7 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'bak', value: 1, side: 0),
    Answer(title: 'bank', value: 0),
    Answer(title: 'on', value: 0),
    Answer(title: 'yan', value: 0),
    Answer(title: 'biz', value: 0),
  ],
  order: 7,
  pathAudio: 'assets/sound1/man/7mWordSound.mp3',
  voiceSex: 0,
);

var mqWord8 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'bant', value: 0),
    Answer(title: 'toy', value: 0),
    Answer(title: 'çam', value: 1, side: 0),
    Answer(title: 'geç', value: 0),
    Answer(title: 'kaz', value: 0),
  ],
  order: 8,
  pathAudio: 'assets/sound1/man/8mWordSound.mp3',
  voiceSex: 0,
);

var mqWord9 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'çak', value: 0),
    Answer(title: 'tüp', value: 0),
    Answer(title: 'dem', value: 0),
    Answer(title: 'geç', value: 1, side: 0),
    Answer(title: 'çift', value: 0),
  ],
  order: 9,
  pathAudio: 'assets/sound1/man/9mWordSound.mp3',
  voiceSex: 0,
);

var mqWord10 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'kaz', value: 0),
    Answer(title: 'bant', value: 0),
    Answer(title: 'cep', value: 0),
    Answer(title: 'ok', value: 1, side: 0),
    Answer(title: 'on', value: 0),
  ],
  order: 10,
  pathAudio: 'assets/sound1/man/10mWordSound.mp3',
  voiceSex: 0,
);

var mqWord11 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'ak', value: 0),
    Answer(title: 'tüm', value: 0),
    Answer(title: 'ten', value: 0),
    Answer(title: 'ton', value: 1, side: 0),
    Answer(title: 'toy', value: 0),
  ],
  order: 11,
  pathAudio: 'assets/sound1/man/11mWordSound.mp3',
  voiceSex: 0,
);

var mqWord12 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'yağ', value: 1, side: 0),
    Answer(title: 'çim', value: 0),
    Answer(title: 'bit', value: 0),
    Answer(title: 'bul', value: 0),
    Answer(title: 'yan', value: 0),
  ],
  order: 12,
  pathAudio: 'assets/sound1/man/12mWordSound.mp3',
  voiceSex: 0,
);

var mqWord13 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'bit', value: 1, side: 0),
    Answer(title: 'biz', value: 0),
    Answer(title: 'çok', value: 0),
    Answer(title: 'çak', value: 0),
    Answer(title: 'bul', value: 0),
  ],
  order: 13,
  pathAudio: 'assets/sound1/man/13mWordSound.mp3',
  voiceSex: 0,
);

var mqWord14 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'çim', value: 1, side: 0),
    Answer(title: 'çift', value: 0),
    Answer(title: 'şey', value: 0),
    Answer(title: 'fan', value: 0),
    Answer(title: 'fön', value: 0),
  ],
  order: 14,
  pathAudio: 'assets/sound1/man/14mWordSound.mp3',
  voiceSex: 0,
);

var mqWord15 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: 'kas', value: 1, side: 0),
    Answer(title: 'biz', value: 0),
    Answer(title: 'kaz', value: 0),
    Answer(title: 'say', value: 0),
    Answer(title: 'kan', value: 0),
  ],
  order: 15,
  pathAudio: 'assets/sound1/man/15mWordSound.mp3',
  voiceSex: 0,
);

var mqWord16 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'fal', value: 0),
    Answer(title: 'bot', value: 0),
    Answer(title: 'fan', value: 1, side: 1),
    Answer(title: 'çak', value: 0),
    Answer(title: 'fön', value: 0),
  ],
  order: 16,
  pathAudio: 'assets/sound1/man/16mWordSound.mp3',
  voiceSex: 0,
);

var mqWord17 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'saç', value: 0),
    Answer(title: 'buz', value: 0),
    Answer(title: 'saf', value: 1, side: 1),
    Answer(title: 'sus', value: 0),
    Answer(title: 'sis', value: 0),
  ],
  order: 17,
  pathAudio: 'assets/sound1/man/17mWordSound.mp3',
  voiceSex: 0,
);

var mqWord18 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'ton', value: 0),
    Answer(title: 'mum', value: 0),
    Answer(title: 'ten', value: 1, side: 1),
    Answer(title: 'tok', value: 0),
    Answer(title: 'tek', value: 0),
  ],
  order: 18,
  pathAudio: 'assets/sound1/man/18mWordSound.mp3',
  voiceSex: 0,
);

var mqWord19 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'tüp', value: 1, side: 1),
    Answer(title: 'tüm', value: 0),
    Answer(title: 'tek', value: 0),
    Answer(title: 'pus', value: 0),
    Answer(title: 'top', value: 0),
  ],
  order: 19,
  pathAudio: 'assets/sound1/man/19mWordSound.mp3',
  voiceSex: 0,
);

var mqWord20 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'sen', value: 0),
    Answer(title: 'kil', value: 0),
    Answer(title: 'kir', value: 1, side: 1),
    Answer(title: 'kek', value: 0),
    Answer(title: 'kim', value: 0),
  ],
  order: 20,
  pathAudio: 'assets/sound1/man/20mWordSound.mp3',
  voiceSex: 0,
);

var mqWord21 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'bant', value: 1, side: 1),
    Answer(title: 'bak', value: 0),
    Answer(title: 'tok', value: 0),
    Answer(title: 'bal', value: 0),
    Answer(title: 'bel', value: 0),
  ],
  order: 21,
  pathAudio: 'assets/sound1/man/21mWordSound.mp3',
  voiceSex: 0,
);

var mqWord22 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'ses', value: 0),
    Answer(title: 'sür', value: 0),
    Answer(title: 'sus', value: 1, side: 1),
    Answer(title: 'sur', value: 0),
    Answer(title: 'sen', value: 0),
  ],
  order: 22,
  pathAudio: 'assets/sound1/man/22mWordSound.mp3',
  voiceSex: 0,
);

var mqWord23 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'bul', value: 1, side: 1),
    Answer(title: 'bak', value: 0),
    Answer(title: 'bu', value: 0),
    Answer(title: 'bal', value: 0),
    Answer(title: 'ben', value: 0),
  ],
  order: 23,
  pathAudio: 'assets/sound1/man/23mWordSound.mp3',
  voiceSex: 0,
);

var mqWord24 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'caz', value: 0),
    Answer(title: 'cep', value: 1, side: 1),
    Answer(title: 'çap', value: 0),
    Answer(title: 'can', value: 0),
    Answer(title: 'cem', value: 0),
  ],
  order: 24,
  pathAudio: 'assets/sound1/man/24mWordSound.mp3',
  voiceSex: 0,
);

var mqWord25 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz kelimeyi  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: 'doğ', value: 0),
    Answer(title: 'dört', value: 1, side: 1),
    Answer(title: 'ders', value: 0),
    Answer(title: 'dans', value: 0),
    Answer(title: 'dön', value: 0),
  ],
  order: 25,
  pathAudio: 'assets/sound1/man/25mWordSound.mp3',
  voiceSex: 0,
);

var mqWord26 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'fön', value: 1, side: 1),
    Answer(title: 'Türk', value: 0),
    Answer(title: 'fok', value: 1, side: 0),
    Answer(title: 'nem', value: 0),
    Answer(title: 'şiş', value: 0),
  ],
  order: 26,
  pathAudio: 'assets/sound1/man/26mWordSound.mp3',
  voiceSex: 0,
);

var mqWord27 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'gir', value: 1, side: 1),
    Answer(title: 'ben', value: 0),
    Answer(title: 'geç', value: 1, side: 0),
    Answer(title: 'ses', value: 0),
    Answer(title: 'göm', value: 0),
  ],
  order: 27,
  pathAudio: 'assets/sound1/man/27mWordSound.mp3',
  voiceSex: 0,
);

var mqWord28 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'çöp', value: 1, side: 1),
    Answer(title: 'çim', value: 0),
    Answer(title: 'çöl', value: 1, side: 0),
    Answer(title: 'çil', value: 0),
    Answer(title: 'cep', value: 0),
  ],
  order: 28,
  pathAudio: 'assets/sound1/man/28mWordSound.mp3',
  voiceSex: 0,
);

var mqWord29 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'bak', value: 0),
    Answer(title: 'cep', value: 1, side: 1),
    Answer(title: 'cem', value: 1, side: 0),
    Answer(title: 'can', value: 0),
    Answer(title: 'çöp', value: 0),
  ],
  order: 29,
  pathAudio: 'assets/sound1/man/29mWordSound.mp3',
  voiceSex: 0,
);

var mqWord30 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'bant', value: 0),
    Answer(title: 'bak', value: 1, side: 1),
    Answer(title: 'alt', value: 1, side: 0),
    Answer(title: 'al', value: 0),
    Answer(title: 'bas', value: 0),
  ],
  order: 30,
  pathAudio: 'assets/sound1/man/30mWordSound.mp3',
  voiceSex: 0,
);

var mqWord31 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'hop', value: 0),
    Answer(title: 'hap', value: 1, side: 1),
    Answer(title: 'ham', value: 1, side: 0),
    Answer(title: 'hak', value: 0),
    Answer(title: 'hal', value: 0),
  ],
  order: 31,
  pathAudio: 'assets/sound1/man/31mWordSound.mp3',
  voiceSex: 0,
);

var mqWord32 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'bas', value: 0),
    Answer(title: 'bal', value: 0),
    Answer(title: 'bat', value: 0),
    Answer(title: 'ben', value: 1, side: 1),
    Answer(title: 'bel', value: 1, side: 0),
  ],
  order: 32,
  pathAudio: 'assets/sound1/man/32mWordSound.mp3',
  voiceSex: 0,
);

var mqWord33 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'yay', value: 0),
    Answer(title: 'yat', value: 0),
    Answer(title: 'hep', value: 0),
    Answer(title: 'yem', value: 1, side: 1),
    Answer(title: 'ye', value: 1, side: 0),
  ],
  order: 33,
  pathAudio: 'assets/sound1/man/33mWordSound.mp3',
  voiceSex: 0,
);

var mqWord34 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'göl', value: 0),
    Answer(title: 'gök', value: 0),
    Answer(title: 'gam', value: 0),
    Answer(title: 'gün', value: 1, side: 1),
    Answer(title: 'gül', value: 1, side: 0),
  ],
  order: 34,
  pathAudio: 'assets/sound1/man/34mWordSound.mp3',
  voiceSex: 0,
);

var mqWord35 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz kelimeleri  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: 'kan', value: 0),
    Answer(title: 'kas', value: 0),
    Answer(title: 'kim', value: 0),
    Answer(title: 'kir', value: 1, side: 1),
    Answer(title: 'kil', value: 1, side: 0),
  ],
  order: 35,
  pathAudio: 'assets/sound1/man/35mWordSound.mp3',
  voiceSex: 0,
);


List<Widget> listManWord() {
  return <Widget>[
    WarningPage(
        title: 'BİLGİLENDİRME',
        desc:
            'Kulaklığınızı sağ ve sol kulak olarak taktıgınızdan emin olunuz.',
        desc2: Center()),
    WarningPage(
        title: 'BİLGİLENDİRME',
        desc:
            'Bu test 35 sorudan oluşmaktadır. İlk 5 soru kullanıcıların teste alışması için oluşturulmuştur. '
            'Testte her iki kulağınıza aynı anda kelimeler gelecek olup sizden sadece verilen yönlendirmelere göre doğru kelime seçimi yapılması istenmektedir.',
        desc2: Center()),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: '',
      desc2: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: <TextSpan>[
            TextSpan(
                text:
                    'Test sırasında aynı anda her iki kulağınıza kelimeler gelecek. Sizden,',
                style: TextStyle(color: Colors.black, fontSize: 18)),
            TextSpan(
                text: '\n\n1) Sadece sağ kulağınızdan duyduğunuz kelimeyi',
                style: TextStyle(color: Colors.red, fontSize: 18)),
            TextSpan(
                text: '\n\n2) Sadece sol kulağınızdan duyduğunuz kelimeyi',
                style: TextStyle(color: Colors.red, fontSize: 18)),
            TextSpan(
                text:
                    '\n\n3) Her iki kulağınızdan duyduğunuz kelimeleri seçmeniz istenecektir.',
                style: TextStyle(color: Colors.red, fontSize: 18)),
          ]),
        ),
      ),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: mqWord1,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: mqWord2,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: mqWord3,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: mqWord4,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: mqWord5,
    ),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: 'Bu testte SOL kulağınızdan duyduğunuz kelimeyi seçiniz.',
      desc2: Center(),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord6,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord7,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord8,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord9,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord10,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord11,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord12,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord13,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord14,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord15,
    ),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: 'Bu testte SAĞ kulağınızdan duyduğunuz kelimeyi seçiniz.',
      desc2: Center(),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord16,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord17,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord18,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord19,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord20,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord21,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord22,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord23,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord24,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord25,
    ),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: 'Bu testte HER İKİ kulağınızdan duyduğunuz kelimeyi seçiniz.',
      desc2: Center(),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord26,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord27,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord28,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord29,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord30,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord31,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord32,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord33,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord34,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord35,
    ),
    WarningPage(
        title: 'SONUÇ',
        desc: 'Testi başarı ile tamamladınız',
        desc2: Center(
          child: Text(
            'Sonuçları görmek için devam ediniz...',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        page: MaterialPageRoute(
          builder: (context) => ResultPage(),
        ),
      )
  ];
}

List<Widget> listWomanWord() {
  return <Widget>[
    WarningPage(
        title: 'BİLGİLENDİRME',
        desc:
            'Kulaklığınızı sağ ve sol kulak olarak taktıgınızdan emin olunuz.',
        desc2: Center()),
    WarningPage(
        title: 'BİLGİLENDİRME',
        desc:
            'Bu test 35 sorudan oluşmaktadır. İlk 5 soru kullanıcıların teste alışması için oluşturulmuştur. '
            'Testte her iki kulağınıza aynı anda kelimeler gelecek olup sizden sadece verilen yönlendirmelere göre doğru kelime seçimi yapılması istenmektedir.',
        desc2: Center()),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: '',
      desc2: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: <TextSpan>[
            TextSpan(
                text:
                    'Test sırasında aynı anda her iki kulağınıza kelimeler gelecek. Sizden,',
                style: TextStyle(color: Colors.black, fontSize: 18)),
            TextSpan(
                text: '\n\n1) Sadece sağ kulağınızdan duyduğunuz kelimeyi',
                style: TextStyle(color: Colors.red, fontSize: 18)),
            TextSpan(
                text: '\n\n2) Sadece sol kulağınızdan duyduğunuz kelimeyi',
                style: TextStyle(color: Colors.red, fontSize: 18)),
            TextSpan(
                text:
                    '\n\n3) Her iki kulağınızdan duyduğunuz kelimeleri seçmeniz istenecektir.',
                style: TextStyle(color: Colors.red, fontSize: 18)),
          ]),
        ),
      ),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: wqWord1,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: wqWord2,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: wqWord5,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: wqWord3,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: wqWord4,
    ),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: 'Bu testte SOL kulağınızdan duyduğunuz kelimeyi seçiniz.',
      desc2: Center(),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord6,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord7,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord8,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord9,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord10,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord11,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord12,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord13,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord14,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord15,
    ),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: 'Bu testte SAĞ kulağınızdan duyduğunuz kelimeyi seçiniz.',
      desc2: Center(),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord16,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord17,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord18,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord19,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord20,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord21,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord22,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord23,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord24,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord25,
    ),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: 'Bu testte HER İKİ kulağınızdan duyduğunuz kelimeyi seçiniz.',
      desc2: Center(),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord26,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord27,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord28,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord29,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord30,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord31,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord32,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord33,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord34,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord35,
    ),
    WarningPage(
        title: 'SONUÇ',
        desc: 'Testi başarı ile tamamladınız',
        desc2: Center(
          child: Text(
            'Sonuçları görmek için devam ediniz...',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        page: MaterialPageRoute(
          builder: (context) => ResultPage(),
        ),
      )
  ];
}