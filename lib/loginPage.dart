import 'dart:async';
import 'package:ehjez/mainpage.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  void completed(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context)=>mainscreen()
        )
    );
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.teal[300],
        body: Form(
          child: Stack(
            children: [
              SafeArea(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Color.fromRGBO(31, 112, 138, 1), Color.fromRGBO(64,162,117, 1)])
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                      child: Image.asset("assets/Ehjez-Logo.png",),
                    ),
                    TextFormField(
                      cursorColor: Colors.white,
                      validator: (value){
                        if (value.isEmpty){
                          return "الرجاء إدخال الأسم";
                        }
                        return null;
                      },
                      textAlign: TextAlign.end,
                      showCursor: true,
                      style: TextStyle(height: 3, color: Colors.white),
                      decoration: new InputDecoration(prefixIcon: Icon(Icons.account_circle_rounded),
                          errorStyle: TextStyle(color: Colors.white),
                        border: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        focusedBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        enabledBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        errorBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        disabledBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        contentPadding: EdgeInsets.fromLTRB(0, 10, 15, 10),
                        fillColor: Colors.grey[600].withOpacity(0.3),
                        filled: true,
                      )
                      ,),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
