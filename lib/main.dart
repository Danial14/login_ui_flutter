import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage("lib/assets/images/logo.png"),
                    width: 60,
                    height: 60,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Maintainence",
                        style:
                            TextStyle(fontFamily: "Rubik-MediuM", fontSize: 25),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Box",
                        style: TextStyle(
                            fontFamily: "Rubik-Regular",
                            fontSize: 20,
                            color: Color(0xfff75a27)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: "Rubik-MediuM",
                    fontSize: 36,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Login please",
                  style: TextStyle(
                      fontFamily: "Rubik-Regular",
                      fontSize: 26,
                      color: Color(0xff63b590)),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 15), child: TextFormField(
                decoration: InputDecoration(
                    hintText: "EMail",
                    prefixIcon: Icon(Icons.alternate_email),
                    fillColor: Color(0xfff6f7fa),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xfff6f7fa)),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    hintStyle: TextStyle(
                        fontFamily: "Rubik-MediuM"
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xfff6f7fa)
                        ),
                      borderRadius: BorderRadius.circular(15)
                    )
                ),
              ),),
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 15), child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility_off),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfff6f7fa)),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xfff6f7fa)),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    filled: true,
                    fillColor: Color(0xfff6f7fa),
                    hintStyle: TextStyle(
                        fontFamily: "Rubik-MediuM"
                    )
                ),
              ),),
              SizedBox(height: 10,),
              Row(children: <Widget>[Padding(padding: EdgeInsets.symmetric(horizontal: 15), child: Text("Forget Password?", style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationThickness: 4

              ),),)],
              mainAxisAlignment: MainAxisAlignment.end,
              ),
              SizedBox(height: 30,),
              Container(
                width: 300,
                height: 35,
                decoration: BoxDecoration(color: Color(0xfff75a27),
                borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(blurRadius: 1.0, offset: Offset(1, 5), color: Colors.black12)
                  ]
                ),
                child: Center(child: Text("Login", style: TextStyle(
                  color: Colors.white
                ),),),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Dont have an account?"),
                  SizedBox(width: 5,),
                  Text("Signup", style: TextStyle(
                    color: Color(0xfff75a27),
                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
