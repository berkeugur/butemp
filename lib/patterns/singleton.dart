import 'package:flutter/foundation.dart';

printf(Object? object) {
  if (kDebugMode) {
    print(object);
  }
}

class Counter {
  int value = 0;
  static final Counter _instance = Counter._internal();
  // using a factory is important
  // because it promises to return _an_ object of this type
  // but it doesn't promise to make a new one.
  factory Counter() {
    return _instance;
  }
  // This named constructor is the "real" constructor
  // It'll be called exactly once, by the static property assignment above
  // it's also private, so it can only be called in this class
  Counter._internal() {
    // initialization logic
    // only works once
    value = 10;
    printf(value);
  }
  // rest of class as normal, for example:
  void upvalue() {
    value++;
    printf(value);
  }

  void downvalue() {
    value--;
    printf(value);
  }
}
