// ignore_for_file: avoid_print, unused_local_variable

void main() {
  final f1 = Future(info)
      .then((value) => print('value = $value'))
      .catchError((error) => print('error = $error'));
  final f2 = Future.value(2).then((value) => print(value));
  final f3 = Future.delayed(const Duration(seconds: 1), () => print(2));
  print(1);
}

double info() {
  return double.parse('6556asd');
}
