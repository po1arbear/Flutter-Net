import 'film_entity.dart';
class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "FilmEntity") {
      return FilmEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}