import 'dart:convert';

import 'package:cursos/models/tag.model.dart';
import 'package:http/http.dart';

class TagRepository {
  Future<List<Tag>> get() {
    var client = new Client();

    Future<List<Tag>> get() async {
      var response = await client.get('https://api.balta.io/v1/tags');

      if (response.statusCode == 200) {
        var list = json.decode(response.body) as List<dynamic>;
        var tags = new List<Tag>();
        //list.map((i) => courses.add(Course.fromJson(i)));

        for (dynamic item in list) {
          var tag = new Tag();
          tag.title = item["title"];
          tag.tag = item["tag"];
          tags.add(tag);
        }

        return tags;
      } else {
        throw Exception('Deu Ruim');
      }
    }
  }
}
