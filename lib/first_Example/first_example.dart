import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management_example/first_Example/data_class.dart';
import 'package:provider_state_management_example/first_Example/second_class.dart';

class FirstExamplePage extends StatefulWidget{
  const FirstExamplePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return FirstExamplePageState();
  }
}
class FirstExamplePageState extends State<FirstExamplePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     body:  Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment: CrossAxisAlignment.center,
               children:  [
                 Consumer<DataClass>(builder:(context , dataClass , child){
                   return Text('${dataClass.x}' ,style: const TextStyle(
                       fontSize: 25,
                       color: Colors.black
                   ),);
                 }),
                 const Text("Total" ,style:TextStyle(
                   fontSize: 30,
                   color: Colors.black,
                 ),)
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 25 ,right: 25,top:100),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 InkWell(
                   onTap:(){
                     if(Provider.of<DataClass>(context , listen: false).x <5){
                       Provider.of<DataClass>(context , listen: false).incrementX();
                     }
                   },
                   child: Container(
                     height: 50,
                     width: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(color: Colors.black,width: 1),
                     ),
                     child: const Align(
                       alignment: Alignment.center,
                       child: Icon(Icons.add),
                     ),
                   ),
                 ),
                 InkWell(
                   onTap: (){
                     Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context){
                           return const SecondPage();
                         })
                     );
                   },
                   child: Container(
                     height: 50,
                     width: 200,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(color: Colors.black,width: 1),
                     ),
                     child: const Align(
                       alignment: Alignment.center,
                       child: Text("Next Page" ,style: TextStyle(
                         color: Colors.black,
                         fontSize: 20,
                       ),),
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ],
       ),
   );
  }
}