import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/controller/emp_provider.dart';
import 'package:task/views/second_screen.dart';
import 'package:task/widgets/list_tile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    final productProvider = Provider.of<Empprovider>(context, listen: false);
    productProvider.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    final empProviderr = Provider.of<Empprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee List"),
        backgroundColor: Color.fromARGB(255, 9, 167, 178),
      ),
      body: SingleChildScrollView(
          child: empProviderr.products.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                  color: Colors.blue,
                ))
              : ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: empProviderr.products.length,
                  itemBuilder: (context, index) {
                    final products = empProviderr.products;
                    final product = products[index];
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    SecondScreen(id: product.id.toString()),
                              ));
                        },
                        child: EmpTile(empProviderr.products[index]));
                  })),
    );
  }
}
