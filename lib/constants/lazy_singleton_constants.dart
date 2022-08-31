class YourConstantsClass {
  static YourConstantsClass? _instace;
  static YourConstantsClass get instance {
    if (_instace == null) _instace = YourConstantsClass._init();
    return _instace!;
  }

  YourConstantsClass._init();

  String phoneNumber = "537 *** ** **";
  String mailAdress = "*****@****.***";

  sadasd() {
    print(YourConstantsClass._instace?.mailAdress ?? "_instace null");
  }
}
