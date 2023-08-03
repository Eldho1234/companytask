import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/modelclass/modelclass.dart';

import '../api services/apisevice.dart';

class Empprovider extends ChangeNotifier {
  List<ModelClass> _products = [];

  List<ModelClass> get products => _products;

  Future<void> fetchProducts() async {
    _products = await ApiService.fetchProducts();
    notifyListeners();
  }

  Future<void> fetchDetails(String id) async {
    _products = await ApiService.fetchProducts();
    notifyListeners();
  }
}
