//Essa classe tras as informações do modifier padrão,
//foi utilizado para padronizar objetos e valores

class ModifierInfo {
  //observação: Não utilizei o id, pois ele faz parte do produto interno do strapi
  final String title;
  final int minQuantity;
  final int? maxQuantity;
  final bool allowRepeated;

  ModifierInfo(
    this.title,
    this.minQuantity,
    this.maxQuantity,
    this.allowRepeated,
  );

  ModifierInfo.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        minQuantity = json['minQuantity'],
        maxQuantity = json['maxQuantity'],
        allowRepeated = json['allowRepeated'] ?? false;
}
