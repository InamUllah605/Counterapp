import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int inc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('Counter App', style: TextStyle(fontSize: 30),),
        centerTitle: true,
      ),
       body: Center(child: Container(height: 50,width: 50,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
           border: Border.all(color: Colors.black),
       ),
          child: Center(
            child: Text(
              '$inc', style: TextStyle(color: Colors.white, fontSize: 30),),
          ),
       )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 80,bottom: 170),
        child: Row(
          children: [
          FloatingActionButton(shape: CircleBorder(side: BorderSide(color: Colors.black)),
            backgroundColor: Colors.white,
            onPressed: () {
              inc++;
              setState(() {

              });
            }, child: Icon(Icons.add, color: Colors.black,),
          ),
          SizedBox(width: 30,),
          FloatingActionButton(shape: CircleBorder(side: BorderSide(color: Colors.black)),
            backgroundColor: Colors.white,
            onPressed: () {
              if (inc == 0) {

              } else {
                inc--;
                setState(() {

                });
              }
            }, child: Icon(Icons.minimize, color: Colors.black,),),
          SizedBox(width: 30,),
          FloatingActionButton(shape: CircleBorder(side: BorderSide(color: Colors.black)),
            backgroundColor: Colors.white,
            onPressed: () {
              inc = 0;
              setState(() {

              });
            }, child: Icon(Icons.refresh, color: Colors.black,),)
        ],),
      )

    );
  }
}