import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbuddy/Widgets/custom_listtile.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
          CustomListTile(
            leadingIcon: Icons.language,
            title: 'Transaction History',
            textColor: Colors.white,
            onTap: () {
              // Define what should happen on tile tap
            },
          ),
          const Divider(
            color: Colors.white,
            thickness: 1,
          ),
          CustomListTile(
            leadingIcon: Icons.edit,
            title: 'Edit Profile',
            textColor: Colors.white,
            onTap: () {
              // Define what should happen on tile tap
            },
          ),
          const Divider(
            color: Colors.white,
            thickness: 1,
          )
        ],
      ),
    );
  }
}
