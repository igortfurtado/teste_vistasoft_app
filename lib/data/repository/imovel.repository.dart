import 'package:segundo_vista_app/data/model/imovel.model.dart';
import 'package:segundo_vista_app/data/model/pagination.model.dart';
import 'package:segundo_vista_app/data/provider/vistasoft_api.provider.dart';

class ImovelRepository {
  final VistaSoftApiClient _apiClient;
  ImovelRepository(this._apiClient);

  Future<List<ImovelModel>> findAll(PaginationModel paginationFilter) async {
    Map<String, dynamic> json =
        await _apiClient.getAllImoveis(paginationFilter);

    if (json.containsKey('message')) {
      return [];
    }
    return json
        .map<String, ImovelModel>(
          (key, value) => MapEntry(key, ImovelModel.fromJson(value)),
        )
        .values
        .toList();
  }

  Future<PaginationModel> findTotalImoveis() async {
    Map<String, dynamic> json = await _apiClient.getImoveisPagination(
        PaginationModel(currentPage: 1, limitPage: 0, total: 0));

    return PaginationModel.fromJson(json);
  }
}
