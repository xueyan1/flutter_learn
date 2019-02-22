import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Fultter',
      theme: new ThemeData(
        primaryColor: Colors.pink[100]
      ),
      home: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}
Text text(String date,Color color){
  return  new Text(date,  style:new TextStyle(color: color));
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[]; //总数据
  final _saved = new Set<WordPair>(); //保存喜欢的数据
  final _biggerFont = const TextStyle(fontSize: 18.0); //字体大小
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: text('Startup Name Generator',Colors.red[50]) ,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.arrow_forward_ios,color: Colors.white,),
            onPressed: _pushSaved,
          )
        ],
      ),
      body: _buildSuggestions(), //添加listview
      floatingActionButton:new Icon(Icons.add_a_photo,color: Colors.red[50],),
      backgroundColor:(Colors.yellow[50]),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      final tiles = _saved.map((pair) {
        return new ListTile(
          title: new Text(
            pair.asPascalCase,
            style: _biggerFont,
          ),
        );
      });
      final divided =  ListTile.divideTiles(context: context,tiles: tiles).toList();
      return new Scaffold(
        appBar:  new AppBar(title: new Text('Saved Suggestions')
        
        ),
        body: new ListView(children: divided),
      );
    }));
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    //添加每一条内容
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }
}

