import 'package:flutter/material.dart';
import 'pillar.dart';

abstract class Domain extends ChangeNotifier {
  final Pillar pillar;

  Domain(this.pillar);

  void increaseArticleCount({int by = 1}) {
    pillar.increaseArticleCount(by: by);
    notifyListeners();
  }

  int get articleCount => pillar.articleCount;
  String get imageName => pillar.type.imageName;
  Color get backgroundColor => pillar.type.backgroundColor;
}

class Flutter extends Domain {
  Flutter(super.pillar);
}

class Android extends Domain {
  Android(super.pillar);
}

class Swift extends Domain {
  Swift(super.pillar);
}
