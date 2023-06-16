import 'package:flutter/material.dart';
import 'package:tr_new/main.dart';
import 'package:auto_size_text/auto_size_text.dart';
void main() {
  runApp( const MaterialApp(
    home:  LoginPage(),
  ));
}
class LoginPage extends StatefulWidget{
  const LoginPage  ({super.key});

  @override
  State <LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> { 
  late String loginacc, loginpass;


  @override
  Widget build(BuildContext context) {
    return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Expanded(
                flex: 3,
                child: Image.asset(
                  'assets/image/lantern_left.png',
                  height: 400,
                  width: 400,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(color: Colors.transparent),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.grey,
                      ),
                    ),
                                        const Expanded(
                      flex: 2,
                      child: AutoSizeText(
                        "NOCTURNO",
                      minFontSize: 0,
                      maxLines: 1,
                              style: TextStyle(
                                fontFamily: 'dancing',
                                fontWeight: FontWeight.w500,
                                fontSize: 30,
                                color: Color.fromARGB(255, 255, 191, 0),),),),

                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Username",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: const InputDecoration(
                            hintText: "Enter Your Username",
                            hintStyle: TextStyle(
                              color: Colors.white,
                            )),
                        onChanged: (value) {
                          setState(
                            () {
                              loginacc = value;
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter Your Password",
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onChanged: (value) {
                          setState(
                            () {
                              loginpass = value;
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        minimumSize: const Size.fromHeight(0), // NEW
                      ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => LoginResult(
                        loginacc: loginacc,
                        loginpass: loginpass,
                        key: const Key(''),
                      ),
                    ),
                  );
                },
                child: const AutoSizeText(
                        "Login",
                        minFontSize: 0,
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: 'dancing',
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                      ),),

                    Expanded(
                      flex: 5,
                      child: Container(
                        color: Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
               Expanded(
                flex: 1,
                child: Container(color: Colors.transparent),
              ),
              Expanded(
                flex: 3,
                child: Image.asset(
                  'assets/image/lantern_right.png',
                  height: 400,
                  width: 400,
                ),
              ),
            ],
          ),
        );
}}