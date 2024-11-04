import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, // Removes the back button
      title: Text(
        'Dashboard',
        style: TextStyle(fontFamily: 'DynaPuff'),
      ),
      actions: <Widget>[
        PopupMenuButton<String>(
          onSelected: (String result) {
            if (result == 'Call Center') {
              _makePhoneCall('tel:+62123456789'); // Update with the appropriate phone number
            } else if (result == 'SMS Center') {
              _sendSMS('Hello, I need assistance!', '+62123456789'); // Update with the appropriate SMS number
            } else if (result == 'Maps') {
              _launchMaps('https://www.google.com/maps'); // Update with the appropriate map URL
            } else if (result == 'Update User') {
              Navigator.pushNamed(context, '/update-user');
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'Call Center',
              child: Text('Call Center', style: TextStyle(fontFamily: 'DynaPuff')),
            ),
            const PopupMenuItem<String>(
              value: 'SMS Center',
              child: Text('SMS Center', style: TextStyle(fontFamily: 'DynaPuff')),
            ),
            const PopupMenuItem<String>(
              value: 'Maps',
              child: Text('Maps', style: TextStyle(fontFamily: 'DynaPuff')),
            ),
            const PopupMenuItem<String>(
              value: 'Update User',
              child: Text('Update Profile', style: TextStyle(fontFamily: 'DynaPuff')),
            ),
          ],
        ),
      ],
    );
  }

  // Method to make a phone call
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Method to send an SMS
  Future<void> _sendSMS(String message, String phone) async {
    final Uri uri = Uri(scheme: 'sms', path: phone, queryParameters: {'body': message});
    if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
    } else {
      throw 'Could not launch SMS';
    }
  }

  // Method to launch maps
  Future<void> _launchMaps(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Maps';
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
