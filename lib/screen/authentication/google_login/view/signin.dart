import 'package:chatapp/core/color.dart';
import 'package:chatapp/core/sized_box.dart';
import 'package:chatapp/screen/authentication/google_login/controller/sign_in_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'form/login_form.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    final signinControl = Get.put(SignInController());
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;
    return Scaffold(
      backgroundColor: CommonColor.colorWhite,
      body: GetBuilder<SignInController>(
        builder: (controller) {
          return signinControl.isLoading == true
              ? Center(
                  child: CircularProgressIndicator(
                    color: CommonColor.colorWhite,
                    backgroundColor: Colors.cyan,
                  ),
                )
              : SafeArea(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Meto',
                          // style: textstyle,
                        )
                      ],
                    ),
                    // textFieldGap,
                    LoginFrom(width: width, height: height),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    const Text('-----------or----------'),
                    CommonSizedBox.gapDown30,
                    GestureDetector(onTap: () =>signinControl.googleLogin() ,
                      child: Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: width * 0.05,
                            right: width * 0.05,
                          ),
                          child: Card(elevation: 3,
                            child: Container(
                                decoration: BoxDecoration( 
                                    color: CommonColor.colorWhite,
                                    borderRadius: BorderRadius.circular(17.0),
                                    boxShadow: const [
                                      BoxShadow(
                                        spreadRadius: 0.2,
                                        color: Colors.white54,
                                      )
                                    ]),
                                child: Padding(
                                    padding: EdgeInsets.only(
                                      left: width * 0.03,
                                      right: width * 0.03,
                                    ),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [Container(
                            decoration: BoxDecoration(
                               color: CommonColor.colorWhite,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            height: 50,
                            width: 270,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                                 
                                Image.asset(
                                  'assets/WhatsApp Image 2023-02-28 at 18.22.47.jpg',
                                  height: 35,
                                ),
                                const SizedBox(
                                  width: 55,
                                ),
                                 Text(
                                  'Connect with Google',
                                  style:
                                      TextStyle(color: CommonColor.colorBlack, fontSize: 15),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                              ],
                            ),
                                                ),
                                          
                                          
                                        ]))),
                          )),
                    ),
                        CommonSizedBox.gapDown30,

                    RichText(
                      text: TextSpan(
                        text: "Don't have account? ",
                        style: TextStyle(color: CommonColor.colorBlack),
                        children: <TextSpan>[
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Get.to(SignupPage());
                              },
                            text: 'Signup',
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ));
        },
      ),
    );
  }
}
