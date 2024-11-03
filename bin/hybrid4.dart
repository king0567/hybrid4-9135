import 'package:hybrid4/hybrid4.dart' as hybrid4;

void main() async {
  var users = await hybrid4.getUsers();
  for (var user in users) {
    print(
        "uid: ${user["uid"]}, name: ${user["first_name"]} ${user["last_name"]}");
  }
}
