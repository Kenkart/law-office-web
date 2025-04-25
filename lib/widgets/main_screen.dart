import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatelessWidget {
  final Widget child;
  const MainScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => context.go('/'),
                icon: Image.asset('assets/logo.jpg'),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () => context.go('/about'),
                    child: const Text(
                      'About Us',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.go('/contact'),
                    child: const Text(
                      'Contact Us',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: child,
                  ),
                ),
                const Footer(),
              ],
            ),
          ),
        ));
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blueGrey[900],
      child: const SelectionArea(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Contact Us',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email, color: Colors.white),
              SizedBox(width: 8),
              Text('sugiantorolaw@gmail.com',
                  style: TextStyle(color: Colors.white)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone, color: Colors.white),
              SizedBox(width: 8),
              Text('+62 81217777332 / +62 87855801998',
                  style: TextStyle(color: Colors.white)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, color: Colors.white),
              SizedBox(width: 8),
              Text(
                  'Jl. Mawar No. 52 Kel. Tegalsari, Kec. Tegalsari Kota Surabaya 60262, Jawa Timur, Indonesia ',
                  style: TextStyle(color: Colors.white)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.instagram, color: Colors.white),
              SizedBox(width: 8),
              Text('@kevinsugiantoro.id @lawofficesugiantoro',
                  style: TextStyle(color: Colors.white)),
            ],
          ),
          SizedBox(height: 8),
        ],
      )),
    );
  }
}
