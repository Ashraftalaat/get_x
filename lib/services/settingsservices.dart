//       GetX Services
//    "اكثر استعمال في بداية التطبيق"

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsServices extends GetxService {
  late SharedPreferences sharepref;

  Future<SettingsServices> init() async {
    //Start Services
    //اي شئ عايزينه يفتح اول ما التطبيق يشتغل هنضيفه هنا
    sharepref = await SharedPreferences.getInstance();
    //End
    return this;
  }
}
