import 'dart:async';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/core/assets/my_cons.dart';

class OnGoing extends StatefulWidget {
  @override
  _OnGoing createState() => _OnGoing();
}

class _OnGoing extends State<OnGoing> {
  late PageController _controller;
  late var _heightCard;
  late var lowRatio;
  int _dot_pos = 0;
  List<String> _berita = [];

  @override
  void initState() {
    super.initState();
    _berita.add(
        "https://accurate.id/wp-content/uploads/2021/07/accurate.id-Promosi-adalah-pengertian-dari-Ahli-Jenis-dan-Contohnya.jpg");
    _berita.add(
        "https://blog.usetada.com/hs-fs/hubfs/Jangan%20Keliru%20Terapkan%20Program%20Promosi%2c%20Ini%20Tipsnya!.jpg?width=2500&name=Jangan%20Keliru%20Terapkan%20Program%20Promosi%2c%20Ini%20Tipsnya!.jpg");
    _berita.add(
        "https://www.mas-software.com/wp-content/uploads/2021/08/Strategi-Promosi.jpg");
    _controller = PageController();
    _heightCard = MyCons.heigh_screen * 0.25;
    lowRatio = _heightCard < 210.0;
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      try {
        if (_berita != null) {
          if (_dot_pos < _berita.length - 1) {
            _dot_pos++;
          } else {
            _dot_pos = 0;
          }
        }
      } catch (e) {
        _dot_pos = 0;
      }

      _controller.animateToPage(
        _dot_pos,
        duration: Duration(milliseconds: 700),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return promoWidget(_berita);
  }

  Widget promoWidget(List<String>? promo) {
    return Column(
      children: [
        Container(
          height: _heightCard,
          child: PageView.builder(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _dot_pos = index;
                });
              },
              itemCount: promo?.length,
              itemBuilder: (context, pos) => pageview(promo!.elementAt(pos))),
        ),
        dots_indicator(_dot_pos)
      ],
    );
  }

  Widget pageview(String model) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: _heightCard,
        child: Image.network(model,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover, loadingBuilder: (BuildContext context,
                Widget child, ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        }),
      ),
    );
  }

  Widget dots_indicator(int pos) {
    if (_berita == null) {
      return Container();
    }
    if (_berita.isEmpty) {
      return Container();
    }
    return DotsIndicator(
      dotsCount: _berita.length,
      position: pos.toDouble(),
      decorator: DotsDecorator(
        size: Size.square(MyCons.size8),
        activeSize: Size(MyCons.size8 * 2, MyCons.size8),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }
}
