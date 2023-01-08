import 'package:http/http.dart' as http;
import 'package:learningdart/Api2/post.dart';
import 'package:learningdart/Api2/post1.dart';
import 'package:learningdart/Api2/post3.dart';

class RemoteService {
  Future<List<Post1>?> getPosts() async {
    var client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/users");
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return post1FromJson(json);
      //  throw Exception("null");

    }
  }
}
