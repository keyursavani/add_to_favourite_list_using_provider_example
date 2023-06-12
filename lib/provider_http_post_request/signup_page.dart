import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_state_management_example/provider_http_post_request/signup_page2.dart';

class SignupPage extends StatefulWidget{
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignupPageState();
  }
}
class SignupPageState extends State<SignupPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child:       InkWell(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return const SignupPage2();
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
              child: Text("SignUp" ,style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),),
            ),
          ),
        ),
      ),
    );
  }
}