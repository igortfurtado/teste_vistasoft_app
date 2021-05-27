import 'package:get/get.dart';
import 'package:segundo_vista_app/data/repository/imovel.repository.dart';
import 'package:segundo_vista_app/home/controller/home.controller.dart';
import 'package:segundo_vista_app/home/controller/imovel_detail.controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImovelRepository>(() => ImovelRepository(Get.find()));
    Get.lazyPut<ImovelDetailsController>(() => ImovelDetailsController(screenArguments: Get.arguments));
    Get.lazyPut<HomeController>(
        () => HomeController(imovelRepository: Get.find()));
  }
}
