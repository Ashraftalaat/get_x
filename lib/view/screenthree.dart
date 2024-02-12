// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../controller/rebuildcontroller.dart';

// class ScreenThree extends StatelessWidget {
//   const ScreenThree({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Screen Three'),
//       ),
//       body: ListView(
//         children: [
//           Center(
//             child: GetX<RebuildController>(
//               //يتم ادخالها مرة واحدة في حالة وجود اكثر من Getbuilder
//               //في حالة انه كل Getbuilder تابعين ل controller واحد
//               //ونستخدمها في اول Getbuilder
//               init: RebuildController(),
//               builder: (controller) {
//                 print("count 1  rebuild");
//                 return Text(
//                   '${controller.count1}',
//                   style: Theme.of(context).textTheme.headlineLarge,
//                 );
//               },
//             ),
//           ),
//           Center(
//             child: GetBuilder<RebuildController>(
//               builder: (controller) {
//                 print("count 2  rebuild");
//                 return Text(
//                   '${controller.count2}',
//                   style: Theme.of(context).textTheme.headlineLarge,
//                 );
//               },
//             ),
//           ),
//           Center(
//             child: GetBuilder<RebuildController>(
//               builder: (controller) {
//                 print("sum  rebuild");
//                 return Text(
//                   '${controller.sum}',
//                   style: Theme.of(context).textTheme.headlineLarge,
//                 );
//               },
//             ),
//           ),
//           //بتوضع خارج Getbuilder لانه لايحدث تغيير بها عشان يتعملوا rebuild
//           //Text('Add one ${controller.sum}'),مثال علي التغيير
//           //المقصود بالتغيير في شكل الشاشة نفسها اللي بتظهر لينا
//           //حتي لانبطئ الجهاز
//           MaterialButton(
//             onPressed: () {},
//             child: const Text('Add one'),
//           ),
//           MaterialButton(
//             onPressed: () {},
//             child: const Text('Add two'),
//           ),
//         ],
//       ),
//     );
//   }
// }
