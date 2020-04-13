import 'package:dikotik_app/data/question.dart';
import 'package:dikotik_app/pages/result_page.dart';
import 'package:dikotik_app/pages/test_page.dart';
import 'package:dikotik_app/pages/warning_page.dart';
import 'package:flutter/material.dart';


var wqNumber1 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '3-5', value: 1, side: 0),
    Answer(title: '1-4', value: 0),
    Answer(title: '2-5', value: 0),
    Answer(title: '1-5', value: 0),
    Answer(title: '3-7', value: 0),
  ],
  order: 1,
  pathAudio: 'assets/sound3/woman/wsound0.mp3',
  voiceSex: 0,
);

var wqNumber2 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '1-9', value: 1, side: 1),
    Answer(title: '1-4', value: 0),
    Answer(title: '6-4', value: 0),
    Answer(title: '5-3', value: 0),
    Answer(title: '9-2', value: 0),
  ],
  order: 2,
  pathAudio: 'assets/sound3/woman/wsound1.mp3',
  voiceSex: 0,
);

var wqNumber3 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '2-4', value: 1, side: 1),
    Answer(title: '3-10', value: 0),
    Answer(title: '7-9', value: 0),
    Answer(title: '1-8', value: 0),
    Answer(title: '3-9', value: 0),
  ],
  order: 3,
  pathAudio: 'assets/sound3/woman/wsound2.mp3',
  voiceSex: 0,
);

var wqNumber4 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '2-5', value: 1, side: 1),
    Answer(title: '4-6', value: 0),
    Answer(title: '10-7', value: 1, side: 0),
    Answer(title: '6-7', value: 0),
    Answer(title: '8-3', value: 0),
  ],
  order: 4,
  pathAudio: 'assets/sound3/woman/wsound3.mp3',
  voiceSex: 0,
);

var wqNumber5 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '2-7', value: 1, side: 1),
    Answer(title: '8-6', value: 0),
    Answer(title: '8-9', value: 1, side: 0),
    Answer(title: '6-7', value: 0),
    Answer(title: '2-3', value: 0),
  ],
  order: 5,
  pathAudio: 'assets/sound3/woman/wsound4.mp3',
  voiceSex: 0,
);

var wqNumber6 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıyı  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '6-7', value: 1, side: 0),
    Answer(title: '1-4', value: 0),
    Answer(title: '2-5', value: 0),
    Answer(title: '1-5', value: 0),
    Answer(title: '2-9', value: 0),
  ],
  order: 6,
  pathAudio: 'assets/sound3/woman/wsound5.mp3',
  voiceSex: 0,
);

var wqNumber7 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıyı  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '1-4', value: 1, side: 0),
    Answer(title: '5-7', value: 0),
    Answer(title: '2-6', value: 0),
    Answer(title: '10-5', value: 0),
    Answer(title: '3-5', value: 0),
  ],
  order: 7,
  pathAudio: 'assets/sound3/woman/wsound6.mp3',
  voiceSex: 0,
);

var wqNumber8 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıyı  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '2-4', value: 1, side: 0),
    Answer(title: '5-3', value: 0),
    Answer(title: '3-10', value: 0),
    Answer(title: '6-7', value: 0),
    Answer(title: '3-8', value: 0),
  ],
  order: 8,
  pathAudio: 'assets/sound3/woman/wsound7.mp3',
  voiceSex: 0,
);

var wqNumber9 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıyı  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '2-4', value: 0),
    Answer(title: '5-3', value: 0),
    Answer(title: '4-1', value: 1, side: 0),
    Answer(title: '4-7', value: 0),
    Answer(title: '3-7', value: 0),
  ],
  order: 9,
  pathAudio: 'assets/sound3/woman/wsound8.mp3',
  voiceSex: 0,
);

var wqNumber10 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıyı  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '2-8', value: 0),
    Answer(title: '5-3', value: 0),
    Answer(title: '1-7', value: 1, side: 0),
    Answer(title: '4-3', value: 0),
    Answer(title: '3-6', value: 0),
  ],
  order: 10,
  pathAudio: 'assets/sound3/woman/wsound9.mp3',
  voiceSex: 0,
);

