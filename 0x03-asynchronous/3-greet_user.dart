// greetUser calls fetchUserData and returns string based on return
// loginUser calls checkCredentials and returns result of greetUser
import "dart:convert";
import "3-util.dart";

Future<String> greetUser() {
  try {
    return fetchUserData().then((user) {
      var userName = json.decode(user)["username"];
      return "Hello $userName";
    });
  } catch (e) {
    return Future.error("error caught: $e");
  }
}

Future<String> loginUser() async {
  if (await checkCredentials()) {
    return greetUser();
  } else {
    return Future.error("Wrong credentials");
  }
}