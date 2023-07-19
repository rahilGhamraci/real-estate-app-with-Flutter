import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DetailPage extends StatefulWidget {
 

  const DetailPage({super.key,
   });

  @override
  State<DetailPage> createState() => _DetailPageState();
  
}

class _DetailPageState extends State<DetailPage> {
  var arg=Get.arguments;
   List images=[
    "assets/spacejoy3.jpg",
    "assets/spacejoy4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width:double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(top:40,right:20,left:20),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            InkWell(
              onTap: (){
                Get.back();
              },
              child: Container(
                width: 30,
                height: 30,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                   boxShadow:[ 
                      BoxShadow(color: Colors.black54.withOpacity(0.8),
                              blurRadius:10,
                              offset:Offset(4,8),
                              ),
                             ], ),
                child: Center(child: Icon(Icons.arrow_back_ios,size:20,color:Colors.black)),
              ),
            ),
            Text("Detail",style:TextStyle(color: Colors.black,fontSize: 30)),
             Container(
              width: 30,
              height: 30,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
                 boxShadow:[ 
                    BoxShadow(color: Colors.black54.withOpacity(0.8),
                            blurRadius:10,
                            offset:Offset(4,8),
                            ),
                           ], ),
              child: Icon(Icons.notification_important_rounded,size:20),
            ),
          ],),
          SizedBox(height: 20,),
          Container(
            width: double.maxFinite,
            height: 250,
            
            child: PageView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,index){
                return Container(
               width: 300,
               height: 250,
                
               child: Column(children: [
                Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                   
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(index==0?"${arg[0]}":images[index-1]),
                   
                      fit:BoxFit.cover,
                      ),
                    ),
                  ),
                SizedBox(height: 10,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  List.generate(3, (indexDots){
                      return Container(
                      margin: const EdgeInsets.only(right: 2),
                      height: 9,
                      width: index==indexDots?20:8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index==indexDots?Colors.black:Colors.grey,
                      ),
      
                      );
                                }
                               ),)
               ]),
                );  
                  }
                  
                  ),
            
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text( "${arg[1]}",style:TextStyle(color: Colors.black,fontSize: 30)),
            ],
          ),
           SizedBox(height: 5,),
                
          Row(children: [
             Text( "${arg[2]}",style:TextStyle(color: Colors.black,fontSize: 15)),
             Text("USA",style:TextStyle(color: Colors.grey,fontSize: 15)),
          ],),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 30,left:30),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: 90,
                  child:Column(
                    children: [
                      Container(
                        width:40,
                        height: 40,
                        decoration: BoxDecoration(
                          color:Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(Icons.bed),
                      ),
                       SizedBox(height: 5,),
                       Text("2 Bedroom",style:TextStyle(color: Colors.grey,fontSize: 15)),
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 90,
                  child:Column(
                    children: [
                      Container(
                        width:40,
                        height: 40,
                        decoration: BoxDecoration(
                          color:Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(Icons.bathtub)
                      ),
                       SizedBox(height: 5,),
                       Text("1 bathroom",style:TextStyle(color: Colors.grey,fontSize: 15)),
                    ],
                  ),
                ),
                
               Container(
                  width: 80,
                  height: 90,
                  child:Column(
                    children: [
                      Container(
                        width:40,
                        height: 40,
                        decoration: BoxDecoration(
                          color:Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(Icons.wifi),
                      ),
                       SizedBox(height: 5,),
                       Text("Free Wifi",style:TextStyle(color: Colors.grey,fontSize: 15)),
                    ],
                  ),
                ),
                 

              ],),
          ),
          SizedBox(height: 20,),
          Row(
             mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Description",style:TextStyle(color: Colors.black,fontSize: 30)),
            ],
          ),
           SizedBox(height: 5,),
                
          Text("an apartement with tow bedrooms , one bathroom and free wifi",style:TextStyle(color: Colors.grey,fontSize: 15)),
          SizedBox(height: 5,),
                
          Row(
             mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("See More",style:TextStyle(color: Colors.black,fontSize: 15)),
            ],
          ),
           SizedBox(height: 70,),
           Row(children: [
            Row(children: [
              Text("900",style:TextStyle(color: Colors.black,fontSize: 25)),
              Text("/Month",style:TextStyle(color: Colors.black,fontSize: 15)),
            ],),
            SizedBox(width: 10,),
            Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child:
               Text("Book Now",style:TextStyle(color: Colors.white,fontSize: 25)), ),
            ),
           ],),
        ]),
      ),
    );
  }
}