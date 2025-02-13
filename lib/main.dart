import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      // これはあなたのアプリケーションのテーマです。 
      //
      //　試してみましょう: アプリケーションを"flutter run"で実行してみてください。 // 
      //　アプリケーションのツールバーが紫色になっているのが確認できます。 // 
      //　アプリを終了せずに、以下のcolorSchemeのseedColorをColors.greenに // 
      //　変更して"ホットリロード"を実行してみてください //（Flutter対応のIDEで変更を保存するかホットリロードボタンを押すか、 // 
      //　コマンドラインでアプリを起動した場合は"r"を押します）。 // 
      //
      //　カウンターがゼロにリセットされないことに注目してください。 // 
      //　リロード中もアプリケーションの状態は失われません。 // 
      //　状態をリセットするには、代わりにホットリスタートを使用します。 // 
      // 
      //　これはコードに対しても有効で、値だけではありません： // 
      //　ほとんどのコード変更はホットリロードだけでテストできます。
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFAA00)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

// このウィジェットはアプリケーションのホームページです。これはStatefulであり、
//　見た目に影響を与えるフィールドを含むStateオブジェクト（以下で定義）を持っています。

// このクラスは状態の設定を行います。親（この場合はAppウィジェット）から
//　提供された値（この場合はタイトル）を保持し、Stateのbuildメソッドで使用されます。
//　Widgetサブクラス内のフィールドは常に"final"としてマークされます。

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // このsetState呼び出しは、Flutterフレームワークに対して
      // このStateで何かが変更されたことを通知します。
      // その結果、下記のbuildメソッドが再実行され、
      // 画面に更新された値が反映されます。
      // もしsetState()を呼ばずに_counterを変更した場合、
      // buildメソッドは再度呼ばれることはなく、
      // 結果として画面上の変化は見られません。
      _counter++;
    });
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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
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
