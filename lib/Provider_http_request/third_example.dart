import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data_class.dart';

class ThirdExamplePage extends StatefulWidget{
  const ThirdExamplePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return ThirdExamplePageState();
  }
}

class ThirdExamplePageState extends State<ThirdExamplePage>{
  @override
  void initState(){
    super.initState();
    final postModel = Provider.of<DataClass2>(context ,listen: false);
    postModel.getPostData();
  }
  @override
  Widget build(BuildContext context) {
    final postModel = Provider.of<DataClass2>(context);
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40 , bottom: 20),
                child: Text(postModel.post?.title ?? '' , style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Container(
                child: Text(postModel.post?.body ?? ""),
              )
            ],
          ),
        ),
      ),
    );
  }
}