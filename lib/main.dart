import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beto Carreiro Chicote',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'Beto Carreiro - Chicote'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  
  void initAudio() {
    _assetsAudioPlayer.open(
      AssetsAudio(
        asset: "betocarreirochicote.m4a",
        folder: "assets/",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: initAudio,
          tooltip: 'Chicotear',
          child: Icon(Icons.whatshot),
        ),
      ),
    );
  }
}
