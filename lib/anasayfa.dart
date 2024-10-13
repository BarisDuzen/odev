import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  int sayac=0;
  Color arkaPlanRengi = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Renk Değiştirici"),) ,
      body: Container(
        color: arkaPlanRengi,
        child: Center(
          child: ElevatedButton(onPressed: (){
            setState(() {
              sayac++;
              if(sayac%2==0){
                arkaPlanRengi=Colors.yellow;
              }
              else{
                arkaPlanRengi=Colors.blue;
              }
            });
          }, child:Text("Tıkla") ),
        ),
      ),
    );
  }
}
