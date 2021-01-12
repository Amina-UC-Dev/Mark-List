import 'package:flutter/material.dart';

class MarkListPage extends StatefulWidget {
  @override
  _MarkListPageState createState() => _MarkListPageState();
}

class _MarkListPageState extends State<MarkListPage> {

  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  TextEditingController num3 = TextEditingController();
  
  int total=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Mark List"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Enter First Number"),
                  Container(width: 150,
                    child: TextField(
                      controller: num1,
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Enter Second Number"),
                  Container(width: 150,
                    child: TextField(
                      controller: num2,
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Enter Third Number"),
                  Container(width: 150,

                    child: TextField(
                      controller: num3,
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                     setState(() {
                       total = int.parse(num1.text) + int.parse(num2.text) + int.parse(num3.text);
                     });
                    },
                    child: Container(
                        color: Colors.grey,
                        height: 30,width: 80,
                        child: Center(child: Text("Total"))),
                  ),
                  Container(width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple)
                    ),
                    child: Center(
                      child: Text(
                          total!=0 ?  total.toString() : ""
                        ,style: TextStyle(color: Colors.teal),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Text(total >= 10 && total!=0  ?"This Student is Passed" : total < 10 && total!=0  ?
              "This Student is Failed" : "",
                style: TextStyle(color: total > 10 ? Colors.green : Colors.red),),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    total = 0;
                    num1.text="";
                    num2.text="";
                    num3.text="";
                  });
                },
                child: Container(
                    color: Colors.grey,
                    height: 30,width: 80,
                    child: Center(child: Text("Reset"))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
