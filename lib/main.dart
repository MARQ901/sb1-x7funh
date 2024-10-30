import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voice_social_media/providers/auth_provider.dart';
import 'package:voice_social_media/screens/home_screen.dart';
import 'package:voice_social_media/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        title: 'Voice Social Media',
        theme: AppTheme.lightTheme,
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}