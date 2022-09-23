// ignore_for_file: avoid_print, unused_local_variable

void main(List<String> args) {
  final s1 = Stream.periodic(const Duration(milliseconds: 500), (a) => a * 2);
  final sub = s1.listen((_) => _); // onError: (err) => print(err),
  // onDone: () => print('Done!'),
  // cancelOnError: true,

  sub.onDone(() {
    print('Done');
  });

  sub.onData((data) {
    data > 10 ? sub.cancel() : print(data);
  });
}
