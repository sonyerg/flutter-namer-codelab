import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Namer App',
        theme: ThemeData.light().copyWith(
          useMaterial3: true,
          scaffoldBackgroundColor: Color.fromARGB(255, 19, 19, 40),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color(0xFFFFAA4C),
            primaryColorDark: const Color(0xFF2D4059),
          ),
          textTheme: GoogleFonts.interTextTheme().copyWith().apply(
                bodyColor: const Color(0xFFE0E0E0),
                displayColor: const Color(0xFFE0E0E0),
              ),
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
