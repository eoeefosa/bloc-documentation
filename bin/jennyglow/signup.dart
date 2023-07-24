import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  var headers = {
  'Content-Type': 'application/json'
};
var request = http.Request('POST', Uri.parse('https://jenny-pnw8.onrender.com/auth/signup/'));
request.body = json.encode({
  "email": "tuhbuhngunbbg@gmail.com",
  "password": "abcABC123.",
  "confirm_password": "abcABC123.",
  "phone": "+234-8188266175"
});
request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  print(await response.stream.bytesToString());
}
else {
  print(response.reasonPhrase);
}
}
