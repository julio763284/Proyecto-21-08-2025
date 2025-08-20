import 'package:app/features/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:app/features/Widgets/Vistas1cuadro.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => Manejadordeestados(), child: const Homepage(),);
    
  }
}

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

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
               const Text("Empresa 1" ,style: TextStyle(color: Colors.white , fontSize: 20,),),
               const SizedBox(height: 10),
               Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white),
              ),
              ),
              
            
              const SizedBox(height: 20),
              const Text("Empresa 2" ,style: TextStyle(color: Colors.white , fontSize: 20,),),
              const SizedBox(height: 10),
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

