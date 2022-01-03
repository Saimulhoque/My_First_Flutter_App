import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

double conHeight = 80;
double conWidth = 80;

String imgsrc = "https://st.depositphotos.com/1006706/2671/i/600/depositphotos_26715369-stock-photo-which-way-to-choose-3d.jpg";
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage() ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("My first app", style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        color: Colors.green,
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    conHeight==300;
                    conWidth=300;
                  });
                },

                onDoubleTap: (){
                  setState(() {
                    conHeight=100;
                    conWidth=100;
                  });
                },
                child: AnimatedContainer(
                  height: conHeight,
                  width: conWidth,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: NetworkImage("https://st.depositphotos.com/1006706/2671/i/600/depositphotos_26715369-stock-photo-which-way-to-choose-3d.jpg"),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(180),
                    border: Border.all(color: Colors.yellow, width: 4)
                  ), duration: Duration(milliseconds: 4000),
                ),
              ),
              Image.asset("assets/image/image1.jpg"),
              Image.asset("assets/image/image2.jpg"),
              Image.asset("assets/image/image1.jpg"),
              Image.asset("assets/image/image2.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}


