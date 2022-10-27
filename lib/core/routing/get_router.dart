
import 'package:get/get.dart';
import 'package:untitled1/main_page.dart';
import 'page_routing.dart';

class GetRouter {
  static List<GetPage> generateRoute() {
    return [
      GetPage(name: PageRouting.ROOT, page: () => MainPage()),
    ];
  }
}
