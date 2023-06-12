import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management_example/provider_http_post_request/data_class.dart';
import 'package:provider_state_management_example/provider_http_post_request/signup_model.dart';
import 'package:provider_state_management_example/provider_http_post_request/signup_page.dart';

class SignupPage2 extends StatefulWidget{
  const SignupPage2({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return SignupPage2State();
  }
}
class SignupPage2State extends State<SignupPage2>{

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final enabledBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(9),
    ),
    borderSide: BorderSide(color: Colors.black),
  );
  @override
  Widget build(context) {
    // TODO: implement build
    return Scaffold(
      body: Consumer<DataClass3>(builder: (context , data , child){
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 30,right: 30) ,
                        child: TextFormField(
                          controller: nameController,
                          cursorColor: Colors.black12,
                          style: const TextStyle(fontSize: 16, color: Color(0xFF19232d)),
                          keyboardType: TextInputType.text,
                          maxLines: 1,
                          minLines: 1,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: "Name",
                            hintStyle: const TextStyle(fontSize:17, color: Colors.black54),
                            prefixIcon:const Icon(Icons.person ,color: Colors.black45,),
                            enabledBorder: enabledBorder,
                            border: enabledBorder,
                            focusedBorder: enabledBorder,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 30,right: 30 ,top: 30) ,
                        child: TextFormField(
                          controller: phoneController,
                          cursorColor: Colors.black12,
                          style: const TextStyle(fontSize: 16, color: Color(0xFF19232d)),
                          keyboardType: TextInputType.text,
                          maxLines: 1,
                          minLines: 1,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: "Phone number",
                            hintStyle: const TextStyle(fontSize:17, color: Colors.black54),
                            prefixIcon:const Icon(Icons.phone ,color: Colors.black45,),
                            enabledBorder: enabledBorder,
                            border: enabledBorder,
                            focusedBorder: enabledBorder,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 30,right: 30,top: 30) ,
                        child: TextFormField(
                          controller: emailController,
                          cursorColor: Colors.black12,
                          style: const TextStyle(fontSize: 16, color: Color(0xFF19232d)),
                          keyboardType: TextInputType.text,
                          maxLines: 1,
                          minLines: 1,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: const TextStyle(fontSize:17, color: Colors.black54),
                            prefixIcon:const Icon(Icons.email ,color: Colors.black45,),
                            enabledBorder: enabledBorder,
                            border: enabledBorder,
                            focusedBorder: enabledBorder,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 30,right: 30,top: 30 ,bottom: 50) ,
                        child: TextFormField(
                          controller: passwordController,
                          cursorColor: Colors.black12,
                          style: const TextStyle(fontSize: 16, color: Color(0xFF19232d)),
                          keyboardType: TextInputType.text,
                          maxLines: 1,
                          minLines: 1,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: const TextStyle(fontSize:17, color: Colors.black54),
                            prefixIcon:const Icon(Icons.lock ,color: Colors.black45,),
                            enabledBorder: enabledBorder,
                            border: enabledBorder,
                            focusedBorder: enabledBorder,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          _registration();
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
                    ],
                  ),
              ),
            ],
          ),
        );
      },
      ),
    );
  }
  Future<void> _registration() async {
    String name = nameController.text.trim();
    String phone = phoneController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    SignUpBody signUpBody = SignUpBody(
        name: name, phone: phone, email: email, password: password);
    var provider = Provider.of<DataClass3>(context ,listen: false);
    await provider.postData(signUpBody);
    if(provider.isBack){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context){
          return const SignupPage();
        })
      );
    }
  }
}