import 'package:app1/models/catalog.dart';
import 'package:flutter/material.dart';



class ItemWidget extends StatelessWidget {
  // const ItemWidget({super.key});
  final Item item;

  const ItemWidget({super.key, required this.item})
      : assert(item!= null);
  // super (key,key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0.3,horizontal: 10),
      child: Card(
        // elevation: 0,
        child: ListTile(
          onTap: (){
            print("${item.name} is pressed");
          },
          leading: Image.network(item.image),
          title:
              Text(item.name,),
          // style: ListTileStyle.list,
          subtitle: Text(item.desc),
          tileColor: Colors.white60,
            trailing: Text("\$${item.pricel})",
            textScaleFactor: 1.5,
            ),

        ),
      ),
    );
  }
}
// TODO Implement this library.