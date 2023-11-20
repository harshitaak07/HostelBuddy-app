import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HamDrawer extends StatefulWidget {
  const HamDrawer({super.key});

  @override
  State<HamDrawer> createState() => _HamDrawerState();
}

class _HamDrawerState extends State<HamDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.all(10.0), children: [
      DrawerHeader(
        child: Align(
            alignment: Alignment.center,
            child: Row(
              children: [
                Icon(Icons.article_outlined),
                SizedBox(width: 10.0),
                Text(
                  'Menu',
                  style: GoogleFonts.prompt(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
      ),
      ListTile(
        leading: Icon(Icons.account_circle_outlined, color: Colors.black),
        title: Text(
          'Account',
          style: GoogleFonts.quicksand(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        onTap: () {
           Navigator.pushNamed(context, '/account');
        },
      ),
      ListTile(
        leading: Icon(Icons.settings, color: Colors.black),
        title: Text(
          'Settings',
          style: GoogleFonts.quicksand(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onTap: () {
           
        },
      ),
      ListTile(
        leading: Icon(Icons.bedtime_rounded, color: Colors.black),
        title: Text(
          'Theme',
          style: GoogleFonts.quicksand(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onTap: () {
           
        },
      ),
      ListTile(
        leading: Icon(Icons.announcement_rounded, color: Colors.black),
        title: Text(
          'Feedback',
          style: GoogleFonts.quicksand(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onTap: () {
           Navigator.pushNamed(context, '/feedback');
        },
      ),
      ListTile(
        leading: Icon(Icons.app_shortcut_rounded, color: Colors.black),
        title: Text(
          'Sign Out',
          style: GoogleFonts.quicksand(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onTap: () {
          
        },
      ),
    ]));
  }
}
