// import 'package:get/get.dart';

// //هنا logic في  MVC

// //هنضع المتغيرات
// class HomeController extends GetxController {
//   //obs بتاخد RxInt وليس int
//   //obs معناها اي تغيير في الكونتير هيستمع لية مباشرة في GetX
//   // بدون update
//   // RxInt counter = 0.obs; دة التغيير في حالة GetX
//   int counter = 0;

//   void increment() {
//     counter++;
//     //update  مثل  SetState بتعمل  reBuild or refresh
//     //بنستخدمها في Getbuilder
//     update(); //بتحذف في GetX
//   }

//   void decrement() {
//     counter--;
//     //update  مثل  SetState بتعمل  reBuild or refresh
//     update();
//   }

//   // Controller’s lifecycle   دورة حيات  getx

//   @override
// // onInit = initState
//   void onInit() {
//     print("Init HomeController");
//     super.onInit();
//   }

//   @override
//   // onReady يتم استدعئها بعد ما يتعمل build
//   void onReady() {
//     print("Ready HomeController");
//     super.onReady();
//   }

//   @override
//   //onClose  عشان لما نخرج من الصفحة يتم استدعائها
//   void onClose() {
//     print("Close HomeController");
//     super.onClose();
//   }
// }
