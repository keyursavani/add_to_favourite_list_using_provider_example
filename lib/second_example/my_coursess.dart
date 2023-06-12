import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'change_course.dart';

class MyCourses extends StatefulWidget{
  final String course;
   const MyCourses({Key? key ,required this.course}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
 return MyCoursesState();
  }
}
class MyCoursesState extends State<MyCourses>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        Provider.of<ChangeCourse>(context, listen:  false).changeSubject(widget.course);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 20 ,left: 20 ,right: 20),
        width: double.maxFinite,
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xFF5c67c1),
          borderRadius: BorderRadius.circular(20),
        ),
        child:  Center(
          child: Text(widget.course , style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),) ,
        ),
      ),
    );
  }
}