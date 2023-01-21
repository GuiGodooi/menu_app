class Category {
  Category({required this.id, required this.title});

  final int id;
  final String title;

  //mapeando a Category nullable e adicionando try catch
  static Category? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    try {
      //map
      return Category(
        id: json['id'],
        title: json['attributes']['title'],
      );
    } catch (_) {
      return null;
    }
  }
}
