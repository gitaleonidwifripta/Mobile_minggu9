import 'dart:ffi';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:minggu9/model/product.dart';

class Purchase extends GetxController{
  var products = <product>[].obs;
  @override
  void onInit() {
    fetchproduct();
    super.onInit();
  }
  void fetchproduct() async{
    await Future.delayed(Duration(seconds: 1));

    var serverResponse = [
      product(1, "Demo Product", "aby",
          "this is a product that we are going to show by getx", 300.0),
      product(1, "Demo Product", "aby",
          "this is a product that we are going to show by getx", 300.0),
      product(1, "Demo Product", "aby",
          "this is a product that we are going to show by getx", 300.0),
      product(1, "Demo Product", "aby",
          "this is a product that we are going to show by getx", 300.0),
      product(1, "Demo Product", "aby",
          "this is a product that we are going to show by getx", 300.0),
      product(1, "Demo Product", "aby",
          "this is a product that we are going to show by getx", 300.0),   
    ];
    products.value = serverResponse;
  }
}