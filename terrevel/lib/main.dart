import 'package:flutter/material.dart';
import 'package:terrevel/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFD8ECF1)),
        //primaryColor buat warna utama
        //scaffoldBackgroundColor buat warna background buat icon yang ada di widgetnya
        //debugShowCheckedModeBanner itu biar nga ada tanda logo debug di pojok kanan atasnya
        //accentcolor udah @deprecated, disarankan untuk pake colorScheme.secondary
        //saran didasarkan pada dokumentasi dart
        //biasanya colorScheme.secondary itu warnanya kontras dengan primary color
      ),
      home: HomeScreen(),
    );
  }
}
