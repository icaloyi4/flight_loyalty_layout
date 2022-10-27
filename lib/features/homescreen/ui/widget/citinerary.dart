import 'package:flutter/material.dart';
import 'package:untitled1/core/assets/my_colors.dart';
import 'package:untitled1/core/assets/my_cons.dart';
import 'package:untitled1/features/homescreen/model/citineraryModel.dart';

class Citinerary extends StatefulWidget {
  @override
  _Citinerary createState() => _Citinerary();
}

class _Citinerary extends State<Citinerary> {
  List<CitineraryModel> citineraryModel = [];
  @override
  void initState() {
    // TODO: implement initState
    citineraryModel.add(CitineraryModel("For You", null));
    citineraryModel.add(CitineraryModel("Malang",
        "https://media.istockphoto.com/photos/malang-tugu-square-with-blue-sky-and-beautiful-garden-flower-park-is-picture-id1357870414?b=1&k=20&m=1357870414&s=170667a&w=0&h=XNyyQ_3ciE9UCx9P20tQXQv1Lm8JEAOOH9nY90z3FxQ="));
    citineraryModel.add(CitineraryModel("Surabaya",
        "https://ikbis.ac.id/wp-content/uploads/2021/03/Anda-di-Surabaya-Inilah-Pentingnya-Menggunakan-Konsultan-Pajak-Surabaya.jpg"));
    citineraryModel.add(CitineraryModel(
        "Jakarta", "https://media.timeout.com/images/105242442/image.jpg"));
    citineraryModel.add(CitineraryModel("Malang",
        "https://media.istockphoto.com/photos/malang-tugu-square-with-blue-sky-and-beautiful-garden-flower-park-is-picture-id1357870414?b=1&k=20&m=1357870414&s=170667a&w=0&h=XNyyQ_3ciE9UCx9P20tQXQv1Lm8JEAOOH9nY90z3FxQ="));
    citineraryModel.add(CitineraryModel("Surabaya",
        "https://ikbis.ac.id/wp-content/uploads/2021/03/Anda-di-Surabaya-Inilah-Pentingnya-Menggunakan-Konsultan-Pajak-Surabaya.jpg"));
    citineraryModel.add(CitineraryModel(
        "Jakarta", "https://media.timeout.com/images/105242442/image.jpg"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MyCons.heigh_screen * 0.28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: citineraryModel.length,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: myCity(citineraryModel.elementAt(index)),
          );
        },
      ),
    );
  }

  Widget myCity(CitineraryModel citineraryModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MyCons.heigh_screen * 0.2,
          width: MyCons.width_screen * 0.2,
          decoration: BoxDecoration(
            color: (citineraryModel.image == null)
                ? Color.fromARGB(58, 104, 183, 93)
                : Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(MyCons.size50)),
          ),
          child: (citineraryModel.image == null)
              ? Icon(
                  Icons.add,
                  size: 75,
                  color: MyColors.mainColor10,
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(MyCons.size50),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.all(Radius.circular(MyCons.size50)),
                        border:
                            Border.all(width: 2, color: MyColors.mainColor)),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(MyCons.size50),
                        child: Image.network(
                          citineraryModel.image.toString(),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
        ),
        SizedBox(
          height: MyCons.size10,
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              width: MyCons.width_screen * 0.2,
              decoration: BoxDecoration(
                  color: MyColors.mainColor50,
                  borderRadius:
                      BorderRadius.all(Radius.circular(MyCons.size50))),
              child: Padding(
                padding: EdgeInsets.all(MyCons.size8),
                child: Flexible(
                  child: Text(
                    "${citineraryModel.title}",
                    style: TextStyle(
                        color: MyColors.mainColor,
                        fontWeight: citineraryModel.image == null
                            ? FontWeight.bold
                            : null),
                  ),
                ),
              )),
        )
      ],
    );
  }
}
