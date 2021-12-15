

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Card(
        child:  ListTile(
          contentPadding: const EdgeInsets.all(18),
          leading: const Icon(
           Icons.check_circle_outline,
            color: Colors.blue,
        ),

          title: Text("Plan the Trip to Belgium", 
          style: GoogleFonts.firaSans()),
          subtitle: Text(
            "The self treat vacation to Belgium next summer",
            style: GoogleFonts.montserratAlternates(),
          ),
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: const [
            Icon(
              Icons.access_alarm_outlined,
              color: Colors.blue,
              ),
            Text("Yesterday")

          ],
          ),

        ),
      ),
    );
  }
}