var wqNumber11 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıyı  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '2-7', value: 0),
    Answer(title: '5-4', value: 0),
    Answer(title: '1-3', value: 1, side: 0),
    Answer(title: '4-8', value: 0),
    Answer(title: '3-6', value: 0),
  ],
  order: 11,
  pathAudio: 'assets/sound3/woman/wsound10.mp3',
  voiceSex: 0,
);

var wqNumber12 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıyı  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '2-9', value: 0),
    Answer(title: '5-1', value: 0),
    Answer(title: '1-3', value: 0),
    Answer(title: '6-8', value: 0),
    Answer(title: '3-4', value: 1, side: 0),
  ],
  order: 12,
  pathAudio: 'assets/sound3/woman/wsound11.mp3',
  voiceSex: 0,
);

var wqNumber13 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıyı  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '2-9', value: 0),
    Answer(title: '5-1', value: 0),
    Answer(title: '1-4', value: 0),
    Answer(title: '6-4', value: 0),
    Answer(title: '8-3', value: 1, side: 0),
  ],
  order: 13,
  pathAudio: 'assets/sound3/woman/wsound12.mp3',
  voiceSex: 0,
);

var wqNumber14 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıyı  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '2-4', value: 0),
    Answer(title: '1-8', value: 0),
    Answer(title: '1-4', value: 0),
    Answer(title: '6-1', value: 0),
    Answer(title: '9-3', value: 1, side: 0),
  ],
  order: 14,
  pathAudio: 'assets/sound3/woman/wsound13.mp3',
  voiceSex: 0,
);

var wqNumber15 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıyı  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '9-5', value: 1, side: 0),
    Answer(title: '4-10', value: 0),
    Answer(title: '7-3', value: 0),
    Answer(title: '6-4', value: 0),
    Answer(title: '6-10', value: 0),
  ],
  order: 15,
  pathAudio: 'assets/sound3/woman/wsound14.mp3',
  voiceSex: 0,
);

var wqNumber16 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '5-7', value: 1, side: 1),
    Answer(title: '1-4', value: 0),
    Answer(title: '10-4', value: 0),
    Answer(title: '1-6', value: 0),
    Answer(title: '9-10', value: 0),
  ],
  order: 16,
  pathAudio: 'assets/sound3/woman/wsound15.mp3',
  voiceSex: 0,
);

var wqNumber17 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '7-3', value: 1, side: 1),
    Answer(title: '1-6', value: 0),
    Answer(title: '10-6', value: 0),
    Answer(title: '1-6', value: 0),
    Answer(title: '3-9', value: 0),
  ],
  order: 17,
  pathAudio: 'assets/sound3/woman/wsound16.mp3',
  voiceSex: 0,
);

var wqNumber18 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '4-7', value: 1, side: 1),
    Answer(title: '1-5', value: 0),
    Answer(title: '3-4', value: 0),
    Answer(title: '1-9', value: 0),
    Answer(title: '2-8', value: 0),
  ],
  order: 18,
  pathAudio: 'assets/sound3/woman/wsound17.mp3',
  voiceSex: 0,
);

var wqNumber19 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '4-7', value: 0),
    Answer(title: '1-5', value: 0),
    Answer(title: '6-4', value: 0),
    Answer(title: '8-3', value: 1, side: 1),
    Answer(title: '7-9', value: 0),
  ],
  order: 16,
  pathAudio: 'assets/sound3/woman/wsound18.mp3',
  voiceSex: 0,
);

var wqNumber20 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '4-5', value: 0),
    Answer(title: '1-9', value: 0),
    Answer(title: '2-4', value: 0),
    Answer(title: '8-7', value: 1, side: 1),
    Answer(title: '2-9', value: 0),
  ],
  order: 20,
  pathAudio: 'assets/sound3/woman/wsound19.mp3',
  voiceSex: 0,
);

var wqNumber21 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '4-9', value: 0),
    Answer(title: '1-6', value: 0),
    Answer(title: '6-4', value: 0),
    Answer(title: '8-7', value: 1, side: 1),
    Answer(title: '6-9', value: 0),
  ],
  order: 21,
  pathAudio: 'assets/sound3/woman/wsound20.mp3',
  voiceSex: 0,
);

var wqNumber22 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '4-10', value: 0),
    Answer(title: '1-7', value: 0),
    Answer(title: '2-7', value: 0),
    Answer(title: '8-9', value: 1, side: 1),
    Answer(title: '7-10', value: 0),
  ],
  order: 22,
  pathAudio: 'assets/sound3/woman/wsound21.mp3',
  voiceSex: 0,
);

