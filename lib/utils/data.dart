import 'package:shared_preferences/shared_preferences.dart';

class Moj {
  Future<void> saveMoj(bool check) async {
    SharedPreferences moj = await SharedPreferences.getInstance();
    moj.setBool("check", check);
  }

  Future<Map> readMoj() async {
    SharedPreferences moj = await SharedPreferences.getInstance();
    bool? check = moj.getBool("check");
    Map m1 = {"check": check};
    return m1;
  }
}