// import 'package:flutter/src/widgets/navigator.dart';
// import 'package:get/get.dart';
// import 'package:get_x/main.dart';

// //كلاسات جاهزة بال Get مثل كلاسcontroller
// class AuthMiddleware extends GetMiddleware {
//   @override
// // كلما زادت قيمة priority كلما قلت الاهمية
//   int? get priority => 2;

//   // لما يكون عندي كلاس بيرث من كلاس وعايز اعدل عليها
//   //بنحط
//   @override
//   //? بتقبل null
//   RouteSettings? redirect(String? route) {
//     if (sharepref!.getString("role") == "user") {
//       return const RouteSettings(name: "/home");
//     }

//     if (sharepref!.getString("role") == "admin") {
//       return const RouteSettings(name: "/admin");
//     }
//     return null;
//   }
// }