var wqNumber23 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '10-7', value: 0),
    Answer(title: '5-9', value: 0),
    Answer(title: '6-1', value: 0),
    Answer(title: '8-3', value: 1, side: 1),
    Answer(title: '7-6', value: 0),
  ],
  order: 23,
  pathAudio: 'assets/sound3/woman/wsound22.mp3',
  voiceSex: 0,
);

var wqNumber24 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '3-7', value: 0),
    Answer(title: '4-9', value: 0),
    Answer(title: '10-1', value: 0),
    Answer(title: '8-3', value: 1, side: 1),
    Answer(title: '7-5', value: 0),
  ],
  order: 24,
  pathAudio: 'assets/sound3/woman/wsound23.mp3',
  voiceSex: 0,
);

var wqNumber25 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '10-8', value: 0),
    Answer(title: '4-6', value: 0),
    Answer(title: '6-1', value: 0),
    Answer(title: '2-9', value: 1, side: 1),
    Answer(title: '3-6', value: 0),
  ],
  order: 25,
  pathAudio: 'assets/sound3/woman/wsound24.mp3',
  voiceSex: 0,
);

var wqNumber26 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '9-5', value: 1, side: 1),
    Answer(title: '4-8', value: 0),
    Answer(title: '7-3', value: 1, side: 0),
    Answer(title: '6-10', value: 0),
    Answer(title: '6-8', value: 0),
  ],
  order: 26,
  pathAudio: 'assets/sound3/woman/wsound25.mp3',
  voiceSex: 0,
);

var wqNumber27 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '9-7', value: 1, side: 1),
    Answer(title: '4-6', value: 0),
    Answer(title: '8-2', value: 1, side: 0),
    Answer(title: '6-5', value: 0),
    Answer(title: '6-10', value: 0),
  ],
  order: 27,
  pathAudio: 'assets/sound3/woman/wsound26.mp3',
  voiceSex: 0,
);

var wqNumber28 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '9-1', value: 1, side: 1),
    Answer(title: '4-5', value: 0),
    Answer(title: '6-3', value: 1, side: 0),
    Answer(title: '8-5', value: 0),
    Answer(title: '7-10', value: 0),
  ],
  order: 28,
  pathAudio: 'assets/sound3/woman/wsound27.mp3',
  voiceSex: 0,
);

var wqNumber29 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '9-1', value: 1, side: 1),
    Answer(title: '4-8', value: 0),
    Answer(title: '7-5', value: 1, side: 0),
    Answer(title: '8-10', value: 0),
    Answer(title: '6-10', value: 0),
  ],
  order: 29,
  pathAudio: 'assets/sound3/woman/wsound28.mp3',
  voiceSex: 0,
);

var wqNumber30 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '10-4', value: 1, side: 1),
    Answer(title: '6-1', value: 0),
    Answer(title: '7-5', value: 1, side: 0),
    Answer(title: '8-9', value: 0),
    Answer(title: '2-3', value: 0),
  ],
  order: 30,
  pathAudio: 'assets/sound3/woman/wsound29.mp3',
  voiceSex: 0,
);

var wqNumber31 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '2-7', value: 0),
    Answer(title: '4-1', value: 1, side: 1),
    Answer(title: '3-5', value: 1, side: 0),
    Answer(title: '8-6', value: 0),
    Answer(title: '7-10', value: 0),
  ],
  order: 31,
  pathAudio: 'assets/sound3/woman/wsound30.mp3',
  voiceSex: 0,
);

var wqNumber32 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '2-7', value: 0),
    Answer(title: '1-9', value: 1, side: 1),
    Answer(title: '6-4', value: 1, side: 0),
    Answer(title: '8-10', value: 0),
    Answer(title: '7-8', value: 0),
  ],
  order: 32,
  pathAudio: 'assets/sound3/woman/wsound31.mp3',
  voiceSex: 0,
);

var wqNumber33 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '1-9', value: 0),
    Answer(title: '2-4', value: 1, side: 1),
    Answer(title: '3-10', value: 1, side: 0),
    Answer(title: '8-9', value: 0),
    Answer(title: '6-5', value: 0),
  ],
  order: 33,
  pathAudio: 'assets/sound3/woman/wsound32.mp3',
  voiceSex: 0,
);

