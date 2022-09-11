import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List phoneImage = [
    "images/1.jpg",
    "images/reno5.jpg",
    "images/s21.jpg",
    "images/x2.jpg"
  ];
  List phoneName = ["Iphone", "Oppo", "Samsung", "Huawei"];
  List phoneSubtitle = ["13 pro max", "Reno 5", "Galaxy S21", "Mate X2"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(children: [
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: phoneImage.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 200,
                padding: EdgeInsets.all(5),
                color: Colors.grey,
                child: ListTile(
                  trailing: Icon(Icons.mobile_screen_share),
                  title: Text("${phoneName[index]}"),
                  subtitle: Text("${phoneSubtitle[index]}"),
                  leading: Image(image: AssetImage("${phoneImage[index]}")),
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}
