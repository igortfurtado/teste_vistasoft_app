import 'package:get/get.dart';
import 'package:segundo_vista_app/data/model/imovel.model.dart';
import 'package:segundo_vista_app/data/model/pagination.model.dart';
import 'package:segundo_vista_app/data/repository/imovel.repository.dart';

class HomeController extends GetxController {
  final ImovelRepository imovelRepository;
  final _imoveis = <ImovelModel>[].obs;
  final _pagination =
      PaginationModel(currentPage: 0, limitPage: 0, total: 0).obs;
  final _isLastPage = false.obs;

  List<ImovelModel> get imoveis => this._imoveis.toList();
  int get totalImoveis => this._pagination.value.total;

  HomeController({required this.imovelRepository});

  @override
  void onInit() async {
    await findTotalImoveis();
    ever(_pagination, (_) => findImoveis());
    _changePaginationFilter(1, 15);

    super.onInit();
  }

  Future<void> findImoveis() async {
    final imoveisData = await imovelRepository.findAll(_pagination.value);
    if (imoveisData.isEmpty) {
      _isLastPage.value = true;
    }
    _imoveis.addAll(imoveisData);
  }

  Future<void> findTotalImoveis() async {
    final paginationData = await imovelRepository.findTotalImoveis();
    _pagination.value = paginationData;
  }

  void nextPage() {
    _changePaginationFilter(
      _pagination.value.currentPage + 1,
      _pagination.value.limitPage,
    );
  }

  void _changePaginationFilter(int page, int limit) {
    _pagination.update((val) {
      val?.currentPage = page;
      val?.limitPage = limit;
    });
  }
}
