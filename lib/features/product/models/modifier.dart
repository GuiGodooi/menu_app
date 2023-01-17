class Modifier {
  final String title;
  final int minQuantity;
  final int? maxQuantity;
  final bool allowRepeated;

  Modifier(
    this.title,
    this.minQuantity,
    this.maxQuantity,
    this.allowRepeated,
  );
}