var wqNumber34 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '3-4', value: 0),
    Answer(title: '2-5', value: 1, side: 1),
    Answer(title: '7-10', value: 1, side: 0),
    Answer(title: '1-3', value: 0),
    Answer(title: '6-4', value: 0),
  ],
  order: 34,
  pathAudio: 'assets/sound3/woman/wsound33.mp3',
  voiceSex: 0,
);

var wqNumber35 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '3-5', value: 0),
    Answer(title: '2-7', value: 1, side: 1),
    Answer(title: '8-9', value: 1, side: 0),
    Answer(title: '1-10', value: 0),
    Answer(title: '6-4', value: 0),
  ],
  order: 35,
  pathAudio: 'assets/sound3/woman/wsound34.mp3',
  voiceSex: 0,
);

var mqNumber1 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '1-5', value: 0),
    Answer(title: '1-4', value: 0),
    Answer(title: '2-5', value: 0),
    Answer(title: '10-3', value: 1, side: 0),
    Answer(title: '5-7', value: 0),
  ],
  order: 1,
  pathAudio: 'assets/sound3/man/msound0.mp3',
  voiceSex: 0,
);

var mqNumber2 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '1-6', value: 1, side: 1),
    Answer(title: '3-4', value: 0),
    Answer(title: '9-4', value: 0),
    Answer(title: '5-10', value: 0),
    Answer(title: '9-7', value: 0),
  ],
  order: 2,
  pathAudio: 'assets/sound3/man/msound1.mp3',
  voiceSex: 0,
);

var mqNumber3 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '1-7', value: 1, side: 1),
    Answer(title: '8-10', value: 0),
    Answer(title: '5-3', value: 0),
    Answer(title: '3-8', value: 0),
    Answer(title: '3-6', value: 0),
  ],
  order: 3,
  pathAudio: 'assets/sound3/man/msound2.mp3',
  voiceSex: 0,
);

var mqNumber4 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '1-8', value: 1, side: 1),
    Answer(title: '4-10', value: 0),
    Answer(title: '6-7', value: 1, side: 0),
    Answer(title: '3-5', value: 0),
    Answer(title: '8-3', value: 0),
  ],
  order: 4,
  pathAudio: 'assets/sound3/man/msound3.mp3',
  voiceSex: 0,
);

var mqNumber5 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '2-4', value: 1, side: 1),
    Answer(title: '8-6', value: 0),
    Answer(title: '5-3', value: 1, side: 0),
    Answer(title: '6-7', value: 0),
    Answer(title: '6-10', value: 0),
  ],
  order: 5,
  pathAudio: 'assets/sound3/man/msound4.mp3',
  voiceSex: 0,
);

var mqNumber6 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '9-5', value: 0),
    Answer(title: '6-4', value: 0),
    Answer(title: '2-5', value: 0),
    Answer(title: '1-3', value: 1, side: 0),
    Answer(title: '5-7', value: 0),
  ],
  order: 6,
  pathAudio: 'assets/sound3/man/msound5.mp3',
  voiceSex: 0,
);

var mqNumber7 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '9-5', value: 0),
    Answer(title: '6-9', value: 0),
    Answer(title: '2-6', value: 0),
    Answer(title: '1-8', value: 1, side: 0),
    Answer(title: '5-7', value: 0),
  ],
  order: 7,
  pathAudio: 'assets/sound3/man/msound6.mp3',
  voiceSex: 0,
);

var mqNumber8 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '9-10', value: 0),
    Answer(title: '3-4', value: 0),
    Answer(title: '2-5', value: 0),
    Answer(title: '5-8', value: 1, side: 0),
    Answer(title: '3-7', value: 0),
  ],
  order: 8,
  pathAudio: 'assets/sound3/man/msound7.mp3',
  voiceSex: 0,
);

var mqNumber9 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '2-7', value: 0),
    Answer(title: '3-9', value: 0),
    Answer(title: '2-5', value: 0),
    Answer(title: '1-6', value: 1, side: 0),
    Answer(title: '3-7', value: 0),
  ],
  order: 9,
  pathAudio: 'assets/sound3/man/msound8.mp3',
  voiceSex: 0,
);

var mqNumber10 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '9-1', value: 0),
    Answer(title: '3-9', value: 0),
    Answer(title: '2-5', value: 0),
    Answer(title: '3-8', value: 0),
    Answer(title: '4-7', value: 1, side: 0),
  ],
  order: 10,
  pathAudio: 'assets/sound3/man/msound9.mp3',
  voiceSex: 0,
);

