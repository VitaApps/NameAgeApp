import 'package:name_age_app/domain/entities/name_age.dart';

abstract class AgeRepository {
  Future<NameAge> getAge({required String name});
}
