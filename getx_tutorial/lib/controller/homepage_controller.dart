import 'dart:math';

import 'package:get/get.dart';
import 'package:getx_tutorial/model/api_function.dart';
import 'package:getx_tutorial/model/product_json_model.dart';

class HomepageController extends GetxController {
  RxBool isLoading = true.obs;
  var productList = <ProductJson>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading.value = true;
      var products = await ApiFunction.fetchProduct();
      if (products.isNotEmpty) {
        //  print(products.toString());
        productList.addAll(products);
      }
    } finally {
      isLoading.value = false;
    }
  }
}
