import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// list tile function for hamburger and account page
class CustomListTile extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final Color textColor;
  final VoidCallback onTap;

  const CustomListTile({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.textColor,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon, color: textColor),
      title: Text(
        title,
        style: GoogleFonts.quicksand(
          color: textColor,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
      onTap: onTap,
    );
  }
}

