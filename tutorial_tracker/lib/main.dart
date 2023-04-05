import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/tutorials_page.dart';
import 'models/pillar.dart';
import 'models/domain.dart';

void main() {
  runApp(const Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorial Tracker',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tutorial Tracker'),
        ),
        body: MultiProvider(providers: [
          ChangeNotifierProvider<Flutter>(
              create: (context) => Flutter(Pillar(
                    type: PillarType.flutter,
                    articleCount: 115,
                  ))),
          ChangeNotifierProvider<Android>(
              create: (context) => Android(Pillar(
                    type: PillarType.android,
                    articleCount: 282,
                  ))),
          ChangeNotifierProvider<Swift>(
              create: (context) => Swift(Pillar(
                    type: PillarType.ios,
                    articleCount: 608,
                  ))),
        ], child: const TutorialsPage()),
      ),
    );
  }
}
