import 'dart:convert';

import 'package:http/http.dart' as http;

void main(List<String> args) async {
  var headers = {'Content-Type': 'application/json'};
  var request = http.Request(
      'POST', Uri.parse('https://jenny-pnw8.onrender.com/auth/login'));
  request.body =
      json.encode({"email": "i@gmail.com", "password": "abcABC123."});
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  } else {
    print(await response.stream.bytesToString());
  }
}
