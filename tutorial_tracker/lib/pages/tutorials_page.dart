import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/tutorial_widget.dart';
import '../models/pillar.dart';
import '../models/domain.dart';

class TutorialsPage extends StatefulWidget {
  const TutorialsPage({super.key});

  @override
  State<TutorialsPage> createState() => _TutorialsPageState();
}

class _TutorialsPageState extends State<TutorialsPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer3<Flutter, Android, Swift>(builder: (_, flutter, android, swift, __) {
      final totalArticles = android.articleCount + flutter.articleCount + swift.articleCount;

      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TutorialWidget(domain: flutter),
                TutorialWidget(domain: android),
                TutorialWidget(domain: swift),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              'Total Tutorials: $totalArticles',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          )
        ],
      );
    });
  }
}
