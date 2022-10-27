import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/core/assets/my_colors.dart';
import 'package:untitled1/core/assets/my_cons.dart';

class Destination extends StatefulWidget {
  @override
  _Destination createState() => _Destination();
}

class _Destination extends State<Destination> {
  Map<String, String> _dropdownValue = Map();
  Map<String, List<String>> _dropdownItems = Map();
  List<String> _destinationList = [];
  List<String> _departureList = [];
  var isChecked = false;
  var isShow = false;
  @override
  void initState() {
    // TODO: implement initState

    //Dummy
    _departureList.add("Jakarta, Soekarno Hatta, CGK");
    _departureList.add("Surabaya, Juanda, SBY");
    _departureList.add("Malang, Abd Rahman Saleh, MLG");
    _dropdownValue.putIfAbsent("departure", () => _departureList.first);
    _dropdownItems.putIfAbsent("departure", () => _departureList);
    _destinationList.add("Jakarta, Soekarno Hatta, CGK");
    _destinationList.add("Surabaya, Juanda, SBY");
    _destinationList.add("Malang, Abd Rahman Saleh, MLG");
    _dropdownValue.putIfAbsent("destination", () => _departureList.first);
    _dropdownItems.putIfAbsent("destination", () => _destinationList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(MyCons.size15))),
      child: Padding(
        padding: EdgeInsets.all(MyCons.size8),
        child: Padding(
          padding: EdgeInsets.all(MyCons.size8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              SizedBox(
                height: MyCons.size10,
              ),
              const Text(
                "From",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              dropdownDestination("Departure", "departure", isfrom: true),
              SizedBox(
                height: MyCons.size10,
              ),
              const Text(
                "To",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              dropdownDestination(
                "Destination",
                "destination",
              ),
              SizedBox(
                height: MyCons.size10,
              ),
              Container(
                width: MyCons.width_screen,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isShow = !isShow;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedOpacity(
                        duration: Duration(milliseconds: 400),
                        opacity: isShow ? 0 : 1,
                        child:
                            isShow ? null : Icon(CupertinoIcons.chevron_down),
                      ),
                      AnimatedOpacity(
                        duration: Duration(milliseconds: 400),
                        opacity: isShow ? 1 : 0,
                        child: !isShow
                            ? null
                            : Container(
                                width: MyCons.width_screen,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: MyColors.mainColor,
                                          borderRadius: BorderRadius.circular(
                                              MyCons.size10)),
                                      child: Padding(
                                        padding: EdgeInsets.all(MyCons.size8),
                                        child: Text(
                                          "Book",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget header() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          CupertinoIcons.checkmark_seal_fill,
          color: MyColors.mainColor,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Use your LinkMiles for redemtion",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Nantikan kemudahan lainnya bersama LinkMiles",
                style: TextStyle(
                  fontSize: MyCons.size10,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 20,
          width: 20,
          child: Checkbox(
            value: isChecked,
            activeColor: MyColors.mainColor,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget dropdownDestination(String hint, String key, {isfrom = false}) {
    print(_dropdownValue[key].toString());
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.all(Radius.circular(MyCons.size50))),
      child: Padding(
        padding: EdgeInsets.only(
          left: MyCons.size15,
          right: MyCons.size15,
        ),
        child: Row(
          children: [
            const Icon(
              Icons.airplanemode_active,
              color: Colors.grey,
              size: 35,
            ),
            SizedBox(
              width: MyCons.size10,
            ),
            Expanded(
              child: DropdownButton<String>(
                value: _dropdownValue[key].toString(),
                icon: null,
                isExpanded: true,
                iconSize: 0.0,
                underline: const SizedBox(),
                hint: Text(hint),
                items: _dropdownItems[key]?.map((String map) {
                  return DropdownMenuItem<String>(value: map, child: Text(map));
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    _dropdownValue[key] = val.toString();
                  });
                },
              ),
            ),
            SizedBox(
              width: MyCons.size10,
            ),
            isfrom
                ? Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.white, // border color
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        CupertinoIcons.arrow_up_arrow_down,
                        color: MyColors.mainColor,
                        size: MyCons.size15,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
