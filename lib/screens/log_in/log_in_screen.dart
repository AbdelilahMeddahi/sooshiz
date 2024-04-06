import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:sooshiz/utils/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //form key
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  //for showing the password
  bool _isObscure = true;

  //controllers
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  // to enable and disable the 'get started' button
  bool isButtonActive = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: SizedBox(
                      height: 42 * height / 814,
                      child: const Icon(
                        Icons.arrow_back_sharp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 13 * height / 814,
                  ),
                  SizedBox(
                    height: 124 * height / 814,
                    child: Column(
                      children: [
                        const Text(
                          "Welcome back!",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 15 * height / 814,
                        ),
                        Text(
                          "We are happy to see you here, you already know how great is the sushi we made!! There is more to discover",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Gray300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 45 * height / 814,
                  ),
                  SizedBox(
                    height: 122 * height / 814,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 52 * height / 814,
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            keyboardType: TextInputType.number,
                            obscureText: false,
                            controller: phonenumbercontroller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: "Phone number",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 18 * height / 814,
                        ),
                        SizedBox(
                          height: 52 * height / 814,
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            obscureText: _isObscure,
                            autocorrect: false,
                            enableSuggestions: false,
                            controller: passwordcontroller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: "Password",
                              suffixIconColor:
                                  _isObscure ? Gray400 : Colors.red,
                              suffixIcon: IconButton(
                                onPressed: () {
                                  print(width);
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                                icon: Icon(
                                  _isObscure
                                      ? FontAwesome5.eye
                                      : FontAwesome5.eye_slash,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 17 * height / 814,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 24 * height / 814,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Forget password?",
                          style: TextStyle(
                            color: Crusoe300,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200 * height / 814,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (phonenumbercontroller.text.isNotEmpty &&
                          passwordcontroller.text.isNotEmpty) {
                        print('button enabled');
                      } else {
                        print("button is not enabled");
                      }
                    },
                    child: Container(
                      height: 61,
                      decoration: BoxDecoration(
                        color: (phonenumbercontroller.text.isNotEmpty &&
                                passwordcontroller.text.isNotEmpty)
                            ? Shrinmp300
                            : Gray200,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: (phonenumbercontroller.text.isNotEmpty &&
                                    passwordcontroller.text.isNotEmpty)
                                ? white
                                : Gray300,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 78 * height / 814,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            color: Gray300,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Crusoe300,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
