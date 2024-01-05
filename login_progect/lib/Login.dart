import 'package:flutter/material.dart';
import 'main.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi'),
      ),
      body: bodywe(),
    );
  }
}

class bodywe extends StatefulWidget {
  const bodywe({super.key});

  @override
  State<bodywe> createState() => _bodyweState();
}

class _bodyweState extends State<bodywe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Welcome Back",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("Enter your"),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "username",
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                        fillColor: Color.fromARGB(255, 204, 207, 209),
                        filled: true),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    obscureText: true,
                    // keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        labelText: "password",
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                        fillColor: Color.fromARGB(255, 204, 207, 209),
                        filled: true),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Login"),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(250, 10)),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 36, 202, 58)),
                    ),
                  ),
                  Text("Forget password?"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyApp()),
                            );
                          },
                          child: Text("Sign up"))
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
