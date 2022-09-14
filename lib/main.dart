import 'package:flutter/material.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: Home(),));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    onlinedata();
  }
  onlinedata(){
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}
