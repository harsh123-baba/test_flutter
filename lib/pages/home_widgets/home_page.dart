import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'dart:convert';

import "package:test_flutter/models/catalog.dart";
import "package:test_flutter/pages/home_widgets/catalog_header.dart";
import "package:test_flutter/pages/home_widgets/catalog_list.dart";
import "package:test_flutter/widgets/drawer.dart";
import "package:test_flutter/widgets/item_widget.dart";
import "package:test_flutter/widgets/themes.dart";
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJSON = await rootBundle.loadString("assets/files/products.json");
    // actually jsondecode converts string into map(here it is map) this returns dynamic data type here we are returning map;
// jsonEncode converts any format into string;
    var decodedData = jsonDecode(catalogJSON);
    var productsData = decodedData["products"];
    // print(productsData);
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});

    // print(decodedData);
    // print(CatalogModel.items.toString());
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(10, (index) => CatalogModel.items[0]);

    return Scaffold(
      // backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            )),
      ),
    );
    // return Material(child: Center(child: Container(child: Text("Welcome to $days of flutter by $name"),)),)
  }
}
