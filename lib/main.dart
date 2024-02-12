import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/services/settingsservices.dart';
import 'package:get_x/view/home.dart';

//Get X   كورس
// MVC   Model -  View  -  Controller

//SharedPreferences
//هي ذاكرة مؤقتة لحفظ البيانات في ميموري  بمجردازالةالتطبيق تختفي البيانات
//shared_preferences: ^2.1.0
//لألغاء الخطاء نضع ؟ عشان يقبل null
//SharedPreferences? sharepref;
//هنضعها في main عشان نستدعي SharedPreferences في كل الصفحات
//بتحتاج async
void main() async {
  //تاكيد عملية الادخال
  WidgetsFlutterBinding.ensureInitialized();
  //SharedPreferences ادخاله
  // sharepref = await SharedPreferences.getInstance();

  await initalServices();
  runApp(const MyApp());
}

Future initalServices() async {
  await Get.putAsync(() => SettingsServices().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //لاتنسي و
    return GetMaterialApp(
      title: 'Get X Details',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //بضيف صفحة ويمكن الرجوع اليها
      //Get.to(PageOne());= Navigator.of(context).push(MaterialPageRoute(builder:(context)=>PageOne()));
      // ببضيف صفحة ولايمكن الرجوع اليها بتحذفها
      //Get.off(PageOne());= Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>PageOne()));
      //بتحذف كل الصفحات وبتفضل الصفحة اللي اخترناها
      //Get.offAll(page)=pushAndRemoveUntil
      // للرجوع للخلف ولاكن في حالة لايوجد صفحات لاتخرج من التطبيق
      //Get.back(PageOne());= Navigator.of(context).maybepop(MaterialPageRoute(builder:(context)=>PageOne()));

      //routes : {  كان يقبل ماب
      //"/home":(context) => Home();
      //}   =
      //GetPages:[  بتقبل لاست
      //   GetPage(name : "/pageone", page : () => PageOne())
      //   GetPage(name : "/pagetwo", page : () => PageTwo())
      //]
      //بعد كدة هنروح للصفحات"بس لازم نعمل روت في ال ماين
      //Get.toNamed ("/pageone") =  .pushNamed(routeName)
      //Get.offNamed("/pagetwo") =  .pushReplacementNamed
      // home: Home(),
      //binding: Mybindings ممكن ندخلها في التطبيق كله بهذه الطريقة
      // initialBinding: Mybindings(),
      //او بهذه الطريقة

      //لا داعي لاضافتها لانه"/" افتراضية"
      // initialRoute: "/",
      getPages: [
        //middlewares: [AuthMiddleware()] بنقوله تحققلي من الصلاحيات
        //اللي موجودة في ملف auth
        //ولو هذا الشخص مسجل "sharedpreferences" خده علي home مباشرة
        // GetPage(
        //    name: "/",
        //  page: () => const Login(),
        //عندما يوجد اكثر من middleware  لازم ناخذ الافضلية
        // middlewares: [
        //  AuthMiddleware(),
        //   SuperMiddleware(),
        //  ],
        //  ),
        //binding: Mybindings()الطريقة الثالثة باضافتها  لزرار فتح الصفحة

        GetPage(name: "/home", page: () => const Home()),
        //  GetPage(name: "/admin", page: () => const Admin()),
        // GetPage(name: "/super", page: () => const ()),
      ],
    );
  }
}
