import 'package:app1/models/catalog.dart';

import 'package:app1/widget/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:app1/models/item_widget.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
 final dummyList= List.generate(20, (index) => CatalogModel.items[0]);
      return Scaffold(
        // use Scaffold also in order to provide material app widgets
        appBar: AppBar(
          title: Text(
              "Catalog",
               style: TextStyle(
              fontSize: 20,
                 fontWeight: FontWeight.bold,
          ),
          ),
          centerTitle: true,
          toolbarOpacity: 1,
          toolbarHeight: 50,
          // shape: Shape
          backgroundColor: Colors.deepPurpleAccent,
        ),
         drawer: MyDrawer(),
        body:  ListView.builder(
            itemCount: dummyList.length,
              itemBuilder: (context,index){
              return ItemWidget(item: dummyList[index],);
              }//ItemWidget

        ),
      );
  }
}
