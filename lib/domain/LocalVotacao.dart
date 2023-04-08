class LocalVotacao {
  static final String localVotavaoTable = "localVotavaoTable";
  static final String idColumn = "idColumn";
  static final String zonaColumn = "zonaColumn";
  static final String secaoColumn = "secaoColumn";
  static final String situacaoColumn = "situacaoColumn";

  int id = 0;
  String zona = '';
  String secao = '';
  String situacao = '';

  LocalVotacao(
      {required this.id,
      required this.zona,
      required this.secao,
      required this.situacao});

  LocalVotacao.fromMap(Map map) {
    id = map[idColumn];
    zona = map[zonaColumn];
    secao = map[secaoColumn];
    situacao = map[situacaoColumn];
  }

  Map<String, Object?> toMap() {
    Map<String, Object?> map = {
      zonaColumn: zona,
      secaoColumn: secao,
      situacaoColumn: situacao,
    };
    if (id != 0) map[idColumn] = id;

    return map;
  }

  @override
  String toString() {
    return "Contact(id: ${id}, zona: ${zona}, seção: ${secao}, situação: ${situacao})";
  }
}
