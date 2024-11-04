import 'package:flutter/material.dart';
import 'package:restofatlem_14624/welcome.dart';
import 'package:restofatlem_14624/login.dart';
import 'package:restofatlem_14624/dashboard.dart';
import 'package:restofatlem_14624/update_user.dart';
import 'package:restofatlem_14624/register.dart';
import 'package:restofatlem_14624/cart.dart';
import 'package:restofatlem_14624/checkout.dart';
import 'package:restofatlem_14624/payment.dart';
import 'package:restofatlem_14624/thankyou.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fatlem Wekidi くん', // Nama aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue, // Tema utama aplikasi
      ),
      initialRoute: '/', // Rute awal aplikasi, menampilkan splash screen
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/dashboard': (context) => Dashboard(),
        '/update-user': (context) => UpdateUser(),
        '/cart': (context) => Cart(cartItems: []), // Inisialisasi keranjang kosong
        '/checkout': (context) => Checkout(),
        '/payment': (context) => Payment(),
        '/thankyou': (context) => ThankYouScreen(),
      },
    );
  }
}
