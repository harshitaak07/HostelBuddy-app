import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbuddy/Widgets/custom_listtile.dart';
// Hamdrawer 
class HamDrawer extends StatefulWidget {
  const HamDrawer({super.key});

  @override
  State<HamDrawer> createState() => _HamDrawerState();
}

class _HamDrawerState extends State<HamDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: const EdgeInsets.all(10.0), children: [
      DrawerHeader(
        child: Align(
            alignment: Alignment.center,
            child: Row(
              children: [
                const Icon(Icons.article_outlined),
                const SizedBox(width: 10.0),
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
      CustomListTile(
            leadingIcon: Icons.account_circle_outlined,
            title: 'Account',
            textColor: Colors.black,
            onTap: () {
              Navigator.pushNamed(context, '/account');
            },
          ),
      CustomListTile(
            leadingIcon: Icons.app_shortcut_rounded,
            title: 'Sign Out',
            textColor: Colors.black,
            onTap: () {
            },
          ),
    ]));
  }
}
