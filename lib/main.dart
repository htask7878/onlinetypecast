import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: Home(),
  ));
}
//hardik
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  dynamic id, name, color, year, pantone_value, myurl, text;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onlinedata();
    });
  }

  onlinedata() async {
    var url = Uri.https('reqres.in', 'api/unknown/2');
    var response = await http.get(url);
    Map ml = jsonDecode(response.body);

    Map m = ml['data'];
    print("m = $m");
    id = m['id'];
    print("id  = $id");
    name = m['name'];
    print("name  = $name");
    year = m['year'];
    print("year  = $year");
    color = m['color'];
    print("color  = $color");
    pantone_value = m['pantone_value'];
    print("panton_value  = $pantone_value");

    Map m1 = ml['support'];
    print("m1  = $m1");
    myurl = m1['url'];
    print("myurl  = $myurl");
    text = m1['text'];
    print("text  = $text");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(id),
            Text(name),
            Text(year),
            Text(color),
            Text(pantone_value),
            Text(myurl),
            Text(text),
          ],
        ),
      ),
    );
  }
}
