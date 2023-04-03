import 'package:flutter/material.dart';
import 'pages/tutorials_page.dart';
import 'models/pillar.dart';
import 'widgets/pillar_widget.dart';

void main() {
  runApp(const Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  final pillarData = Pillar(type: PillarType.flutter, articleCount: 115);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorial Tracker',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tutorial Tracker'),
        ),
        body: PillarStatefulWidget(
          pillarData: pillarData,
          child: const TutorialsPage(),
          ),
        ),
    );
  }
}
