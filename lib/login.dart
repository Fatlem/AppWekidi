import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF2A65A),
              Color(0xFFD76D2E),
              Color(0xFF7B3E19),
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                  size: 80,
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome Back!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DynaPuff', // Use the DynaPuff font
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Login to continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontFamily: 'DynaPuff', // Use the DynaPuff font
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.brown[800]),
                    filled: true,
                    fillColor: Colors.orange[100],
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.brown[800], fontFamily: 'DynaPuff'), // Use the DynaPuff font
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true, // Ensure obscureText is true only for password
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.brown[800]),
                    filled: true,
                    fillColor: Colors.orange[100],
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.brown[800], fontFamily: 'DynaPuff'), // Use the DynaPuff font
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown[800],
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18, fontFamily: 'DynaPuff'), // Use the DynaPuff font
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    'Belum punya akun? Daftar di sini',
                    style: TextStyle(color: Colors.white70, fontFamily: 'DynaPuff'), // Use the DynaPuff font
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
