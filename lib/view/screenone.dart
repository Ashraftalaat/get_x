// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:get_x/controller/homecontroller.dart';

// // //يجب ان لايوجد بها اي متغير او ميثود لانها مفصولة بشكل كامل في"MVC"
// // class ScreenOne extends StatelessWidget {
// //   const ScreenOne({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Screen one'),
// //       ),
// //       body: Container(
// //         padding: const EdgeInsets.symmetric(horizontal: 10),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             //GetBuilder ليست تفاعلية مثل GetX بتحدث التغيير مباشرة في controller
// //             //بدون update هو دائما reactive

// //             //GetBuilderهتسمع HomeController
// //             GetBuilder<HomeController>(
// //               //obx (() => Row(...نستخدم obx كذلك
// //               //ممكن تستبدل GetX مع وضع obs في controller

// //               //ادخال HomeController()
// //               init: HomeController(),
// //               // اول ماهيشوف update  ثم builder: (controller)هيعمل refresh لجزء Row فقط وليس build كله
// //               builder: (controller) {
// //                 print("rebuild");
// //                 return Row(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     Container(
// //                       padding:
// //                           const EdgeInsetsDirectional.symmetric(horizontal: 20),
// //                       child: IconButton(
// //                         onPressed: () {
// //                           controller.increment();
// //                         },
// //                         icon: const Icon(
// //                           Icons.add,
// //                           size: 40,
// //                         ),
// //                       ),
// //                     ),
// //                     Center(
// //                       child: Text(
// //                         "${controller.counter}",
// //                         style: const TextStyle(fontSize: 30),
// //                       ),
// //                     ),
// //                     Container(
// //                       padding:
// //                           const EdgeInsetsDirectional.symmetric(horizontal: 20),
// //                       child: IconButton(
// //                         onPressed: () {
// //                           controller.decrement();
// //                         },
// //                         icon: const Icon(
// //                           Icons.remove,
// //                           size: 40,
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 );
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// // //Getbuilder  update  rebuild  " دة اللي بنحتاجه اداء افضل"
// // //GetX   Stream  بنضع obs
// // //obx   Stream   بنضعها  في dependences وبنستخدم Get.put(HomeController())

// //Dependency Injectionهنستخدم هنا
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_x/controller/homecontroller.dart';

// //يجب ان لايوجد بها اي متغير او ميثود لانها مفصولة بشكل كامل في"MVC"
// class ScreenOne extends StatelessWidget {
//   ScreenOne({super.key});
// // هنا عملنا    Dependency Injection من خلال Get.put
// //init: HomeController(), ومش محتاجين لادخاله
// //permanent: true حتي لايعمل كلير عند الخروج من الصفحة والعودة ليها
//   //هنمسح هذاالكود لاننا عملنا  Get.lazyPut
//   // HomeController controller = Get.put(HomeController(), permanent: true);
// // هنضع بداله  Get.find  حتي نستدعي Get.lazyPut
//   HomeController controller = Get.find();
//   // Get.find بتبحث عن dependences الموجودة في binding

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Screen one'),
//       ),
//       body: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // //هنمسح GetBuilder وهنستخدمه للtext فقط الذي سوف يحدث به تغيير وليس لكامل column
//             // GetBuilder<HomeController>(
//             //   init: HomeController(),
//             //   builder: (controller) {
//             //     print("rebuild");
//             //     return
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   padding:
//                       const EdgeInsetsDirectional.symmetric(horizontal: 20),
//                   child: IconButton(
//                     onPressed: () {
//                       controller.increment();
//                     },
//                     icon: const Icon(
//                       Icons.add,
//                       size: 40,
//                     ),
//                   ),
//                 ),
//                 Center(
//                     //GetBuilder وضعناها هنا للذى سوف يحدث له تغيير
//                     child: GetBuilder<HomeController>(
//                   builder: (controller) => Text(
//                     "${controller.counter}",
//                     style: const TextStyle(fontSize: 30),
//                   ),
//                 )),
//                 Container(
//                   padding:
//                       const EdgeInsetsDirectional.symmetric(horizontal: 20),
//                   child: IconButton(
//                     onPressed: () {
//                       controller.decrement();
//                     },
//                     icon: const Icon(
//                       Icons.remove,
//                       size: 40,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// //Getbuilder  update  rebuild  " دة اللي بنحتاجه اداء افضل"
// //GetX   Stream  بنضع obs
// //obx   Stream   بنضعها  في dependences وبنستخدم Get.put(HomeController())
