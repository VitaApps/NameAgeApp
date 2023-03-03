import 'dart:convert';

import 'package:name_age_app/domain/entities/name_age.dart';
import 'package:http/http.dart' as http;

import 'age_repository.dart';

class AgeRepositoryImpl implements AgeRepository {
  const AgeRepositoryImpl();

  @override
  Future<NameAge> getAge({required String name}) async {
    final uri = Uri.parse('https://api.agify.io?name=$name');
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final body = json.decode(response.body);

      return NameAge.fromJson(body);
    } else {
      throw Exception('Failed to load age');
    }
  }
}
