import 'dart:convert';
import 'dart:io';
import 'dart:js_util';

// void main() {
//   File myFile = File('myFilejson.txt');
//   // myFile.openWrite().write('wing ');
//   myFile.openRead().listen(print);

//   // myFile.rename('myFile.txt').then((_) => print('file renamed'));
// }

void main() async {
  final file = File('file.txt');
  file.writeAsString('some content');
  var sink = file.openWrite();
  sink.write('FILE ACCESSED ${DateTime.now()}\n');
  var me = UriData.fromString('ima a gbo');
  sink.add(me.contentAsBytes());
  // Close the IOSink to free system resources.
  sink.close();

  // var wrte = file.openRead();
  // wrte.close();

  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  try {
    await for (var line in lines) {
      print('$line: ${line.length} characters');
    }
    print('File is now closed.');
  } catch (e) {
    print('Error: $e');
  }
}