var mqNumber11 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '6-1', value: 0),
    Answer(title: '7-9', value: 0),
    Answer(title: '4-5', value: 0),
    Answer(title: '2-9', value: 0),
    Answer(title: '1-3', value: 1, side: 0),
  ],
  order: 11,
  pathAudio: 'assets/sound3/man/msound10.mp3',
  voiceSex: 0,
);

var mqNumber12 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '9-10', value: 0),
    Answer(title: '3-2', value: 0),
    Answer(title: '2-9', value: 0),
    Answer(title: '4-8', value: 0),
    Answer(title: '5-7', value: 1, side: 0),
  ],
  order: 12,
  pathAudio: 'assets/sound3/man/msound11.mp3',
  voiceSex: 0,
);

var mqNumber13 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '2-3', value: 0),
    Answer(title: '3-10', value: 0),
    Answer(title: '2-7', value: 0),
    Answer(title: '4-8', value: 0),
    Answer(title: '6-5', value: 1, side: 0),
  ],
  order: 13,
  pathAudio: 'assets/sound3/man/msound12.mp3',
  voiceSex: 0,
);

var mqNumber14 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '2-7', value: 0),
    Answer(title: '4-9', value: 0),
    Answer(title: '1-3', value: 1, side: 0),
    Answer(title: '9-8', value: 0),
    Answer(title: '4-5', value: 0),
  ],
  order: 14,
  pathAudio: 'assets/sound3/man/msound13.mp3',
  voiceSex: 0,
);

var mqNumber15 = new Question(
  title: 'Sadece SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 0,
  answer: <Answer>[
    Answer(title: '2-9', value: 0),
    Answer(title: '5-6', value: 0),
    Answer(title: '1-2', value: 1, side: 0),
    Answer(title: '4-5', value: 0),
    Answer(title: '4-8', value: 0),
  ],
  order: 15,
  pathAudio: 'assets/sound3/man/msound14.mp3',
  voiceSex: 0,
);

var mqNumber16 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '5-8', value: 1, side: 1),
    Answer(title: '6-4', value: 0),
    Answer(title: '9-4', value: 0),
    Answer(title: '7-10', value: 0),
    Answer(title: '2-4', value: 0),
  ],
  order: 16,
  pathAudio: 'assets/sound3/man/msound15.mp3',
  voiceSex: 0,
);

var mqNumber17 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '1-6', value: 1, side: 1),
    Answer(title: '2-8', value: 0),
    Answer(title: '9-10', value: 0),
    Answer(title: '7-5', value: 0),
    Answer(title: '4-5', value: 0),
  ],
  order: 17,
  pathAudio: 'assets/sound3/man/msound16.mp3',
  voiceSex: 0,
);

var mqNumber18 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '5-8', value: 0),
    Answer(title: '6-7', value: 1, side: 1),
    Answer(title: '9-4', value: 0),
    Answer(title: '5-9', value: 0),
    Answer(title: '2-3', value: 0),
  ],
  order: 18,
  pathAudio: 'assets/sound3/man/msound17.mp3',
  voiceSex: 0,
);

var mqNumber19 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '2-9', value: 0),
    Answer(title: '3-7', value: 1, side: 1),
    Answer(title: '9-4', value: 0),
    Answer(title: '5-9', value: 0),
    Answer(title: '2-5', value: 0),
  ],
  order: 19,
  pathAudio: 'assets/sound3/man/msound18.mp3',
  voiceSex: 0,
);

var mqNumber20 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '4-8', value: 0),
    Answer(title: '5-7', value: 1, side: 1),
    Answer(title: '10-4', value: 0),
    Answer(title: '6-9', value: 0),
    Answer(title: '2-10', value: 0),
  ],
  order: 20,
  pathAudio: 'assets/sound3/man/msound19.mp3',
  voiceSex: 0,
);

var mqNumber21 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '7-9', value: 1, side: 1),
    Answer(title: '3-5', value: 0),
    Answer(title: '9-10', value: 0),
    Answer(title: '6-3', value: 0),
    Answer(title: '4-5', value: 0),
  ],
  order: 21,
  pathAudio: 'assets/sound3/man/msound20.mp3',
  voiceSex: 0,
);

