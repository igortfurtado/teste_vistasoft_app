class ImovelModel {
  final String codigo;
  final String categoria;
  final String moeda;
  final String valorVenda;
  final String fotoDestaquePequena;
  final String fotoDestaque;
  final String bairro;
  final String cidade;
  final String dormitorios;
  final String vagas;
  final String areaTotal;
  ImovelModel({
    required this.codigo,
    required this.moeda,
    required this.categoria,
    required this.valorVenda,
    required this.fotoDestaquePequena,
    required this.fotoDestaque,
    required this.bairro,
    required this.cidade,
    required this.dormitorios,
    required this.vagas,
    required this.areaTotal,
  });

  factory ImovelModel.fromJson(Map<String, dynamic> map) {
    return ImovelModel(
      codigo: map['Codigo'],
      moeda: map['Moeda'],
      categoria: map['Categoria'],
      valorVenda: map['ValorVenda'],
      fotoDestaquePequena: map['FotoDestaquePequena'],
      fotoDestaque: map['FotoDestaque'],
      bairro: map['Bairro'],
      cidade: map['Cidade'],
      dormitorios: map['Dormitorios'],
      vagas: map['Vagas'],
      areaTotal: map['AreaTotal'],
    );
  }
}
