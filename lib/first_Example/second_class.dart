import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data_class.dart';

class SecondPage extends StatefulWidget{
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SecondPageState();
  }
}
class SecondPageState extends State<SecondPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Provider Example"),
      // ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Consumer<DataClass>(builder: (context , dataClass , child){
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
                      if(context.read<DataClass>().x > 0 ){
                        context.read<DataClass>().decrementX();
                      }
                      // Provider.of<DataClass>(context , listen: false).decrementX();
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
                        child: Icon(Icons.remove),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
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
                        child: Text("Previous Page" ,style: TextStyle(
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
      ),
    );
  }
}