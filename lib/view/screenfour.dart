// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_x/controller/rebuildcontroller.dart';

// class ScreenFour extends StatelessWidget {
//   const ScreenFour({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Screen Four'),
//       ),
//       body: ListView(
//         children: [
//           Center(
//             child: GetBuilder<RebuildController>(
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
