import 'package:flutter/material.dart';
import 'package:wid/widgets/titulo_secao.dart';

class WidgetsConteudo extends StatelessWidget {
  const WidgetsConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return // passa a ser o conteudo
    Scaffold( //aplicar temas necessarios para a tela
        appBar: AppBar(title: Text("Widget de conteudo"),),//bloco 1
        body: ListView(//bloco 2
          padding: EdgeInsets.all(16),
          children: [
          TituloSecao(titulo: "Textos"),

          Text("Texto de exemplo",
          style: TextStyle( fontSize: 18) ,),
  
          Divider(),
          
          TituloSecao(titulo: "Imagem"),
          Image.network(
            'https://picsum.photos/id/237/200/300',
            height: 240,
          ),

          Divider(),
          TituloSecao(titulo: "Icone"),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: 
          [
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 32,),
            Icon(
              Icons.airplane_ticket,
              color: Colors.amber,
              size: 32,),

            Icon(
              Icons.settings,
              color: Colors.blue,
              size: 32,),  
          ],),

          Divider(),
          TituloSecao(titulo: "Elevated Botao"),
          ElevatedButton(onPressed: (){}, child: Text("Clique"),),

          ]
        ),
      );
  }
}