var mqNumber22 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '4-8', value: 0),
    Answer(title: '10-7', value: 1, side: 1),
    Answer(title: '6-4', value: 0),
    Answer(title: '9-5', value: 0),
    Answer(title: '2-8', value: 0),
  ],
  order: 22,
  pathAudio: 'assets/sound3/man/msound21.mp3',
  voiceSex: 0,
);

var mqNumber23 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '8-3', value: 1, side: 1),
    Answer(title: '5-10', value: 0),
    Answer(title: '4-6', value: 0),
    Answer(title: '6-9', value: 0),
    Answer(title: '4-7', value: 0),
  ],
  order: 23,
  pathAudio: 'assets/sound3/man/msound22.mp3',
  voiceSex: 0,
);

var mqNumber24 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '4-8', value: 0),
    Answer(title: '1-9', value: 1, side: 1),
    Answer(title: '6-10', value: 0),
    Answer(title: '2-7', value: 0),
    Answer(title: '7-8', value: 0),
  ],
  order: 24,
  pathAudio: 'assets/sound3/man/msound23.mp3',
  voiceSex: 0,
);

var mqNumber25 = new Question(
  title: 'Sadece SAĞ  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 1,
  answer: <Answer>[
    Answer(title: '4-8', value: 0),
    Answer(title: '5-9', value: 1, side: 1),
    Answer(title: '4-3', value: 0),
    Answer(title: '3-7', value: 0),
    Answer(title: '4-6', value: 0),
  ],
  order: 25,
  pathAudio: 'assets/sound3/man/msound24.mp3',
  voiceSex: 0,
);

var mqNumber26 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '10-5', value: 1, side: 1),
    Answer(title: '8-9', value: 0),
    Answer(title: '4-3', value: 1, side: 0),
    Answer(title: '6-7', value: 0),
    Answer(title: '6-8', value: 0),
  ],
  order: 26,
  pathAudio: 'assets/sound3/man/msound25.mp3',
  voiceSex: 0,
);

var mqNumber27 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '10-5', value: 1, side: 1),
    Answer(title: '8-3', value: 0),
    Answer(title: '4-7', value: 1, side: 0),
    Answer(title: '6-9', value: 0),
    Answer(title: '6-1', value: 0),
  ],
  order: 27,
  pathAudio: 'assets/sound3/man/msound26.mp3',
  voiceSex: 0,
);

var mqNumber28 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '2-1', value: 0),
    Answer(title: '3-9', value: 0),
    Answer(title: '5-4', value: 1, side: 0),
    Answer(title: '6-8', value: 0),
    Answer(title: '7-10', value: 1, side: 1),
  ],
  order: 28,
  pathAudio: 'assets/sound3/man/msound27.mp3',
  voiceSex: 0,
);

var mqNumber29 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '9-1', value: 0),
    Answer(title: '3-9', value: 0),
    Answer(title: '6-5', value: 1, side: 0),
    Answer(title: '4-8', value: 0),
    Answer(title: '10-7', value: 1, side: 1),
  ],
  order: 29,
  pathAudio: 'assets/sound3/man/msound28.mp3',
  voiceSex: 0,
);

var mqNumber30 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '10-7', value: 1, side: 1),
    Answer(title: '8-9', value: 0),
    Answer(title: '5-7', value: 1, side: 0),
    Answer(title: '6-4', value: 0),
    Answer(title: '2-3', value: 0),
  ],
  order: 30,
  pathAudio: 'assets/sound3/man/msound29.mp3',
  voiceSex: 0,
);

var mqNumber31 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '2-8', value: 0),
    Answer(title: '9-4', value: 0),
    Answer(title: '10-3', value: 1, side: 0),
    Answer(title: '6-7', value: 0),
    Answer(title: '1-5', value: 1, side: 1),
  ],
  order: 31,
  pathAudio: 'assets/sound3/man/msound30.mp3',
  voiceSex: 0,
);

var mqNumber32 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '2-3', value: 0),
    Answer(title: '3-7', value: 0),
    Answer(title: '9-4', value: 1, side: 0),
    Answer(title: '5-7', value: 0),
    Answer(title: '1-6', value: 1, side: 1),
  ],
  order: 32,
  pathAudio: 'assets/sound3/man/msound31.mp3',
  voiceSex: 0,
);

