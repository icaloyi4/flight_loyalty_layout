import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/core/assets/my_cons.dart';

class Profile extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        profileIcon(),
        SizedBox(
          width: MyCons.size15,
        ),
        Expanded(
          child: Container(
              height: MyCons.size50,
              alignment: Alignment.center,
              child: profileData()),
        ),
      ],
    );
  }

  Widget profileIcon() {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: EdgeInsets.all(MyCons.size8),
        child: Icon(
          CupertinoIcons.person,
          size: MyCons.size45,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget profileData() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              "Good Morning, Ical",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: MyCons.size20,
              ),
            ),
            SizedBox(
              width: MyCons.size10,
            ),
            const Icon(
              CupertinoIcons.chevron_right_circle,
              color: Colors.white,
            ),
          ],
        ),
        Text(
          "Crown Geener, Ical",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
