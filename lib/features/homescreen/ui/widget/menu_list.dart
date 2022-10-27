import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/assets/my_cons.dart';
import '../../model/cardmenumodel.dart';

class MenuList extends StatefulWidget {
  @override
  _MenuList createState() => _MenuList();
}

class _MenuList extends State<MenuList> {
  List<CardMenuModel> _menu = [];

  @override
  void initState() {
    // TODO: implement initState
    _menu.add(
        CardMenuModel("Attendance", "", CupertinoIcons.calendar_today, null));
    _menu.add(
        CardMenuModel("Document", "", CupertinoIcons.archivebox_fill, null));
    _menu.add(CardMenuModel("Leave", "", CupertinoIcons.briefcase_fill, null));
    _menu.add(CardMenuModel("Overtime", "", CupertinoIcons.clock_fill, null));
    _menu.add(CardMenuModel("Parking", "", CupertinoIcons.car_fill, null));
    _menu.add(
        CardMenuModel("Training", "", CupertinoIcons.book_circle_fill, null));
    _menu.add(CardMenuModel("To Do", "", CupertinoIcons.list_bullet, null));
    _menu.add(CardMenuModel(
        "Report", "", CupertinoIcons.chart_bar_square_fill, null));
    _menu.add(CardMenuModel("To Do", "", CupertinoIcons.list_bullet, null));
    _menu.add(CardMenuModel(
        "Report", "", CupertinoIcons.chart_bar_square_fill, null));
    _menu.add(
        CardMenuModel("Attendance", "", CupertinoIcons.calendar_today, null));
    _menu.add(
        CardMenuModel("Document", "", CupertinoIcons.archivebox_fill, null));
    _menu.add(CardMenuModel("Leave", "", CupertinoIcons.briefcase_fill, null));
    _menu.add(CardMenuModel("Overtime", "", CupertinoIcons.clock_fill, null));
    _menu.add(CardMenuModel("Parking", "", CupertinoIcons.car_fill, null));
    _menu.add(
        CardMenuModel("Training", "", CupertinoIcons.book_circle_fill, null));
    _menu.add(CardMenuModel("To Do", "", CupertinoIcons.list_bullet, null));
    _menu.add(CardMenuModel(
        "Report", "", CupertinoIcons.chart_bar_square_fill, null));
    _menu.add(CardMenuModel("To Do", "", CupertinoIcons.list_bullet, null));
    _menu.add(CardMenuModel(
        "Report", "", CupertinoIcons.chart_bar_square_fill, null));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _heightcard = 150.0;
    return SizedBox(
      height: _heightcard,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _menu.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: (_heightcard/2).toDouble(),
            childAspectRatio: 1,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
                child: Padding(
              padding:  EdgeInsets.all(MyCons.size8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    _menu[index].icon,
                    size: MyCons.size50 / 2,
                  ),
                  SizedBox(
                    height: MyCons.size10,
                  ),
                  Container(
                    child: Text(
                      _menu[index].title,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                ],
              ),
            )),
          );
        },
      ),
    );
  }
}
