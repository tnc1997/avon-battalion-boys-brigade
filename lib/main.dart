import 'package:flutter/material.dart' hide Hero;

import 'age_groups.dart';
import 'events.dart';
import 'find_a_company.dart';
import 'footer.dart';
import 'get_involved.dart';
import 'header.dart';
import 'hero.dart';
import 'statistics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      title: 'Avon Battalion Boys\' Brigade',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF224B8E),
          onPrimary: Colors.white,
          secondary: Color(0xFF5D99D2),
          onSecondary: Colors.black,
          tertiary: Color(0xFF2D395A),
          onTertiary: Colors.white,
          error: Color(0xFFB3261E),
          onError: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black,
          onSurfaceVariant: Colors.black,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Futura',
          ),
          displayMedium: TextStyle(
            fontFamily: 'Futura',
          ),
          displaySmall: TextStyle(
            fontFamily: 'Futura',
          ),
          headlineLarge: TextStyle(
            fontFamily: 'Futura',
          ),
          headlineMedium: TextStyle(
            fontFamily: 'Futura',
          ),
          headlineSmall: TextStyle(
            fontFamily: 'Futura',
          ),
          titleLarge: TextStyle(
            fontFamily: 'Futura',
          ),
          titleMedium: TextStyle(
            fontFamily: 'Futura',
          ),
          titleSmall: TextStyle(
            fontFamily: 'Futura',
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Proxima Nova',
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Proxima Nova',
          ),
          bodySmall: TextStyle(
            fontFamily: 'Proxima Nova',
          ),
          labelLarge: TextStyle(
            fontFamily: 'IBM Plex Mono',
          ),
          labelMedium: TextStyle(
            fontFamily: 'IBM Plex Mono',
          ),
          labelSmall: TextStyle(
            fontFamily: 'IBM Plex Mono',
          ),
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFF5D99D2),
          onPrimary: Colors.black,
          secondary: Color(0xFF2D395A),
          onSecondary: Colors.white,
          tertiary: Color(0xFF224B8E),
          onTertiary: Colors.white,
          error: Color(0xFFF2B8B5),
          onError: Colors.black,
          surface: Colors.black,
          onSurface: Colors.white,
          onSurfaceVariant: Colors.white,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Futura',
          ),
          displayMedium: TextStyle(
            fontFamily: 'Futura',
          ),
          displaySmall: TextStyle(
            fontFamily: 'Futura',
          ),
          headlineLarge: TextStyle(
            fontFamily: 'Futura',
          ),
          headlineMedium: TextStyle(
            fontFamily: 'Futura',
          ),
          headlineSmall: TextStyle(
            fontFamily: 'Futura',
          ),
          titleLarge: TextStyle(
            fontFamily: 'Futura',
          ),
          titleMedium: TextStyle(
            fontFamily: 'Futura',
          ),
          titleSmall: TextStyle(
            fontFamily: 'Futura',
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Proxima Nova',
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Proxima Nova',
          ),
          bodySmall: TextStyle(
            fontFamily: 'Proxima Nova',
          ),
          labelLarge: TextStyle(
            fontFamily: 'IBM Plex Mono',
          ),
          labelMedium: TextStyle(
            fontFamily: 'IBM Plex Mono',
          ),
          labelSmall: TextStyle(
            fontFamily: 'IBM Plex Mono',
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: const Header(),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(),
            Statistics(),
            AgeGroups(),
            FindACompany(),
            Events(),
            GetInvolved(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
