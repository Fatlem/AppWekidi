import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>(); // Key for the form
  String _name = '';
  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF2A65A), // Light burger color
              Color(0xFFD76D2E), // Medium burger color
              Color(0xFF7B3E19), // Dark burger color
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey, // Assign the key to the Form widget
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    Icons.person_add,
                    color: Colors.white,
                    size: 80,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Create an Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DynaPuff', // DynaPuff font for title
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Register to get started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontFamily: 'DynaPuff', // DynaPuff font for subtitle
                    ),
                  ),
                  SizedBox(height: 30),
                  // Name TextField
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person, color: Colors.brown[800]),
                      filled: true,
                      fillColor: Colors.orange[100],
                      labelText: 'Name',
                      labelStyle: TextStyle(
                        color: Colors.brown[800],
                        fontFamily: 'DynaPuff', // DynaPuff font for label
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _name = value;
                    },
                  ),
                  SizedBox(height: 20),
                  // Username TextField
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline, color: Colors.brown[800]),
                      filled: true,
                      fillColor: Colors.orange[100],
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: Colors.brown[800],
                        fontFamily: 'DynaPuff', // DynaPuff font for label
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _username = value;
                    },
                  ),
                  SizedBox(height: 20),
                  // Password TextField
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline, color: Colors.brown[800]),
                      filled: true,
                      fillColor: Colors.orange[100],
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.brown[800],
                        fontFamily: 'DynaPuff', // DynaPuff font for label
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _password = value;
                    },
                  ),
                  SizedBox(height: 30),
                  // Register Button
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
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, navigate to the login screen
                        Navigator.pushNamed(context, '/login');
                      }
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'DynaPuff', // DynaPuff font for button text
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Login TextButton
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Sudah punya akun? Login di sini',
                      style: TextStyle(
                        color: Colors.white70,
                        fontFamily: 'DynaPuff', // DynaPuff font for text button
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
