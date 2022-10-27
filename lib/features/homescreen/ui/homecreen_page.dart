import 'package:flutter/material.dart';
import 'package:untitled1/core/assets/my_cons.dart';
import 'package:untitled1/features/homescreen/ui/widget/header.dart';
import 'package:untitled1/features/homescreen/ui/widget/menu_list.dart';
import 'package:untitled1/features/homescreen/ui/widget/ongoing.dart';

import '../../../core/assets/styling.dart';
import 'widget/citinerary.dart';
import 'widget/destination.dart';
import 'widget/profile.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPage createState() => _HomeScreenPage();
}

class _HomeScreenPage extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: gradienBg(),
          child: Padding(
            padding:  EdgeInsets.all(MyCons.size15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                 SizedBox(
                  height: MyCons.size20,
                ),
                Profile(),
                 SizedBox(
                  height: MyCons.size20,
                ),
                Destination(),
                 SizedBox(
                  height: MyCons.size20,
                ),
                const Text(
                  "On Going Promo",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black87),
                ),
                 SizedBox(
                  height: MyCons.size20,
                ),
                OnGoing(),
                 SizedBox(
                  height: MyCons.size20,
                ),
                const Text(
                  "Other Product",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black87),
                ),
                 SizedBox(
                  height: MyCons.size15,
                ),
                MenuList(),
                 Text(
                  "Citinerary",
                  style:  TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: (MyCons.size50/2),
                      color: Colors.black87),
                ),
                const SizedBox(
                  height: 20,
                ),
                Citinerary()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
