void main() {
  final me = Uri.decodeFull('%20dart%20is%70ahg');
  final you = Uri.encodeFull("how are you efouss   take this");
  final uri = Uri.parse('how are you efouss   take this=?id=5');
  final they = uri.queryParameters;
  final intvalue = int.parse(they['id']!);
  final prame = they['id'];
  print(prame);
}
