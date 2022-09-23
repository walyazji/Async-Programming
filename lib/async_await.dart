// ignore_for_file: avoid_print

main(List<String> args) async {
  await Future.delayed(const Duration(seconds: 1), () => 2)
      .then((value) => print('value = $value'))
      .catchError((error) => print('error = $error'));
  print('value = 1 ');
  try {
    final int value = await Future.delayed(const Duration(seconds: 1), () => 2);
    print(value);
  } catch (e) {
    print('error = $e');
  }

  print('1');

  final s1 = Stream.periodic(const Duration(milliseconds: 500), (a) => a);
  // final sub = s1.listen((_) => _);

  // sub.onData((data) {
  //   data > 10 ? sub.cancel() : print(data);
  // });

  await for (var value in s1) {
    if (value > 10) break;
    print(value);
  }
}
