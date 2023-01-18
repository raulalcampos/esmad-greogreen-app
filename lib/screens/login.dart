import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gg/widgets/buttons.dart';
import 'package:gg/widgets/loading.dart';
import '../widgets/inputs.dart';
import '../widgets/buttons.dart';
import 'package:email_validator/email_validator.dart';
import 'package:http/http.dart' as http;
var GeoGreen_API = 'https://esmad-atpi2-gg-api.onrender.com';


class login extends StatefulWidget {
  @override
  State<login> createState() {
    return loginState();
  }
  
}

class loginState extends State<login> {
  bool loading = false;
  String email = '';
  String password = '';
  var loginDBreturn;
  Future <void> loginDB(email, password) async {
    var response = await http.post(
      Uri.parse(GeoGreen_API + "/users/login"),
      headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',},
      body: jsonEncode({'email': email, 'password': password}));
    var info = jsonDecode(response.body);
    print(info);
    if(info["message"] == "sucess"){
      setState(() => loginDBreturn = "Sucess");
    } else if(info["message"] == "error"){
      if(info["info"] == "This email was not found in our database."){
        setState(() => loginDBreturn = "Error404Email");
      } else if(info["info"] == "The entered password is wrong.") {
        setState(() => loginDBreturn = "ErrorWrongPassword");
      } else {
        setState(() => loginDBreturn = "Error");
        print("Error in the login system");
      }
    }
    return;
  }
  @override
  Widget build(BuildContext context) => loading ? const loadingScreen():
      Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black26),
          onPressed: () => Navigator.of(context).pop(),
        ), 
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/image1.png'),
                      ),
                    ],
                  ),
                ),
                new Container(
                  child: Text(
                    'Welcome Back! :)',
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 32,
                      color: Color.fromRGBO(21, 150, 144, 1),
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                new Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: Text(
                    "Insert your data and let's go.",
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black38,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                new Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: input1(
                    textOfInput: "Email",
                    obscured: false,
                    value: (text){
                      email = text;
                    },
                  ),
                ),
                new Container(
                  child: input1(
                    textOfInput: "Password",
                    obscured: true,
                    value: (text){
                      password = text;
                    },
                  ),
                ),
                new GestureDetector(
                    onTap: () {                          
                      Navigator.pushNamed(context, "/forgetpassword");
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Container(
                            margin: const EdgeInsets.only(left: 250),
                            child: Text (
                              "Forget Password?",
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black26,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                ),
                            ),
                          ),
                        ],
                      ),
                    ),                     
                ),
                new Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: button3(
                    textOfButton: "LET'S GO!",
                    action: () async => {
                      if(email != '' && password != ''){
                        if(EmailValidator.validate(email) == true && password.length > 5){
                          setState(() => loading = true),
                          await loginDB(email, password),
                          if(loginDBreturn == "Error404Email"){
                            setState(() => loading = false),
                            showDialog(
                              context: context, 
                              builder: (context){
                              return CupertinoAlertDialog(
                                title: Text('Error'),
                                content: Text('This email was not found in our database.'),
                                actions: [
                                  MaterialButton(
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                    child: Text('Verify Email')
                                  ),
                                ],
                              );
                            })
                          } else if(loginDBreturn == "ErrorWrongPassword"){
                            setState(() => loading = false),
                            showDialog(
                              context: context, 
                              builder: (context){
                              return CupertinoAlertDialog(
                                title: Text('Error'),
                                content: Text('The password you entered is wrong.'),
                                actions: [
                                  MaterialButton(
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                    child: Text('Verify Password')
                                  ),
                                ],
                              );
                            })
                          } else if(loginDBreturn == "Sucess"){
                            setState(() => loading = false),
                             Navigator.pushReplacementNamed(context, "/home")
                          } else {
                            setState(() => loading = false),
                            showDialog(
                              context: context, 
                              builder: (context){
                              return CupertinoAlertDialog(
                                title: Text('Error'),
                                content: Text('Error in login system'),
                                actions: [
                                  MaterialButton(
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                    child: Text('Ok')
                                  ),
                                ],
                              );
                            }) 
                          }
                        } else {
                          showDialog(
                            context: context, 
                            builder: (context){
                            return CupertinoAlertDialog(
                              title: Text('Error'),
                              content: Text('The email or password you entered is invalid.'),
                              actions: [
                                MaterialButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                  child: Text('Verify Data')
                                ),
                              ],
                            );
                          })
                        }
                      } else {
                        showDialog(
                          context: context, 
                          builder: (context){
                          return CupertinoAlertDialog(
                            title: Text('Error'),
                            content: Text('You must enter an email and password to continue.'),
                            actions: [
                              MaterialButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                child: Text('Ok')
                              ),
                            ],
                          );
                        })
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
}