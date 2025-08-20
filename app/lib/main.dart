import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text(' Datos Empresariales ', style: TextStyle(color: Colors.white , fontStyle: FontStyle.italic , fontSize: 40),), centerTitle: true,),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
               Text("Empresa 1" ,style: TextStyle(color: Colors.white , fontSize: 20,),),
               SizedBox(height: 10),
               Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white),
              ),
              ),
              SizedBox(height: 50),
              Text("Empresa 2" ,style: TextStyle(color: Colors.white , fontSize: 20,),),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white),
              ),
              ),

            ], 

          ),

          ),
          
      ),
    );
    
  }
}

