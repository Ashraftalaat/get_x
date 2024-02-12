import 'package:flutter/material.dart';
import 'package:get/get.dart';

//كلاسات جاهزة بال Get مثل كلاسcontroller
class SuperMiddleware extends GetMiddleware {
  @override
// كلما زادت قيمة priority كلما قلت الاهمية
  int? get priority => 1;

  bool myvar = true;

  // لما يكون عندي كلاس بيرث من كلاس وعايز اعدل عليها
  //بنحط
  @override
  //? بتقبل null
  RouteSettings? redirect(String? route) {
    if (myvar == true) {
      return const RouteSettings(name: "super");
    }
  }
}
