import 'package:flutter/material.dart';

class CicloStateful extends StatefulWidget {
  final Color cor;
  const CicloStateful({super.key, required this.cor,});

  @override
  State<CicloStateful> createState() => _CicloStatefulState();
}

class _CicloStatefulState extends State<CicloStateful> {
  @override
  void initState(){
    super.initState();
    print("init");
  }

  @override
  void didchangesdependices(){
    super.didChangeDependencies();
    print('didchange');
  }

  @override
  void didupdatewidget(CicloStateful oldWidget){
    super.didUpdateWidget(oldWidget);
    print("update");
  }
  
  @override
  void dispose(){
      super.dispose();
      print("dispose");
  }


  @override
  Widget build(BuildContext context) {
    print("construido");
    return Container(
      height: 200,
      width: 200,
      color: widget.cor,
      child: Center(
        child: Text("cor atual", style: TextStyle(color: Colors.amber),),
      ),
    );
  }
}