import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();

}
class _MyAppState extends State<MyApp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int? result=0,num1=0,num2=0;
  add(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! + num2! ;
    });
  }
  sub(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! - num2! ;
    });
  }
  div(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! ~/ num2! ;
    });
  }
  mult(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! * num2! ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Basic Calculator "),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: controller1,
                decoration: InputDecoration(
                    labelText: "Enter First Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: controller2,
                decoration: InputDecoration(
                    labelText: "Enter Second Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  add();
                  controller1.clear();
                  controller2.clear();
                }, child: Text("+")),
                ElevatedButton(onPressed: (){
                  sub();
                  controller1.clear();
                  controller2.clear();
                }, child: Text("-")),
              ],
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    mult();
                    controller1.clear();
                    controller2.clear();
                  }, child: Text("x")),
                  ElevatedButton(onPressed: (){
                    div();
                    controller1.clear();
                    controller2.clear();
                  }, child: Text("/")),
                ],
              ),
            Text(
                "Result: $result ",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ))],
          )
      ),
    );
  }
}