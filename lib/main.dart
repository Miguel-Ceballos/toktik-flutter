import 'package:flutter/material.dart';
import 'package:toktik/config/theme/app_theme.dart';

void main() => runApp(TokTik());

class TokTik extends StatelessWidget {
  const TokTik({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TokTik',
      debugShowCheckedModeBanner: false, // Quita banner de debug
      theme: AppTheme().getTheme(), // Aplica el tema de la app
      home: Scaffold(
        appBar: AppBar(title: Text('Material App Bar')),
        body: Center(child: Container(child: Text('Hello World'))),
      ),
    );
  }
}
