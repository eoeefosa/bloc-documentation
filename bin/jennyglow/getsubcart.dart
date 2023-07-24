import 'package:http/http.dart' as http;

void main(List<String> args) async {
  var request = http.Request(
      'GET', Uri.parse('https://jenny-pnw8.onrender.com/admin/sub-category'));

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 201) {
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
}
