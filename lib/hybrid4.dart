import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

getUsers() async {
  try {
    var url =
        Uri.parse('https://random-data-api.com/api/users/random_user?size=10');
    final resp = await http.get(url);
    var users = convert.jsonDecode(resp.body) as List<dynamic>;
    return users;
  } catch (err) {
    print(err);
  }
}
