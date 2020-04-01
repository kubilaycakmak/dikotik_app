class Answer {
  String title;
  double value;
  String pathAudio;
  int voiceSex; // 0 - woman / 1 - man
  int order;

  Answer({
    this.voiceSex,
    this.pathAudio,
    this.order,
    this.title,
    this.value,
  });
}

final answer = <Answer>[
  Answer(title: 'geliyorum', value: 0.5),
  Answer(title: 'gidiyorum', value: 0.0),
  Answer(title: 'gittim', value: 0.0),
  Answer(title: 'geldim', value: 0.0),
  Answer(title: 'gitmistim', value: 0.0),
];
