import 'package:flutter/material.dart';

class ConterScreen extends StatefulWidget {
  const ConterScreen({super.key});

  @override
  _ConterScreenState createState() => _ConterScreenState();
}
   
class _ConterScreenState extends State<ConterScreen> {
  bool isMale=true;
  
  double height=120;
    @override
  void initState()
   {
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 /*  body: Center(
     child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: (){
            setState(() {
              conter--;
              print(conter);
            });
            
          },
         child:
          Text("MIMAS")
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Text("$conter",
           style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900),
           ),
         ),
          TextButton(
          onPressed: (){
         
            setState(() {
              conter++;
              print(conter);
            });
          },
         child:
          Text("PLUS")
         ),
      ],
     ),
   ),*/
        
        appBar: AppBar( 
          title: Text("BML Calcoulator"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Expanded(
                  child: Row(
                    children: [
                       GestureDetector(
                        onTap: (){
                        setState(() {
                          isMale=true;
                        });
                        },
                         child: Container(
                          height: 200,
                          width: 180,
                           child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.stream, size: 50,),
                              Text("MALE",
                              style: TextStyle(fontSize:30 ),
                              ),
                            ],
                           ),
                           decoration: BoxDecoration(
                            color:isMale?Colors.cyan: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(15)
                           ),
                         ),
                       ),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;
                          });
                        },
                         child: Container(
                            height: 200,
                            width: 180,
                             child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.stream, size: 50,),
                                Text("FEMALE",
                                style: TextStyle(fontSize:30 ),
                                ),
                              ],
                             ),
                              decoration: BoxDecoration(
                            color: !isMale ? Colors.cyan: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(15)
                           ),
                           ),
                       ),
                     ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text("data",
                    style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                                   ),
                                   ),
                                   Row(
                                    
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                     Text(
                      "${height.round()}",
                     style: TextStyle(fontSize: 40,
                     fontWeight: FontWeight.bold
                     ),
                     ),
                     SizedBox(width: 5,),
                      Text("CM",
                      style: TextStyle(fontWeight: FontWeight.bold ),
                      ),
                    ],),
                    
                    Slider(
                      value:height ,
                      max: 220.0,
                      min: 80.0,
                     onChanged: (value){
                       setState(() {
                         height=value;
                       });
                     })
                    ],
                    ),
                  ),
                ),
                  
                  Expanded(
                    child: Row(
                      children: [
                       
                       Container(
                        height: 200,
                        width: 180,
                        
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text("AGE",
                             style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                             ),
                             ),
                               Text("180",
                             style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                             ),
                             ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  mini: true,
                                  child: Icon(
                                    Icons.star,
                                  ),
                                  onPressed: (){}
                                  ),
                                    FloatingActionButton(
                                  mini: true,
                                  child: Icon(
                                    Icons.star,
                                  ),
                                  onPressed: (){}
                                  )
                              ],
                             )
                          ],
                         ),
                       ),
                            SizedBox(width: 20,),
                         Container(
                        height: 200,
                        width: 180,
                        
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text("AGE",
                             style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                             ),
                             ),
                               Text("180",
                             style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                             ),
                             ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  mini: true,
                                  child: Icon(
                                    Icons.star,
                                  ),
                                  onPressed: (){}
                                  ),
                                    FloatingActionButton(
                                  mini: true,
                                  child: Icon(
                                    Icons.star,
                                  ),
                                  onPressed: (){}
                                  )
                              ],
                             )
                          ],
                         ),
                       ),
                       
                    ],),
                  ),

               
            ],
          ),
        ),

    );
  }
}