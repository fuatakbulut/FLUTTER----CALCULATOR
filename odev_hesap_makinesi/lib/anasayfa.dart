import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  String alinanVeri = "";
  String a = "";
  String b = "";
  int toplam = 0;
  var tfController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hesap Makinesi"), backgroundColor: Colors.deepPurple,),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 150.0, horizontal: 5.5),

        child: Center(


          child: Column(

            children: [



              Padding(
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),

                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: tfController,
                  decoration: const InputDecoration(hintText: "Veri"),
                ),
              ),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [


                    FloatingActionButton(
                      splashColor: Colors.black45,
                      backgroundColor: Colors.white60,
                      onPressed: (){
                        setState(() {
                          tfController.text = (tfController.text) + 1.toString();
                          alinanVeri = tfController.text;
                        });

                      },
                      child: Text("1", style: TextStyle(color: Colors.black45, fontSize: 30,fontWeight: FontWeight.bold) ,),
                    ),
                    FloatingActionButton(
                      splashColor: Colors.black45,
                      backgroundColor: Colors.white60,
                      onPressed: (){
                        setState(() {
                          tfController.text = (tfController.text) + 2.toString();
                          alinanVeri = tfController.text;
                        });

                      },
                      child: Text("2", style: TextStyle(color: Colors.black45, fontSize: 30,fontWeight: FontWeight.bold) ,),
                    ),
                    FloatingActionButton(
                      splashColor: Colors.black45,
                      backgroundColor: Colors.white60,
                      onPressed: (){
                        setState(() {
                          tfController.text = (tfController.text) + 3.toString();
                          alinanVeri = tfController.text;
                        });

                      },
                      child: Text("3", style: TextStyle(color: Colors.black45, fontSize: 30,fontWeight: FontWeight.bold) ,),
                    ),
                    FloatingActionButton(
                      splashColor: Colors.black45,
                      backgroundColor: Colors.white60,
                      onPressed: (){
                        setState(() {
                          tfController.text = (tfController.text) + 4.toString();
                          alinanVeri = tfController.text;
                        });

                      },
                      child: Text("4", style: TextStyle(color: Colors.black45, fontSize: 30,fontWeight: FontWeight.bold) ,),
                    ),



                  ],

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      splashColor: Colors.black45,
                      backgroundColor: Colors.white60,
                      onPressed: (){
                        setState(() {
                          tfController.text = (tfController.text) + 5.toString();
                          alinanVeri = tfController.text;
                        });

                      },
                      child: Text("5", style: TextStyle(color: Colors.black45, fontSize: 30,fontWeight: FontWeight.bold) ,),
                    ),
                    FloatingActionButton(
                      splashColor: Colors.black45,
                      backgroundColor: Colors.white60,
                      onPressed: (){
                        setState(() {
                          tfController.text = (tfController.text) + 6.toString();
                          alinanVeri = tfController.text;

                        });

                      },
                      child: Text("6", style: TextStyle(color: Colors.black45, fontSize: 30,fontWeight: FontWeight.bold) ,),
                    ),
                    FloatingActionButton(
                      splashColor: Colors.black45,
                      backgroundColor: Colors.white60,
                      onPressed: (){
                        setState(() {
                          tfController.text = (tfController.text) + 7.toString();
                          alinanVeri = tfController.text;
                        });

                      },
                      child: Text("7", style: TextStyle(color: Colors.black45, fontSize: 30,fontWeight: FontWeight.bold) ,),
                    ),
                    FloatingActionButton(
                      splashColor: Colors.black45,
                      backgroundColor: Colors.white60,
                      onPressed: (){
                        setState(() {
                          tfController.text = (tfController.text) + 8.toString();
                          alinanVeri = tfController.text;
                        });

                      },
                      child: Text("8", style: TextStyle(color: Colors.black45, fontSize: 30,fontWeight: FontWeight.bold) ,),
                    ),


                  ],

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      splashColor: Colors.black45,
                      backgroundColor: Colors.white60,
                      onPressed: (){
                        setState(() {
                          tfController.text = (tfController.text) + 9.toString();
                          alinanVeri = tfController.text;
                        });

                      },
                      child: Text("9", style: TextStyle(color: Colors.black45, fontSize: 30,fontWeight: FontWeight.bold) ,),
                    ),
                    FloatingActionButton(
                      splashColor: Colors.black45,
                      backgroundColor: Colors.white60,
                      onPressed: (){
                        setState(() {
                          tfController.text = 0.toString();
                          alinanVeri = tfController.text;
                        });

                      },
                      child: Text("0", style: TextStyle(color: Colors.black45, fontSize: 30,fontWeight: FontWeight.bold) ,),
                    ),
                    FloatingActionButton(
                      splashColor: Colors.black45,
                      backgroundColor: Colors.white60,
                      onPressed: (){
                        setState(() {
                          alinanVeri = tfController.text;
                          a = alinanVeri;
                          tfController.clear();

                        });

                      },
                      child: Text("+", style: TextStyle(color: Colors.black45, fontSize: 30,fontWeight: FontWeight.bold) ,),
                    ),
                    FloatingActionButton(
                      splashColor: Colors.black45,
                      backgroundColor: Colors.white60,
                      onPressed: (){
                        setState(() {
                          alinanVeri = tfController.text;
                          b = alinanVeri;

                          int x = int.parse(a);
                          int y = int.parse(b);
                          toplam = x+y;
                          tfController.text = toplam.toString();
                          print(toplam);
                          alinanVeri = tfController.text;

                        });

                      },
                      child: Text("=", style: TextStyle(color: Colors.black45, fontSize: 30,fontWeight: FontWeight.bold) ,),
                    ),

                  ],

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      splashColor: Colors.black45,
                      backgroundColor: Colors.white60,
                      onPressed: (){
                        setState(() {
                          //tfController.text = 9.toString();
                          //alinanVeri = tfController.text;
                          tfController.clear();
                        });

                      },
                      child: Text("Temizle", style: TextStyle(color: Colors.black45, fontSize: 10,fontWeight: FontWeight.bold) ,),


                    ),],

                ),
              ),




        ],




                  ),


                ),
      ),);







  }
}
