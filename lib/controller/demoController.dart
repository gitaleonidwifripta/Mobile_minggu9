import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:minggu9/model/product.dart';
import 'package:minggu9/model/product.dart';
import 'package:get/get.dart';

class DemoController extends GetxController{
  var cartItems = <product>[].obs;
  int get cartCount => cartItems.length;
  double get totalAmount => cartItems.fold(0.0, (sum, element) => sum + element.price);
  addToCart(product product) {
    cartItems.add(product);
  }
  final Storage = GetStorage();
  bool get isDark => Storage.read('darkmode') ?? false;
  ThemeData get Theme => isDark ? ThemeData.dark() : ThemeData.light();
  void changeTheme(bool val) => Storage.write('darkmode', val);
}