import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:segundo_vista_app/data/provider/vistasoft_api.provider.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VistaSoftApiClient>(() => VistaSoftApiClient(Dio(BaseOptions(
        baseUrl: 'http://sandbox-rest.vistahost.com.br/',
        queryParameters: {'key': 'c9fdd79584fb8d369a6a579af1a8f681'},
        headers: {'Accept': 'application/json'}))));
  }
}
