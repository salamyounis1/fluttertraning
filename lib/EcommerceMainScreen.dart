import 'package:flutter/material.dart';
import 'package:futter2/product_widget.dart';

import 'Product.dart';
import 'data.dart';

class EcommerceMainScreen extends StatelessWidget {
  List<Product> convertMapsToProducts() {
    return data.map((e) => Product.fromMap(e)).toList();
  }

  late List<Product> products;
  EcommerceMainScreen() {
    products = convertMapsToProducts();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('ECOMMERCE'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                    width: 250,
                    height: 250,
                    //  color: Colors.pink,
                    child: Column(
                      children: [
                        Text('         Cat 1        '),
                        Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs9fSoqm0D_uSd1MdxKNC-qiEGu8vl0ixQMA&usqp=CAU'),
                      ],
                    )),
                SizedBox(width: 25),
                Container(
                    width: 250,
                    height: 250,
                    // color: Colors.pink,
                    child: Column(
                      children: [
                        Text('         Cat 2        '),
                        Image.network(
                            'https://kitcat.com.sg/wp-content/uploads/2020/07/Kit-Cat.png'),
                      ],
                    )),
                SizedBox(width: 25),
                Container(
                    width: 250,
                    height: 250,
                    //  color: Colors.pink,
                    child: Column(
                      children: [
                        Text('         Cat 3        '),
                        Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs9fSoqm0D_uSd1MdxKNC-qiEGu8vl0ixQMA&usqp=CAU'),
                      ],
                    )),
                SizedBox(width: 25),
                Container(
                    width: 250,
                    height: 250,
                    // color: Colors.pink,
                    child: Column(
                      children: [
                        Text('         Cat 2        '),
                        Image.network(
                            'https://kitcat.com.sg/wp-content/uploads/2020/07/Kit-Cat.png'),
                      ],
                    )),
                SizedBox(width: 25),
                Container(
                    width: 250,
                    height: 250,
                    // color: Colors.pink,
                    child: Column(
                      children: [
                        Text('         Cat 2        '),
                        Image.network(
                            'https://kitcat.com.sg/wp-content/uploads/2020/07/Kit-Cat.png'),
                      ],
                    )),
                SizedBox(width: 25),
              ]),
            ),
            SizedBox(width: 100),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 800,
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20),
                  itemCount: products.length,
                  itemBuilder: (c, index) {
                    return ProductWidget(products[index]);
                  }),
            ),
          ],
        ),
      ),
    );
    Widget card() => Container(
          width: 250,
          height: 250,
          color: Colors.pink,
          child: Text('zdddddddddddddddddd'),
          // Image.network(
          //     'https://kitcat.com.sg/wp-content/uploads/2020/07/Kit-Cat.png'),
        );
  }
}
