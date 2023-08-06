import 'package:app1/utility/routes.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    const imageUrl="https://drive.google.com/uc?export=view&id=1qd5FmCjO3ACeLQuM-ck83yGjA1vvGPLk";
    return  Drawer(
     width: 220,
     child: Container(
       // height: ,
       color: Colors.deepPurple,
       child: ListView(
         // padding: EdgeInsets.zero,

         children: [


           const DrawerHeader(
               padding: EdgeInsets.zero,
             decoration: BoxDecoration(
               color: Colors.deepPurple,
               // image: DecorationImage(image: NetworkImage(imageUrl))
             ),
               child: UserAccountsDrawerHeader(
                 margin: EdgeInsets.zero,
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
             accountName: Text("nirmal@1619",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
               ),
             ),
             accountEmail: Text("nirmal.20me457@rtu.ac.in",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 15,
               ),),


           ),),
           ListTile(
             title: Text(("HOME"),
               textScaleFactor: 1.2,
               style: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 // fontSize: 30,

               ),

             ),
             leading: Icon(Icons.home_outlined,color: Colors.white,size: 30,),
             onTap: (){
               print("HOME CLICKED");
             },

           ),
           ListTile(
             title: Text("PROFILE",
               textScaleFactor: 1.2,
               style: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 // fontSize: 30,

               ),

             ),
             leading: Icon(Icons.account_circle_outlined,color: Colors.white,size: 30,),
             onTap: (){
               print("PROFILE");
             },

           ),
           ListTile(
             title: Text("BACK",
               textScaleFactor: 1.2,
               style: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 // fontSize: 30,

               ),

             ),
             leading: Icon(Icons.arrow_back,color: Colors.white,size: 30,),
             onTap: (){
               Navigator.pushNamed(context, MyRoutes.loginRoute) ;
             },

           ),
         ],

       ),


     ),
    );
  }
}
