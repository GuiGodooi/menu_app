import 'package:flutter_menu/features/product/models/modifier_info.dart';

class Modifier {
  final int id;
  final ModifierInfo info;

  Modifier({
    required this.id,
    required this.info,
  });

  Modifier.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        info = ModifierInfo.fromJson(json['info']);
}
