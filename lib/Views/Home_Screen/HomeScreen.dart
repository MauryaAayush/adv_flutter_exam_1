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
              child: Text('No Any News Here'),
            );
          } else {
            return ListView.builder(
              itemCount: value.dataValue.length,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: Text('${index + 1}'),
                    title: Center(
                      child: Text(value.dataValue[index].product!.title!),
                    )
                );
              },);
          }
        },
      )


    );
  }
}