var mqNumber33 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '1-7', value: 1, side: 1),
    Answer(title: '4-9', value: 0),
    Answer(title: '3-8', value: 1, side: 0),
    Answer(title: '6-5', value: 0),
    Answer(title: '2-3', value: 0),
  ],
  order: 33,
  pathAudio: 'assets/sound3/man/msound32.mp3',
  voiceSex: 0,
);

var mqNumber34 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '3-5', value: 0),
    Answer(title: '3-10', value: 0),
    Answer(title: '6-7', value: 1, side: 0),
    Answer(title: '4-9', value: 0),
    Answer(title: '1-8', value: 1, side: 1),
  ],
  order: 34,
  pathAudio: 'assets/sound3/man/msound33.mp3',
  voiceSex: 0,
);

var mqNumber35 = new Question(
  title:
      'Hem SAĞ kulağınızdan duyduğunuz hem de SOL  kulağınızdan duyduğunuz sayıları  işaretleyiniz.',
  side: 2,
  answer: <Answer>[
    Answer(title: '6-10', value: 0),
    Answer(title: '1-7', value: 0),
    Answer(title: '5-3', value: 1, side: 0),
    Answer(title: '2-4', value: 1, side: 1),
    Answer(title: '1-5', value: 0),
  ],
  order: 35,
  pathAudio: 'assets/sound3/man/msound34.mp3',
  voiceSex: 0,
);


  List<Widget> listManNumber() {
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
              'Testte her iki kulağınıza aynı anda sayılar gelecek olup sizden sadece verilen yönlendirmelere göre doğru sayı seçimi yapılması istenmektedir.',
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
                      'Test sırasında aynı anda her iki kulağınıza sayılar gelecek. Sizden,',
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              TextSpan(
                  text: '\n\n1) Sadece sağ kulağınızdan duyduğunuz sayıyı',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
              TextSpan(
                  text: '\n\n2) Sadece sol kulağınızdan duyduğunuz sayıyı',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
              TextSpan(
                  text:
                      '\n\n3) Her iki kulağınızdan duyduğunuz sayıları seçmeniz istenecektir.',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
            ]),
          ),
        ),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: mqNumber1,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: mqNumber2,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: mqNumber3,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: mqNumber4,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: mqNumber5,
      ),
      WarningPage(
        title: 'TEST',
        desc: 'Dikotik testine başlıyoruz',
        desc2: Center(),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber6,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber7,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber8,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber9,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber10,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber11,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber12,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber13,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber14,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber15,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber16,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber17,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber18,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber19,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber20,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber21,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber22,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber23,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber24,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber25,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber26,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber27,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber28,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber29,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber30,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber31,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber32,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber33,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber34,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber35,
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

  List<Widget> listWomanNumber() {
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
              'Testte her iki kulağınıza aynı anda sayılar gelecek olup sizden sadece verilen yönlendirmelere göre doğru sayı seçimi yapılması istenmektedir.',
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
                      'Test sırasında aynı anda her iki kulağınıza sayılar gelecek. Sizden,',
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              TextSpan(
                  text: '\n\n1) Sadece sağ kulağınızdan duyduğunuz sayıyı',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
              TextSpan(
                  text: '\n\n2) Sadece sol kulağınızdan duyduğunuz sayıyı',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
              TextSpan(
                  text:
                      '\n\n3) Her iki kulağınızdan duyduğunuz sayıları seçmeniz istenecektir.',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
            ]),
          ),
        ),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: wqNumber1,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: wqNumber2,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: wqNumber3,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: wqNumber4,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: wqNumber5,
      ),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: 'Bu testte SOL kulağınızdan duyduğunuz sayıyı seçiniz.',
        desc2: Center(),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber6,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber7,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber8,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber9,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber10,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber11,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber12,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber13,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber14,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber15,
      ),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: 'Bu testte SAĞ kulağınızdan duyduğunuz sayıyı seçiniz.',
        desc2: Center(),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber16,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber17,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber18,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber19,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber20,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber21,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber22,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber23,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber24,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber25,
      ),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: 'Bu testte HER İKİ kulağınızdan duyduğunuz sayıyı seçiniz.',
        desc2: Center(),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber26,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber27,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber28,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber29,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber30,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber31,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber32,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber33,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber34,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber35,
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
