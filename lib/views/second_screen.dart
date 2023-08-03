import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:task/controller/emp_provider.dart';

class SecondScreen extends StatelessWidget {
  final String id;

  SecondScreen({required this.id});
  @override
  Widget build(BuildContext context) {
    return Consumer<Empprovider>(builder: (context, productProvider, child) {
      final products = productProvider.products;
      final selectedProduct =
          products.firstWhere((product) => product.id.toString() == id);
      final Size = MediaQuery.of(context).size;
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage:
                    NetworkImage(selectedProduct.profileImage.toString()),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "NAME :\n",
                            style:
                                TextStyle(color: Colors.black, fontSize: 25)),
                        TextSpan(
                            text: selectedProduct.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "UAERNAME :\n",
                            style:
                                TextStyle(color: Colors.black, fontSize: 25)),
                        TextSpan(
                            text: selectedProduct.username,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "EMAIL :\n",
                            style:
                                TextStyle(color: Colors.black, fontSize: 25)),
                        TextSpan(
                            text: selectedProduct.email,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "ADDRESS :\n",
                            style:
                                TextStyle(color: Colors.black, fontSize: 25)),
                        TextSpan(
                            text: "${selectedProduct.address.city}\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "${selectedProduct.address.street}\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "${selectedProduct.address.suite}\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "${selectedProduct.address.zipcode}\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Geo :\n",
                            style:
                                TextStyle(color: Colors.black, fontSize: 25)),
                        TextSpan(
                            text: "${selectedProduct.address.geo.lat}\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: selectedProduct.address.geo.lng,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "PHONE :\n",
                            style:
                                TextStyle(color: Colors.black, fontSize: 25)),
                        TextSpan(
                            text: selectedProduct.phone,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "WEBSITE :\n",
                            style:
                                TextStyle(color: Colors.black, fontSize: 25)),
                        TextSpan(
                            text: selectedProduct.website,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "COMPANY :\n",
                            style:
                                TextStyle(color: Colors.black, fontSize: 25)),
                        TextSpan(
                            text: "NAME: ",
                            style:
                                TextStyle(color: Colors.black, fontSize: 25)),
                        TextSpan(
                            text: "${selectedProduct.company!.name}\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "PHRASE: ",
                            style:
                                TextStyle(color: Colors.black, fontSize: 25)),
                        TextSpan(
                            text: "${selectedProduct.company!.catchPhrase}\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "${selectedProduct.company!.bs}\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
