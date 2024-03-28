import 'package:flutter/material.dart';

class LoginSrceen extends StatefulWidget {
  const LoginSrceen({Key? key}) : super(key: key);
  @override
  State<LoginSrceen> createState() => _LoginScrState();
}

class _LoginScrState extends State<LoginSrceen> {
  GlobalKey<FormState> formstate = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0XFFE1EDFF),
          elevation: 0.0,
          title: SizedBox(
            child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 7, top: 3),
                child: const Text(
                  "Welcome to Viawise!",
                  style: TextStyle(
                      color: Color(0XFF2680FF),
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                )),
          ),
        ),
        body: Container(
            color: const Color(0XFFE1EDFF),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView(children: [
              const SizedBox(height: 0),
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: const Text(
                    "We are happy to see you again! What is the next\n destination? ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Colors.grey)),
              ),
              const SizedBox(height: 37),
              Form(
                key: formstate,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "The field is empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          fillColor: const Color(0XFFF4F7FA),
                          filled: true,
                          hintText: ("Enter your e-mail"),
                          hintStyle: const TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w100),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 30),
                          label: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 9),
                            child: const Text(
                              "E-mail",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey),
                            ),
                          ),
                          suffixIcon: const Padding(
                            padding: EdgeInsets.only(right: 26),
                            child: Icon(
                              Icons.email_outlined,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 25),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.length > 12) {
                          return "Minmium length is 12 characters";
                        }
                        if (value.isEmpty) {
                          return "The field is empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          fillColor: const Color(0XFFF4F7FA),
                          filled: true,
                          hintText: ("Enter your password"),
                          hintStyle: const TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w100),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 30),
                          label: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 9),
                            child: const Text(
                              "Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey),
                            ),
                          ),
                          suffixIcon: MaterialButton(
                              onPressed: () {},
                              padding: const EdgeInsets.only(right: 0),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.visibility),
                                color: Colors.grey,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          child: MaterialButton(
                            minWidth: 15,
                            onPressed: () {},
                            child: const Text(
                              "Forgot password?",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                            width: 350,
                            height: 45,
                            decoration: BoxDecoration(
                              color: const Color(0xFF1765FC),
                              borderRadius: BorderRadius.circular(150),
                            ),
                            child: MaterialButton(
                              onPressed: () {
                                if (formstate.currentState!.validate()) {
                                  print("valid");
                                } else {
                                  print("not valid");
                                }
                              },
                              child: const Text(
                                "Sign in",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    letterSpacing: 0.5,
                                    wordSpacing: 1,
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            )),
                        const SizedBox(height: 22),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.0),
                            child: Row(children: [
                              Expanded(
                                  child: Divider(
                                      thickness: 0.5, color: Colors.grey)),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 17.0),
                                child: Text(
                                  "or continue with",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Expanded(
                                  child: Divider(
                                      thickness: 0.5, color: Colors.grey)),
                            ])),
                        const SizedBox(height: 11),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     MaterialButton(
                        //       height: 20,
                        //       onPressed: () {},
                        //       child: IconButton(
                        //         onPressed: () {},
                        //         icon: Image.asset("images/google.png"),
                        //         iconSize: 35,
                        //       ),
                        //     ),
                        //     MaterialButton(
                        //       height: 20,
                        //       onPressed: () {},
                        //       child: IconButton(
                        //         onPressed: () {},
                        //         icon: Image.asset(
                        //           "images/FaceBook.jpg",
                        //           fit: BoxFit.cover,
                        //         ),
                        //         iconSize: 35,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        const SizedBox(height: 6),
                        Container(
                          alignment: Alignment.center,
                          child: const Text(
                            "By signing in, you agree to our Terms and Conditions.",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(height: 48),
                        Container(
                            width: 340,
                            height: 45,
                            decoration: BoxDecoration(
                              color: const Color(0XFFF4F7FA),
                              border: Border.all(
                                  color: const Color(0XFF1765FC), width: 1.5),
                              borderRadius: BorderRadius.circular(150),
                            ),
                            child: MaterialButton(
                              onPressed: () {},
                              child: const Text(
                                "Sign in as a guest",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontSize: 15,
                                    color: Color(0XFF1765FC),
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                        const SizedBox(height: 17),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            MaterialButton(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 11, vertical: 18),
                              minWidth: 20,
                              onPressed: () {},
                              child: const Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 43, 111, 247),
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ])));
  }
}
