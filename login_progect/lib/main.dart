import 'package:flutter/material.dart';
import 'Login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
String g = "";

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController x = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Sing up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Create your account",
                style: TextStyle(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: x,
                  decoration: InputDecoration(
                    labelText: "username",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    fillColor:
                        Color.fromARGB(255, 204, 207, 209), // لون التعبئة
                    filled: true,
                  ),
                  maxLength: 300, //طول النص

                  autofocus: true, //تخلي الكيبورد يطلع اول ما يفتح التطبيق
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  // onChanged: (valu) {
                  //   email = valu;
                  // },
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)),
                    fillColor: Color.fromARGB(255, 204, 207, 209),
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  //  onChanged: (valu) {
                  //   password = valu;
                  // },
                  controller: _passwordController,
                  obscureText: true, //يخفي النص حتى يبين باسورد
                  decoration: InputDecoration(
                      labelText: "password",
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      fillColor: Color.fromARGB(255, 204, 207, 209),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Confirm password",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Color.fromARGB(255, 204, 207, 209),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(500, 50), // تحديد عرض وارتفاع الزر
                      backgroundColor: Color.fromARGB(255, 204, 207, 209),
                    ),
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text(
                      "Sing up",
                      style: TextStyle(),
                    )),
              ),
              Text(
                "or",
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 204, 207, 209)),
                    fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  ),
                  onPressed: () {},
                  child: Text("Sing in with Google")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyWidget()),
                        );
                      },
                      child: Text("Login"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
