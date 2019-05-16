import 'package:flutter/material.dart';

class CounterStateFulWidget extends StatefulWidget{

  const CounterStateFulWidget({
    Key key,
    this.initValue : 0,
});

  final int initValue;

  @override
  _CounterWidgetState createState() => new _CounterWidgetState();

}




class _CounterWidgetState extends State<CounterStateFulWidget>{

  int _counter;


  @override
  void initState() {
    super.initState();
    //初始化状态
    print("initState");
    _counter = widget.initValue;
  }



  @override
  Widget build(BuildContext context) {
    print('build');
    return Center(
      child: FlatButton(
        child: Text('$_counter'),
        onPressed: ()=>setState(()=>++_counter),
      ),
    );
  }


  @override
  void didUpdateWidget(CounterStateFulWidget oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  void reassemble() {
    print('reassemble');
    super.reassemble();
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

}

