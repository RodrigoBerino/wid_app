import 'package:flutter/material.dart';
import 'package:wid/screens/widgets_conteudo.dart';
import 'package:wid/screens/widgets_layout.dart';
import 'package:wid/widgets/titulo_secao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { //arvore de widgets -> bloco de construção da interface
  const MyApp({super.key});

  //widgets de conteudo
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ListContents(),
    );
  }
}

class ListContents extends StatelessWidget {
  final List<CatalogoItem> secoes = [
    CatalogoItem(
      titulo: "Widgets de conteudo",
      icone: Icons.text_fields,
      descricao:"Desc 1",
      destino: WidgetsConteudo(),
    ),
    CatalogoItem(
      titulo: "Widgets de layout",
      icone: Icons.star,
      descricao:"Desc 2",
      destino: WidgetsLayout(),
    ),
  ];


  ListContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Catalogo de widgets")),
        body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16),
          crossAxisSpacing: 16,
          childAspectRatio: 1.5,
          children: secoes
          .map(
            (item) => GestureDetector(  
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => item.destino),),
            child:  Card(
              elevation: 4,
              child: Padding(padding: 
                EdgeInsets.all(12),
                child: Column(
                  children: [
                    Icon(item.icone, size: 48, color: Colors.blue,),
                    Text(item.titulo, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,), maxLines: 2, overflow: TextOverflow.ellipsis,),
                    Text(item.descricao, textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.grey,), maxLines: 3, overflow: TextOverflow.ellipsis,),
                  ],
                ),
              ),
            ),
          ),).toList(),
        ),
      );
  }
}

class CatalogoItem{
  final String titulo;
  final IconData icone;
  final String descricao;
  final Widget destino;

  CatalogoItem({
    required this.titulo,
    required this.icone,
    required this.descricao,
    required this.destino,
  });
}

