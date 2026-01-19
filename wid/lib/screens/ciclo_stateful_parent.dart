import 'package:flutter/material.dart';
import 'package:wid/screens/ciclo_stateful.dart';

class CicloStatefulParent extends StatefulWidget {
  const CicloStatefulParent({super.key});

  @override
  State<CicloStatefulParent> createState() => _CicloStatefulParentState();
}

class _CicloStatefulParentState extends State<CicloStatefulParent> {
  Color corAtual = Colors.blue;

  void trocaCor(){
    setState(() {
      corAtual = corAtual == Colors.blue ? Colors.purple : Colors.blue;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ciclo de vida"),),
      body: Column(
        children: [
          Text('Simulando',
          textAlign: TextAlign.center,),
          CicloStateful(cor: corAtual,),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: trocaCor, child: Text("Trocar"),),
        ],
      ),
    );
  }
}