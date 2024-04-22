import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tok/Config/Theme/app_theme.dart';
import 'package:tok_tok/Presentation/Screens/Discover/discover_provider.dart';
import 'package:tok_tok/Presentation/Screens/Discover/discover_screen.dart';

void main() => runApp(const MainApp());

final class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false, create: (_) => DiscoverProvider()..loadNextPage())
      ],
      child: MaterialApp(
          theme: AppTheme().getTheme(), home: const DiscoverScreen()),
    );
  }
}
