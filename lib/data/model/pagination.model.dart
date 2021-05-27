class PaginationModel {
  int currentPage;
  int limitPage;
  int total;
  PaginationModel({
    required this.currentPage,
    required this.limitPage,
    required this.total,
  });

  factory PaginationModel.fromJson(Map<String, dynamic> map) {
    return PaginationModel(
      currentPage: map['pagina'],
      limitPage: map['quantidade'],
      total: map['total'],
    );
  }

  @override
  String toString() =>
      'PaginationModel(currentPage: $currentPage, limitPage: $limitPage, total: $total)';
}
