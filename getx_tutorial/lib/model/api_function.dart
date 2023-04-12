import 'dart:convert';
import 'dart:math';
import 'package:get/get.dart';
import 'package:getx_tutorial/model/product_json_model.dart';
import 'package:getx_tutorial/screens/homescreen.dart';
import 'package:http/http.dart' as http;

class ApiFunction {
  static Future<List<ProductJson>> fetchProduct() async {
    final response = await http.get(
        Uri.parse("https://makeup-api.herokuapp.com/api/v1/products.json"));

    if (response.statusCode == 200) {
      var data = response.body;

      return productJsonFromJson(data);
    } else {
      return [];
    }
  }
}
