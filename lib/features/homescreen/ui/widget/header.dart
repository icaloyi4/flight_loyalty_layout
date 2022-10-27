import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/assets/my_cons.dart';
import '../../../../core/assets/styling.dart';

class Header extends StatefulWidget {
  @override
  _Header createState() => _Header();
}

class _Header extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: searchBox()),
        SizedBox(
          width: MyCons.size5,
        ),
        scan(),
        SizedBox(
          width: MyCons.size5,
        ),
        notif()
      ],
    );
  }

  Widget searchBox() {
    return Container(
      height: MyCons.size45,
      child: TextFormField(
        decoration: fieldDecoration('Citinerary', CupertinoIcons.search),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Name cannot be empty';
          }
          return null;
        },
      ),
    );
  }

  Widget scan() {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.white, // border color
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          CupertinoIcons.barcode_viewfinder,
          size: MyCons.size30,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget notif() {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white, // border color
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              CupertinoIcons.bell_fill,
              size: MyCons.size30,
              color: Colors.grey,
            ),
          ),
        ),
        Positioned(
          left: 0,
          child: Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(6),
            ),
            constraints: BoxConstraints(
              minWidth: MyCons.size10,
              minHeight: MyCons.size10,
            ),
          ),
        )
      ],
    );
  }
}
