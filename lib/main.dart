import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_net/net/address.dart';
import 'package:flutter_net/film_entity.dart';
import 'package:flutter_net/net/http_manager.dart';
import 'package:flutter_net/net/result_data.dart';
import 'net/data_helper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FlutterEasyLoading(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<FilmSubject> _films = [];

  void _testRequest() async {
    var params = DataHelper.getBaseMap();
    params.clear();
    //apikey=0df993c66c0c636e29ecbb5344252a4a&start=0&count=10
    params["apikey"] = "0df993c66c0c636e29ecbb5344252a4a";
    params["start"] = "0";
    params["count"] = "10";
    ResultData res =
        await HttpManager.getInstance().get(Address.TEST_API, params: params);
    setState(() {
      ///正确的方式是
      /// if(res.isSuccess){
      ///   再进行json解析
      /// }else{
      ///  错误情况处理
      /// }
      ///

      FilmEntity entity = FilmEntity.fromJson(res.data);
      _films = entity.subjects;
    });

//    if (res.isSuccess) {
//      setState(() {
//        str = res.data.toString();
//        //此处可以用json_serializable构造实体类
//      });
//    }
  }

  void _print() {
    String a = "asdasd";
    for (var i = 0; i < 1000; i++) {
      a += "\nfjaskdfasjdhf";
    }
    print(a);
  }

  void printWrapped(String text) {
    final pattern = new RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return FilmItem(
            filmSubject: _films[index],
          );
        },
        itemCount: _films.length,
      )),
      floatingActionButton: InkWell(
        borderRadius: BorderRadius.circular(45),
        onTap: _testRequest,
        child: Container(
          height: 80,
          width: 80,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(45),
          ),
          child: Text(
            "点击请求",
            style: TextStyle(color: Colors.white),
          ),
        ),
//
//        onPressed: _testRequest,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class FilmItem extends StatelessWidget {
  FilmSubject filmSubject;

  FilmItem({this.filmSubject});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[Image.network(filmSubject.images.small)],
    );
  }
}
