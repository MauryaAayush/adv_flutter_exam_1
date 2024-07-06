
import 'package:flutter/foundation.dart';

class ProductProvider extends ChangeNotifier{

  Map data = {};
  bool isLoading = false;

  void fetchData(){
   isLoading = true;
   notifyListeners();





   isLoading = false;
   notifyListeners();
  }

  ProductProvider(){
    fetchData();
  }
}