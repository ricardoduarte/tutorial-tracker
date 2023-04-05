import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/pillar.dart';
import '../models/domain.dart';

class TutorialWidget extends StatefulWidget {
  final Domain domain;

  const TutorialWidget({required this.domain, super.key});

  @override
  State<TutorialWidget> createState() => _TutorialWidgetState();
}

class _TutorialWidgetState extends State<TutorialWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            widget.domain.increaseArticleCount();
          },
          child:
              Image.asset('assets/images/${widget.domain.imageName}', width: 110, height: 110),
        ),
        Positioned(
          bottom: 2,
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text(widget.domain.articleCount.toString()),
          ),
        )
      ],
    );
  }
}
