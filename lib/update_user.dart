import 'package:flutter/material.dart';

class UpdateUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update User & Password', style: TextStyle(fontFamily: 'DynaPuff')),
        backgroundColor: Color(0xFF8D6E63), // Brownish tone for the AppBar
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFCC80), Color(0xFFFFAB40)], // Burger-inspired colors
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
                  Icons.person,
                  color: Colors.brown, // Icon color to match the theme
                  size: 80,
                ),
                SizedBox(height: 20),
                Text(
                  'Update Your Information',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DynaPuff',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Update your username and password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.brown[700], // A darker shade for contrast
                    fontFamily: 'DynaPuff',
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.brown), // Icon color matches the theme
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.brown[600], fontFamily: 'DynaPuff'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.brown),
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.brown[600], fontFamily: 'DynaPuff'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown, // Button color to match the theme
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {
                    // Update logic here
                  },
                  child: Text(
                    'Update',
                    style: TextStyle(fontSize: 18, fontFamily: 'DynaPuff'),
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
