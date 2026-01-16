import 'package:flutter/material.dart';
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
      home: Scaffold( //aplicar temas necessarios para a tela
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
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
