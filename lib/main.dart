import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';

void main() => runApp(TokTik());

class TokTik extends StatelessWidget {
  const TokTik({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DiscoverProvider()) // Se agrega el provider para que sea visible en toda la app
      ],
      child: MaterialApp(
          title: 'TokTik',
          debugShowCheckedModeBanner: false, // Quita banner de debug
          theme: AppTheme().getTheme(), // Aplica el tema de la app
          home: DiscoverScreen()
      ),
    );
  }
}
