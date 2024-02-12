// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../controller/homecontroller.dart';

// class ScreenTwo extends StatelessWidget {
//   ScreenTwo({super.key});
// //Get.find بتستدعي Get.lazyPut
//   HomeController controller = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Screen Two'),
//       ),
//       body: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//                 //GetBuilder وضعناها هنا للذى سوف يحدث له تغيير
//                 child: GetBuilder<HomeController>(
//               //حتي لايحدث خطاء عند الدخول مباشر للصفحة 2 فبل مانفتح الصفحة 1
//               //لاكن بسبب ادخاله فى وقت الحاجة في صفحة الهوم Get.lazyPut
//               // اصبحنا لا نحتاجه هنا
//               // init: HomeController(),
//               builder: (controller) => Text(
//                 //القيمة هتظل موجودة حتي لو خرجنا ودخلنا تاني وذلك بفضل
//                 //permanent: true الموجودة في المتغيرcontroller
//                 "${controller.counter}",
//                 style: const TextStyle(fontSize: 50),
//               ),
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }
