import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomLayout(),
    );
  }
}

class CustomLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Yaudah Latihan'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 20),
              CustomBox(size: 100),
              SizedBox(width: MediaQuery.of(context).size.width / 2 - 130),
              CustomBox(size: 100),
              SizedBox(width: 20),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomBox(size: 100),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 20),
              CustomBox(size: 100),
              SizedBox(width: MediaQuery.of(context).size.width / 2 - 130),
              CustomBox(size: 100),
              SizedBox(width: 20),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomBox extends StatelessWidget {
  final double size;

  CustomBox({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      color: Colors.blue,
    );
  }
}
