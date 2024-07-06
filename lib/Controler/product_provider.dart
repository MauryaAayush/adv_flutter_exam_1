
import 'package:adv_flutter_exam_1/Sevices/MainApi.dart';
import 'package:flutter/foundation.dart';

import '../Model/Main_Model.dart';

class ProductProvider extends ChangeNotifier{

  Map finaldata = {};
  bool isLoading = false;
  List<ProductModel> dataValue =[];

  Future<void> getValue() async {
    isLoading = true;
    notifyListeners();

    print('Provider called');
    finaldata = await ProductApi.productApi.apiCalling();

    print(finaldata);

    // dataValue = finaldata.map((e) => ProductModel.fromJson(e)).toMap();
    // dataValue = finaldata.map((e) => <ProductModel>.fromJson(e)).toList();
    notifyListeners();

    isLoading = false;
    notifyListeners();
  }

  ProductProvider(){
    getValue();
  }
}