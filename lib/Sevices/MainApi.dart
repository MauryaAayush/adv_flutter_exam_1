
import 'dart:nativewrappers/_internal/vm/lib/convert_patch.dart';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ProductApi{

  static late ProductApi productApi = ProductApi();

  Future<String?> apiCalling()
  async {
    String link = 'https://dummyjson.com/products';
    Uri uri = Uri.http(link);
    Response response = await http.get(uri);

    print('--------------------------process done-----------------------');

    if(response.statusCode == 200){
      print(response.body);
      // String result = JsonDecoder(response.body);

      return response.body;
    }
    else{
      return null;
    }

  }
}