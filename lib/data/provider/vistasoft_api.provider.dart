import 'package:dio/dio.dart';
import 'package:segundo_vista_app/data/model/pagination.model.dart';

class VistaSoftApiClient {
  final Dio _dio;

  VistaSoftApiClient(this._dio);

  Future<Map<String, dynamic>> getAllImoveis(
      PaginationModel paginationFilter) async {
    try {
      var response = await _dio.get(
        '/imoveis/listar',
        queryParameters: {
          'pesquisa':
              '{ "fields":["Codigo","Categoria","ValorVenda","Moeda", "Bairro","Cidade","Dormitorios","Vagas","AreaTotal", "FotoDestaquePequena","FotoDestaque"],"paginacao":{"pagina": ${paginationFilter.currentPage},"quantidade":${paginationFilter.limitPage}}}'
        },
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        print('error - get');
      }
    } catch (err) {
      print('error - get: ' + err.toString());
    }
    return Map();
  }

  Future<Map<String, dynamic>> getImoveisPagination(
      PaginationModel paginationFilter) async {
    try {
      var response = await _dio.get(
        '/imoveis/listar',
        queryParameters: {
          'pesquisa':
              '{"paginacao":{"pagina": ${paginationFilter.currentPage},"quantidade":${paginationFilter.limitPage}}}',
          'showtotal': 1
        },
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        print('error - get');
      }
    } catch (err) {
      print('error - get: ' + err.toString());
    }
    return Map();
  }
}
