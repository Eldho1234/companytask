import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task/modelclass/modelclass.dart';

class ApiService {
  static Future<List<ModelClass>> fetchProducts() async {
    var response = await http
        .get(Uri.parse("http://www.mocky.io/v2/5d565297300000680030a986"));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data
          .map((productJson) => ModelClass.fromJson(productJson))
          .toList();
    } else {
      throw Exception('Failed to fetch products');
    }
  }
}
