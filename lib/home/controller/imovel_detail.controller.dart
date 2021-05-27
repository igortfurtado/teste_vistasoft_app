import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:segundo_vista_app/data/model/imovel.model.dart';
import 'package:segundo_vista_app/routes/app_routes.dart';

class ImovelDetailsController extends GetxController {
  final ImovelModel _imovel;

  ImovelDetailsController({required Map<String, dynamic> screenArguments})
      : _imovel = screenArguments[AppRoutes.IMOVEL_DETAILS];

  var f = NumberFormat("#,###.0#", "pt_BR");

  String get categoria => _imovel.categoria;
  String get codigo => '#' + _imovel.codigo;
  String get valorVenda =>
      _imovel.moeda +
      ' ' +
      (_imovel.valorVenda.isEmpty
          ? '--'
          : f.format(double.parse(_imovel.valorVenda)));
  String get endereco => _imovel.bairro + ', ' + _imovel.cidade;
  String get dormitorios =>
      _imovel.dormitorios.isEmpty ? '--' : _imovel.dormitorios;
  String get vagas => _imovel.vagas.isEmpty ? '--' : _imovel.vagas;
  String get areaTotal => _imovel.areaTotal.isEmpty ? '--' : _imovel.areaTotal;
}
