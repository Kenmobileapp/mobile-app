// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tr_new/choosepage.dart';
import 'package:tr_new/data.dart';
import 'package:tr_new/login.dart';
import 'package:tr_new/transitionpage.dart';
import 'package:tr_new/status.dart';
import 'package:tr_new/testcolor.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';


// void main() {
//   runApp(const MyApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      appId: "1:51221549452:android:61e5b4d4f3d7c8e0c9c6a9",
      apiKey: "AIzaSyDowTxCkPGmtgUpzvRzrIOk6zF7R_7hN4M",
      projectId: "nocturno-lamp",
      messagingSenderId: "51221549452",
      databaseURL: "https://nocturno-lamp-default-rtdb.asia-southeast1.firebasedatabase.app"
    ),
  );

  runApp(MyFastApp());
}

// void main() {
//   runApp(const MaterialApp(
//     home: Home(),
//   ));
// }


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyFastApp extends StatelessWidget {
  const MyFastApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FastLogin(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String loginacc, loginpass, loginstatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Login Page",
          style: TextStyle(
            fontFamily: 'dancing',
            fontSize: 36,
            color: Color.fromARGB(255, 255, 191, 0),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 81, 16, 16),
                Color.fromARGB(255, 207, 86, 15),
                Color.fromARGB(255, 81, 16, 16),
                Color.fromARGB(255, 0, 0, 0),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              top: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              right: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              bottom: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
            ),
          ),
          child: const LoginPage(),
        )
      ),
  
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 81, 16, 16),
                  Color.fromARGB(255, 207, 86, 15),
                  Color.fromARGB(255, 81, 16, 16),
                  Color.fromARGB(255, 0, 0, 0),
                ]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/nfloralcrop.png',
                height: 40,
                width: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// needs login
class LoginResult extends StatelessWidget {

  const LoginResult({
    required Key key,
    required loginacc,
    required loginpass,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "NOCTURNO",
          style: TextStyle(
            fontFamily: 'dancing',
            fontSize: 36,
            color: Color.fromARGB(255, 255, 191, 0),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 81, 16, 16),
                Color.fromARGB(255, 207, 86, 15),
                Color.fromARGB(255, 81, 16, 16),
                Color.fromARGB(255, 0, 0, 0),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              top: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              right: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              bottom: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
            ),
          ),
          child: const TransitionPage(),
        )
      ),
  
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 81, 16, 16),
                  Color.fromARGB(255, 207, 86, 15),
                  Color.fromARGB(255, 81, 16, 16),
                  Color.fromARGB(255, 0, 0, 0),
                ]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/nfloralcrop.png',
                height: 40,
                width: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FastLogin extends StatelessWidget {
  const FastLogin({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "NOCTURNO",
          style: TextStyle(
            fontFamily: 'dancing',
            fontSize: 36,
            color: Color.fromARGB(255, 255, 191, 0),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 81, 16, 16),
                Color.fromARGB(255, 207, 86, 15),
                Color.fromARGB(255, 81, 16, 16),
                Color.fromARGB(255, 0, 0, 0),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              top: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              right: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              bottom: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
            ),
          ),
          child: const TransitionPage(),
        )
      ),
  
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 81, 16, 16),
                  Color.fromARGB(255, 207, 86, 15),
                  Color.fromARGB(255, 81, 16, 16),
                  Color.fromARGB(255, 0, 0, 0),
                ]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/nfloralcrop.png',
                height: 40,
                width: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home Page",
          style: TextStyle(
            fontFamily: 'dancing',
            fontSize: 36,
            color: Color.fromARGB(255, 255, 191, 0),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 81, 16, 16),
                Color.fromARGB(255, 207, 86, 15),
                Color.fromARGB(255, 81, 16, 16),
                Color.fromARGB(255, 0, 0, 0),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              top: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              right: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              bottom: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
            ),
          ),
          child: const ChoosePage()
        )
      ),
  
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 81, 16, 16),
                  Color.fromARGB(255, 207, 86, 15),
                  Color.fromARGB(255, 81, 16, 16),
                  Color.fromARGB(255, 0, 0, 0),
                ]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/nfloralcrop.png',
                height: 40,
                width: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatusPage extends StatefulWidget {
  const  StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Status",
          style: TextStyle(
            fontFamily: 'dancing',
            fontSize: 36,
            color: Color.fromARGB(255, 255, 191, 0),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 81, 16, 16),
                Color.fromARGB(255, 207, 86, 15),
                Color.fromARGB(255, 81, 16, 16),
                Color.fromARGB(255, 0, 0, 0),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              top: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              right: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              bottom: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
            ),
          ),
          child: const Status(),
        )
      ),
  
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 81, 16, 16),
                  Color.fromARGB(255, 207, 86, 15),
                  Color.fromARGB(255, 81, 16, 16),
                  Color.fromARGB(255, 0, 0, 0),
                ]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/nfloralcrop.png',
                height: 40,
                width: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DataPage extends StatefulWidget {
  const  DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Data",
          style: TextStyle(
            fontFamily: 'dancing',
            fontSize: 36,
            color: Color.fromARGB(255, 255, 191, 0),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 81, 16, 16),
                Color.fromARGB(255, 207, 86, 15),
                Color.fromARGB(255, 81, 16, 16),
                Color.fromARGB(255, 0, 0, 0),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              top: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              right: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              bottom: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
            ),
          ),
          child: const Data(),
        )
      ),
  
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 81, 16, 16),
                  Color.fromARGB(255, 207, 86, 15),
                  Color.fromARGB(255, 81, 16, 16),
                  Color.fromARGB(255, 0, 0, 0),
                ]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/nfloralcrop.png',
                height: 40,
                width: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorPage extends StatefulWidget {
  const  ColorPage({super.key});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Color",
          style: TextStyle(
            fontFamily: 'dancing',
            fontSize: 36,
            color: Color.fromARGB(255, 255, 191, 0),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 81, 16, 16),
                Color.fromARGB(255, 207, 86, 15),
                Color.fromARGB(255, 81, 16, 16),
                Color.fromARGB(255, 0, 0, 0),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              top: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              right: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
              bottom: BorderSide(
                color: Color.fromARGB(255, 255, 191, 0),
                width: 3.0,
              ),
            ),
          ),
          child:  const ColorPick(),
        )
      ),
  
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 81, 16, 16),
                  Color.fromARGB(255, 207, 86, 15),
                  Color.fromARGB(255, 81, 16, 16),
                  Color.fromARGB(255, 0, 0, 0),
                ]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/nfloralcrop.png',
                height: 40,
                width: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}