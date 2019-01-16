import 'package:flutter_mvp/a_b_c_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "ABCEntity") {
      return ABCEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}