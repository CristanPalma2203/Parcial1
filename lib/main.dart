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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: login(),
    );
  }
}

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = new TextEditingController();

  TextEditingController pass = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 50, right: 50, top: 5),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Parcial 1 - ETPS3!",
                style: TextStyle(
                  fontSize: 28,
                )),
            Padding(padding: EdgeInsets.only(top: 0)),
            Text("Jeremias Ezequiel Escobar Cartagena #25-3712-2019"),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 250,
              width: 350,
              child: Image.asset("assets/pc.png"),
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  hintText: "Ingrese Su Nombre",
                  prefixIcon: Icon(Icons.person_outline_rounded)),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  hintText: "Ingrese Su Apellido",
                  prefixIcon: Icon(Icons.contact_page_outlined)),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  hintText: "Ingrese Su Usuario",
                  prefixIcon: Icon(Icons.contact_page_outlined)),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: pass,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Ingrese Su Contraseña",
                  prefixIcon: Icon(Icons.verified_user_outlined)),
            ),
            SizedBox(height: 25),
            MaterialButton(
              minWidth: 200.0,
              height: 40.0,
              onPressed: () {},
              color: Color.fromARGB(255, 183, 228, 60),
              child: Text('Ingresar', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 25),
            MaterialButton(
              minWidth: 200.0,
              height: 40.0,
              onPressed: () {},
              color: Color.fromARGB(255, 134, 47, 233),
              child: Text('Cancelar', style: TextStyle(color: Colors.white)),
            ),
          ]),
        ),
      ),
    );
  }
}
