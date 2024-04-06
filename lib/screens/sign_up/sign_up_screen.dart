import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:sooshiz/utils/constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //form key
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  //for showing the password
  bool _isObscure = true;

  //controllers
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  // to enable and disable the 'get started' button
  bool isButtonActive = false;

  //checkbox
  bool okaywithterms = false;

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
                    height: 99 * height / 814,
                    child: Column(
                      children: [
                        const Text(
                          "Let's create your account",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 15 * height / 814,
                        ),
                        Text(
                          "Welcome to Sooshiz, best sushi out there and you can get in anywhere at anytime",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Gray300),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 31 * height / 814,
                  ),
                  SizedBox(
                    height: 328 * height / 814,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 52 * height / 814,
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            obscureText: false,
                            controller: phonenumbercontroller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: "Full name",
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
                              hintText: "Confirm password",
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
                        SizedBox(
                          height: 18 * height / 814,
                        ),
                        SizedBox(
                          height: 48 * height / 814,
                          child: Row(
                            children: [
                              Checkbox(
                                  value: okaywithterms,
                                  checkColor: white ,

                                  activeColor: Crusoe300,
                                  onChanged: (value) {
                                    setState(() {
                                      okaywithterms = !okaywithterms;
                                    });
                                  }),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      color: Gray400,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: [
                                      const TextSpan(text: "Creating an account means you're okay with our "),
                                      TextSpan(
                                          text: 'Terms of Service',
                                          style: TextStyle(
                                            color: Crusoe300,
                                            fontSize: 16,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              print('Terms of Service"');
                                            }),
                                      const TextSpan(text: ", "),
                                      TextSpan(
                                          text: 'Privacy Policy',
                                          style: TextStyle(
                                            color: Crusoe300,
                                            fontSize: 16,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              print('Privacy Policy"');
                                            }),
                                    ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 45 * height / 814,
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
                    height: 107 * height / 814,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                            color: Gray300,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Log in",
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
