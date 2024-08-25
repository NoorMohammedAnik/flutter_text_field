import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Flutter TextField Example'),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
                children: <Widget> [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter Your Name',
                        prefixIcon: const Icon(Icons.email),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter Your Password',
                        prefixIcon: const Icon(Icons.password),
                      ),
                    ),
                  ),


                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(

                          minimumSize: const Size.fromHeight(50),
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: (){
                          // Fluttertoast.showToast(
                          //     msg: "This is Center Short Toast",
                          //     toastLength: Toast.LENGTH_SHORT,
                          //    // gravity: ToastGravity.CENTER,
                          //     timeInSecForIosWeb: 1,
                          //     // backgroundColor: Colors.red,
                          //     // textColor: Colors.white,
                          //     fontSize: 16.0
                          // );

                          Fluttertoast.showToast(msg: "Email:"+emailController.text+" Password:"+passwordController.text);

                        },
                        child: Text("Submit",style: const TextStyle(color: Colors.white),)),
                  ),


                ],
            )
        )
    );
  }
}