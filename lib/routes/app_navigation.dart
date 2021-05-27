import 'package:get/get.dart';
import 'package:segundo_vista_app/home/home.binding.dart';
import 'package:segundo_vista_app/home/view/home.page.dart';
import 'package:segundo_vista_app/home/view/imovel_detail.page.dart';

import 'app_routes.dart';

class AppNavigation {
  static List<GetPage> get pages => [
        GetPage(
          name: AppRoutes.HOME,
          page: () => HomePage(Get.find()),
          binding: HomeBinding(),
        ),
        GetPage(
          name: AppRoutes.IMOVEL_DETAILS,
          page: () => ImovelDetailsPage(Get.find()),
          transition: Transition.rightToLeft,
          binding: HomeBinding(),
        )
      ];
}
