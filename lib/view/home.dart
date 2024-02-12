import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get_x/view/screenfour.dart';
// import 'package:get_x/view/screenone.dart';
// import 'package:get_x/view/screenthree.dart';
// import 'package:get_x/view/screentwo.dart';

// class Home extends StatelessWidget {
//   Home({super.key});

//init: HomeController(),بتعمل ادخال في وقت الحاجة اليه فقط علي مستوي الصفحات كلها
//Get.lazyPut الكسولة في وقت الحاجة فقط
// final controller = Get.lazyPut(
//   () => HomeController(),
//   //وضعناها لان Get.lazyPut بتعمل ادخال لمرة واحدة فقط
//   //fenix: trueللادخال اكثر من مرة
//   fenix: true,
// );

//الفرق بين  Get.lazyPut  وبين Get.put
// Get.lazyPut  معندهاش permanent: true
//Get.put عندها  permanent: true وبتحفظ التغيير

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: MaterialButton(
//                 onPressed: () {
//                   //Get.to(const ScreenOne());
//                   //هذه الشكل افضل من السابق عشان يعمل كلين للموميري
//                   //binding: Mybindings()لاستخدام dependencies()وحفظ التغييرات وعدم مسحها
//                   //binding: Mybindings() وممكن نستخدمها في التطبيق كله عن طريق كتابتها في main
//                   Get.to(() => ScreenOne());
//                 },
//                 color: Colors.red,
//                 textColor: Colors.white,
//                 child: const Text('Screen One'),
//               ),
//             ),
//             Center(
//               child: MaterialButton(
//                 onPressed: () {
//                   Get.to(ScreenTwo());
//                 },
//                 color: Colors.red,
//                 textColor: Colors.white,
//                 child: const Text('Screen Two'),
//               ),
//             ),
//             Center(
//               child: MaterialButton(
//                 onPressed: () {
//                   Get.to(const ScreenThree());
//                 },
//                 color: Colors.red,
//                 textColor: Colors.white,
//                 child: const Text('Screen Three'),
//               ),
//             ),
//             Center(
//               child: MaterialButton(
//                 onPressed: () {
//                   Get.to(const ScreenFour());
//                 },
//                 color: Colors.red,
//                 textColor: Colors.white,
//                 child: const Text('Screen Four'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// middleware Get X

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  // sharepref?.clear();
                  Get.offNamed("/");
                },
                child: const Text("Sign out"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
