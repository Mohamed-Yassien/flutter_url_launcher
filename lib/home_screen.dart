import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Url_Launcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton.icon(
              onPressed: () {
                launch(
                  'https://google.com',
                );
              },
              textColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.web),
              label: Text('Website'),
            ),
            FlatButton.icon(
              onPressed: () {
                launch('tel://01015852');
              },
              textColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.call),
              label: Text('Call'),
            ),
            FlatButton.icon(
              onPressed: () {
                launch('mailto:mohamed@gmail.com?subject=Hi&body=Hello Dear');
              },
              textColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.email),
              label: Text('Email'),
            ),
            FlatButton.icon(
              onPressed: () {
                launch('sms:01158555552');
              },
              textColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.sms),
              label: Text('SMS'),
            ),
            FlatButton.icon(
              onPressed: () {
                launch(
                    'whatsapp://send?phone=+2001203685915&text=${Uri.parse('hello my friend')}');
              },
              textColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.account_circle),
              label: Text('WhatsApp'),
            ),
            FlatButton.icon(
              onPressed: () {
                launch(
                  'https://www.facebook.com',
                  forceSafariVC: true,
                  forceWebView: true,
                );
              },
              textColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.face),
              label: Text('Facebook'),
            ),
            FlatButton.icon(
              onPressed: () {
                launch('https://www.instagram.com');
              },
              textColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.face),
              label: Text('instagram'),
            ),
          ],
        ),
      ),
    );
  }
}
