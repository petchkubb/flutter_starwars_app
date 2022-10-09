import 'package:flutter_starwars_app/src/modules/home/data/models/people.dart';
import 'package:http/http.dart' as http;

class StarWarsRepository {
  final String _baseUrl = "https://swapi.dev/api";

  Future<People> getPeople() async {
    final response = await http.get(Uri.parse(_baseUrl + '/people/1'));
    if (response.statusCode == 200) {
      return peopleModelFromJson(response.body);
    } else {
      throw Exception("Failed to load people");
    }
  }
}
