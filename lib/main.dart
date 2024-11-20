import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:zyramarket/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Zyramarket',
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.blueAccent, // Warna header
            foregroundColor: Colors.white, // Warna teks header
          ),
          scaffoldBackgroundColor: Colors.blue.shade50, // Warna background
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
          ).copyWith(secondary: Colors.lightBlue[400]),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
