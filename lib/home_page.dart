import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'icon',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 32.0,
        child: Image.asset('assets/images/account_circle.png'),
      ),
    );

    final profileButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 3.0),
      child: Material(
        borderRadius: BorderRadius.circular(20.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Profile', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final socialNetwork = Padding(
      padding: EdgeInsets.symmetric(vertical: 3.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Social Network', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final mediaGallery = Padding(
      padding: EdgeInsets.symmetric(vertical: 3.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Media Gallery', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final dokumen = Padding(
      padding: EdgeInsets.symmetric(vertical: 3.0),
      child: Material(
        borderRadius: BorderRadius.circular(20.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Documents', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final networkMaps = Padding(
      padding: EdgeInsets.symmetric(vertical: 3.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Network Maps', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            profileButton,
            socialNetwork,
            mediaGallery,
            dokumen,
            networkMaps,
          ],
        ),
      ),
    );
  }
}
