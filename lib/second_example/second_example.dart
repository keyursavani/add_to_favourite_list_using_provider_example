import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management_example/second_example/change_course.dart';
import 'package:provider_state_management_example/second_example/my_coursess.dart';

class SecondExamplePage extends StatefulWidget{
  const SecondExamplePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return SecondExamplePageState();
  }
}
class SecondExamplePageState extends State<SecondExamplePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 70 ,left: 20 ,right: 20),
            width: double.maxFinite,
            height: 70,
            decoration: BoxDecoration(
              color: const Color(0xFF5c67c1),
              borderRadius: BorderRadius.circular(20),
            ),
            child:  Center(
              // child:  Consumer<ChangeCourse>(builder:(context , changeCourse , child){
              //   return Text('We are learning  ${changeCourse.sub}' ,style: const TextStyle(
              //       fontSize: 20,
              //       color: Colors.white
              //   ),);
              // }),
              child: Text("We are learning " + Provider.of<ChangeCourse>(context).subject, style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
            ),
          ),
          const MyCourses(course: 'GetX',),
          const MyCourses(course: 'Bloc',),
          const MyCourses(course: 'Cubit',),
        ],
      ),
    );
  }
}