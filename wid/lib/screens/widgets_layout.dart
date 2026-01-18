import 'package:flutter/material.dart';
import 'package:wid/widgets/titulo_secao.dart';

class WidgetsLayout extends StatelessWidget {
  const WidgetsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Scaffold( //aplicar temas necessarios para a tela
        appBar: AppBar(title: Text("Widget de layout"),),//bloco 1
          body: ListView(//bloco 2
            padding: EdgeInsets.all(16),
              children: [
                TituloSecao(titulo: "Padding"),
                Container(
                  color: Colors.amber,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text("Padding de 20"),
                    ),
                ),
                
                Divider(),
                TituloSecao(titulo: "Align"),
                Container(
                  height: 80,
                  color: Colors.blue,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Texto de apoio"),
                  ),
                ),

                Divider(),

                TituloSecao(titulo: "Center",),
                Container(
                  height: 80,
                  color: Colors.red,
                  child: Center(
                    child: Text("Texto de apoio"),
                  ),
                ),

                Divider(),

                TituloSecao(titulo: "SizedBox"),
                Column(
                  children: [
                    Text("Coluna 1"),
                    SizedBox(height: 24),
                    Text("Coluna 2"),
                  ],
                ),

                Divider(),

                TituloSecao(titulo: "Expaded e flexible"),
                Container(
                  height: 200,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Expanded(child: Container(
                        color: Colors.red,
                        child: Center(child: Text("Expanded")),
                      )),
                      Flexible(
                        flex: 2,
                        child: Container(
                          color: Colors.green,
                          child: Center(child: Text("Flexible")),
                      )),
                    ],
                  ),
                ),

                Divider(),

                TituloSecao(titulo: "Row"),
                Row(children: [
                  Expanded(child: Container(
                    height: 50,
                    color: Colors.red,
                    child: Center(child: Text("Expanded")),
                  )),
                  Flexible(child: Container(
                      height: 50,
                    color: Colors. green,
                    child: Center(child: Text("Flexible")),
                  ))
                ],)

              ],
          ),
    );
  }
}