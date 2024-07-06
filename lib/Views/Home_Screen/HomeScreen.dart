import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Controler/product_provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Product'),
      ),

      body: Consumer<ProductProvider>(
        builder: (context, value, child) {
          if (value.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: value.productModel!.product!.length,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: Text('${index + 1}'),
                    title: Center(
                      child: Text(value.productModel!.product![index].title!),
                    )
                );
              },);
          }
        },
      )


    );
  }
}
