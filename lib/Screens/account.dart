import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 65,
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Lorem Ipsum",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "1234, Z Block",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          ListTile(
            leading: const Icon(Icons.timer, color: Colors.white),
            title: Text(
              'Transaction History',
              style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.white,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(Icons.edit, color: Colors.white),
            title: Text(
              'Edit Profile',
              style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.white,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(Icons.lock, color: Colors.white),
            title: Text(
              'Privacy and Security',
              style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.white,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(Icons.question_mark, color: Colors.white),
            title: Text(
              'Get Help',
              style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.white,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(Icons.language, color: Colors.white),
            title: Text(
              'Language',
              style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.white,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
