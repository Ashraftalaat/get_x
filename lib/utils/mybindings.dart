// import 'package:get/get.dart';
// import 'package:get_x/controller/homecontroller.dart';

// class Mybindings implements Bindings {
//   @override
//   void dependencies() {
//     Get.put(
//       HomeController(),
//       //ممكن منضعهاش وهيحفظ البيانات عشان استخدمنا binding
//       //علي مستوي التطبيق في main
//       //هامة جدا جدا
//       permanent: true,
//       //نفضل استعمال Get.put حتي لاتضيع البيانات لو استخدمنا Get.lazyput
//       //لاكن يجب استعمالها عشان لو عندنا العديد من الصفحات لايتم تحميل الbinding
//       //في كل الصفحات بدون داعي ويحدث تهنيج للجهاز
//       //ونستعملها بالاخص اذا كان عندنا دورة حياة لل controller
//       // Get.lazyPut(() => HomeController(), fenix: true);
//     );
//   }
// }
