import "package:http/http.dart" as http;

void main(List<String> args) async {
  var url = Uri.https('jenny-pnw8.onrender.com', 'auth/signup');
  var response = await http.post(url, body: {
    "email": "cybersgenii@gmail.com",
    "password": "abcABC123.",
    "confirm_password": "abcABC123.",
    "phone": "+234-8188266175"
  }, headers: {
    'Content-Type': 'application/json'
  });
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  // print(await http.read(Uri.https()))
}
