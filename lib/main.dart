import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCfpasLagF5aIXVv3HCwnWmqLhYFP5BTi8cw&usqp=CAU"),
              fit: BoxFit.cover,
            )
          ),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 100,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: FlutterLogo()
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        bottom: 25
                      ),
                      child: Text(
                        "Find and Meet people around\nyou to find Love",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      "SIGN IN",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 30
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Enter Email",
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                      child: Stack(
                        alignment: AlignmentDirectional.centerEnd,
                        children: <Widget>[
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                          Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.white,
                            size: 16,
                          )
                        ],
                      ),
                    ),
                    Theme(
                      data: ThemeData(unselectedWidgetColor: Colors.white),
                      child: CheckboxListTile(
                        title: Transform.translate(
                          offset: const Offset(-15, 0),
                          child: Text(
                            "title text",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                            ),
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                        activeColor: Colors.red,
                        checkColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 60,
                      child: RaisedButton(
                        onPressed: onClick,
                        child: Text(
                          "GET STARTED",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.red
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular((50)))
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: RaisedButton(
                              onPressed: onClick,
                              child: Icon(
                                Icons.facebook,
                                color: Colors.red,
                                size: 30,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular((50)))
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: RaisedButton(
                              onPressed: onClick,
                              child: Icon(
                                Icons.mail_outline,
                                color: Colors.red,
                                size: 30,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular((50)))
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Forget password?'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration( color: Colors.black38 ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "DON'T HAVE ACCOUNT",
                          style: TextStyle(fontSize: 16, color: Colors.red),
                          children: <TextSpan>[
                            TextSpan(text: 'SIGN UP!', style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onClick() {
    // set up the button
    // Widget okButton = TextButton(
    //   child: Text("OK"),
    //   onPressed: () => Navigator.pop(context, true),
    // );

    // set up the AlertDialog
    // AlertDialog alert = AlertDialog(
    //   title: Text("Alert title"),
    //   content: Text("Clicked sign in button"),
    //   actions: [
    //     okButton,
    //   ],
    // );

    // show the dialog
    // showDialog(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return alert;
    //   },
    // );
  }
}
