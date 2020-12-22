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

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.teal[300],
        body: Form(key: _formKey,
          child: Stack(
            children: [
              SafeArea(
                child: Center(
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
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(35, 40, 35, 0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 120, 0, 50),
                      child: Image.asset("assets/Ehjez-Logo.png", height: 120,),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: TextFormField(
                        cursorColor: Colors.white,
                        validator: (value){
                          if (value.isEmpty){
                            return "الرجاء إدخال الأسم";
                          } else if (value == "20200461") {
                            return null;
                          } else {
                            return "Wrong Password";
                          }
                          return null;
                        },
                        textAlign: TextAlign.end,
                        showCursor: true,
                        style: TextStyle(height: 3, color: Colors.white),
                        decoration: new InputDecoration(hintText: "رقم الهوية أو الإقامة", hintStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
                            prefixIcon: Icon(Icons.account_circle_rounded, color: Colors.white,),
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
                          focusColor: Colors.white
                        )
                        ,),
                    ),
                    TextFormField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      cursorColor: Colors.white,
                      validator: (value){
                        if (value.isEmpty){
                          return "الرجاء إدخال الأسم";
                        } else if (value == "20200461") {
                          return null;
                        } else {
                          return "Wrong Password";
                        }
                        return null;
                        },
                      textAlign: TextAlign.end,
                      showCursor: true,
                      style: TextStyle(height: 3, color: Colors.white),
                      decoration: new InputDecoration(hintText: "كلمة السر", hintStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
                          prefixIcon: Icon(Icons.lock, color: Colors.white,),
                          errorStyle: TextStyle(color: Colors.white),
                          border: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          focusedBorder: new OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none),
                              borderRadius: BorderRadius.circular(10.0)),
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
                          focusColor: Colors.white
                      )
                      ,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 70, 0, 25),
                      child: ButtonTheme(shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20)
                      ),
                        child: RaisedButton(onPressed: () {
                          if (_formKey.currentState.validate()){
                            Navigator.pushReplacementNamed(context, '/');
                          };
                          },color: Color.fromRGBO(46,168,172, 1),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                            Text("التالي", style: TextStyle(color: Colors.white, fontFamily: "ElMessiri", fontSize: 25),),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                              child: Icon(Icons.arrow_forward_outlined, color: Colors.white,),
                            )
                          ],)
                          ,),
                      ),
                    ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
