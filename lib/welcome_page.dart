import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:immobilier_app/main_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height:double.maxFinite,
        color:Colors.white,
        child:Stack(
          children: [
            Positioned(
              top: 220,
              right:20,
              left:20,
             
              child: Container(
                 width: double.maxFinite,
                 height: 500,
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   Container(
                    height:400,
                  width: double.maxFinite,
                    child: PageView.builder(
                       scrollDirection: Axis.horizontal,
                          itemCount: 3,
                      itemBuilder: (_,index){

                        return Container(
                            height:300,
                             width:200,
                          child: Center(
                            child:Column(children: [
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100) ,
                                  image:DecorationImage(image: AssetImage("assets/spacejoy2.jpg"),
                                  fit:BoxFit.cover)),
                              ),
                            SizedBox(height: 10,),
                            Text("We help people to", style:TextStyle(color:Colors.black, fontSize:30)),
                            Text("find home with", style:TextStyle(color:Colors.black, fontSize:30)),
                            Text("good price", style:TextStyle(color:Colors.black, fontSize:30)),
                             SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children:  List.generate(3, (indexDots){
                      return Container(
                      margin: const EdgeInsets.only(right: 2),
                      height: 9,
                      width: index==indexDots?20:8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index==indexDots?Colors.brown:Colors.grey,
                      ),
      
                      );
                                }
                               ),),

                            ],) 
                            ),
                            );
                      })


                   ),
                   
                     InkWell(
                      onTap: (){
                        Get.to(()=>MainPage());
                      },
                       child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color:Colors.brown,
                          borderRadius: BorderRadius.circular(10),
                             boxShadow:[ BoxShadow(color: Colors.black54.withOpacity(0.8),
                              blurRadius:10,
                              offset:Offset(5,9),
                              ),]
                        ),
                                         child:Center(child: Text("Next",style:TextStyle(color:Colors.white,fontSize:20)))
                       ),
                     ),
                 ],),
              ),


               
            ),
          ],
        ),
      ),
    );
  }
}