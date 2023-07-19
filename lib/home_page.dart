import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:immobilier_app/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  List images=[
    "assets/spacejoy1.jpg",
    "assets/spacejoy3.jpg",
    "assets/spacejoy4.jpg",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:   Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(right: 20,left:20,top:40,bottom:0),
        child: Column(children: [
          Row(children: [
            Container(
              width:60,
              height:60,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(100),
                image: DecorationImage(image: AssetImage("assets/woman.jpg"), fit: BoxFit.cover)
              )
              ),
              SizedBox(width:20),
              Column(children: [
                Text("Welcome Back!", style:TextStyle(color: Colors.grey,fontSize:18)),
                Text("Gail Pinkham", style:TextStyle(color: Colors.black,fontSize:20)),
              ],),
              Expanded(child: Container()),

              Container(
              width:15,
              height:15,
                decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(100),
                  boxShadow:[ 
                    BoxShadow(color: Colors.black54.withOpacity(0.8),
                            blurRadius:10,
                            offset:Offset(4,8),
                            ),
                  ]
                ),
                child: Icon(Icons.notification_important_rounded,size:20) ,),
          ],),
          SizedBox(height: 20,),
          Row(children: [
            
             Text("Best Offers", style:TextStyle(color: Colors.black,fontSize:30)),
              Expanded(child: Container()),
              Text("View all", style:TextStyle(color: Colors.grey,fontSize:20)),
          ],),
           SizedBox(height: 20,),

           Container(
            width: double.maxFinite,
            height: 290,
            margin:const EdgeInsets.only(bottom:0),
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context,int index){
                return Container(
                  width: 150,
                  height: 250,
                  margin: EdgeInsets.only(right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                      width: 150,
                      height: 200,
                      margin: const EdgeInsets.only(bottom:5),
                       decoration:BoxDecoration(
                         boxShadow:[ 
                    BoxShadow(color: Colors.black54.withOpacity(0.8),
                            blurRadius:10,
                            offset:Offset(4,8),
                            ),],
                       borderRadius:BorderRadius.circular(10),
                       image: DecorationImage(image: AssetImage(images[index]), fit: BoxFit.cover)
              )
              ),
              
               Text("Luxury House", style:TextStyle(color: Colors.black,fontSize:15)),

               Row(children: [
                  Text("California", style:TextStyle(color: Colors.black,fontSize:13)),
                  Text("USA", style:TextStyle(color: Colors.grey,fontSize:13)),
               ],),
                 Row(children: [
                 
                  Text("900", style:TextStyle(color: Colors.black,fontSize:13)),
                  Text("/months", style:TextStyle(color: Colors.grey,fontSize:10)),
               ],),
                   
                  ]),
                );
              }
              
              ),),
           

               Row(
                crossAxisAlignment:CrossAxisAlignment.center,
                children: [
            
             Text("Recommended", style:TextStyle(color: Colors.black,fontSize:30)),
              Expanded(child: Container()),
              Text("View all", style:TextStyle(color: Colors.grey,fontSize:20)),
          ],),
           SizedBox(height: 10,),
           Container(
            width: double.maxFinite,
            height: 215,
            padding:const EdgeInsets.only(top:10,bottom:10),
            child: ListView.builder(
               itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context,int index){
                return Container(
                  width: 250,
                  height: 90,
                  padding:const EdgeInsets.only(bottom:0),
                  margin: const EdgeInsets.only(bottom:50,right: 10),

                  decoration:BoxDecoration(
                    color:Colors.white,
                     borderRadius:BorderRadius.circular(10),
                  
                     boxShadow:[ 
                    BoxShadow(color: Colors.black54.withOpacity(0.8),
                            blurRadius:10,
                            offset:Offset(4,8),
                            ),
                           ],
                  ),
                 
                   child: Column(children: [
                    Container(
                       width: 250,
                       height: 110,
                       child: Row(children: [
                        Container(
                          width: 80,
                          height: 80,
                          margin:const EdgeInsets.only(left:15,bottom:5),
                          decoration:BoxDecoration(
                        
                       borderRadius:BorderRadius.circular(10),
                       image: DecorationImage(image: AssetImage(images[index]), fit: BoxFit.cover)
              )

                        ),
                        SizedBox(width:15),
                        Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          crossAxisAlignment:CrossAxisAlignment.start,
                     children: [
                      Text("Dream Home Stay", style:TextStyle(color: Colors.black,fontSize:15)),
                      Text("California", style:TextStyle(color: Colors.grey,fontSize:15)),
                      Row(
                        children: [
                          Text("530", style:TextStyle(color: Colors.black,fontSize:15)),
                          Text("/months", style:TextStyle(color: Colors.black,fontSize:13)),
                        ],
                      ),
                     ],

                        ),
                       ]),
                    ),
                     InkWell(
                      onTap: (){
                        Get.to(DetailPage(),arguments: [images[index], "Dream Home Stay", "California"]);
                      },
                       child: Container(
                        width: 170,
                        height: 25,
                                        decoration:BoxDecoration(
                                         borderRadius:BorderRadius.circular(5),
                          color:Colors.grey.withOpacity(0.6),
                                        ),
                        child: Center(child:Text("view Detail",style:TextStyle(color:Colors.grey,fontSize:20))),
                       ),
                     ),
                   ]),
                   );

              }),
           ),

        ]),
      ),
    );
  }
}