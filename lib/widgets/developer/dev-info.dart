import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DevInfo extends StatelessWidget {
  final String name;
  final String uniName;
  final String imgPath;
  const DevInfo({Key key, this.name, this.uniName, this.imgPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(
          imgPath,
          // height: 100,
          // width: 100,
          fit: BoxFit.contain,
        ),
      ),
      title: Text(
        name,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      subtitle: Text(
        uniName,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Colors.black54,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
