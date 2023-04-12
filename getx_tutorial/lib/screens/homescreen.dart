import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/common/all_string.dart';
import 'package:getx_tutorial/common/app_Colors.dart';
import 'package:getx_tutorial/controller/homepage_controller.dart';
import 'package:getx_tutorial/model/product_json_model.dart';

class Homescreen extends GetView<HomepageController> {
//  final HomepageController homepageController = Get.put(HomepageController());
  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.productlist),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
              itemCount: controller.productList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          margin: const EdgeInsets.all(12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              controller.productList[index].imageLink,
                              width: 150,
                              height: 100,
                              fit: BoxFit.fill,
                              color: AppColors.purpleColor,
                              colorBlendMode: BlendMode.color,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                              controller.productList[index].name.toString()),
                        )
                      ],
                    )
                  ],
                );
              });
        }
      }),
    );
  }
}
