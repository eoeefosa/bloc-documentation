int main() {
  List number = [1, 2, 3, 4];
  int i = 0;
  while (true) {
    print('${number[i]}');
    // print('lenght ${number.length}');
    if (i == number.length - 1) {
      i = 0;
    } else {
      i++;
    }
  }
}
