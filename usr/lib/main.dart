import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:couldai_user_app/widgets/main_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'متجر الفضة',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFC0C0C0), // Silver
        hintColor: const Color(0xFFD4AF37), // Gold accent
        scaffoldBackgroundColor: const Color(0xFFF5F5F5), // Off-white
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: const IconThemeData(color: Color(0xFF333333)),
          titleTextStyle: GoogleFonts.cairo(
            color: const Color(0xFF333333),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: GoogleFonts.cairoTextTheme(
          Theme.of(context).textTheme,
        ).copyWith(
          bodyLarge: const TextStyle(color: Color(0xFF333333)),
          bodyMedium: const TextStyle(color: Color(0xFF555555)),
          titleLarge: GoogleFonts.cairo(
            color: const Color(0xFF333333),
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFC0C0C0),
          primary: const Color(0xFFC0C0C0),
          secondary: const Color(0xFFD4AF37),
          background: const Color(0xFFF5F5F5),
        ),
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF333333), // Dark grey for buttons
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
        ),
      ),
      home: const MainLayout(),
    );
  }
}
