
import 'package:chatapp/core/color.dart';
import 'package:chatapp/screen/authentication/google_login/controller/sign_in_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginFrom extends StatelessWidget {
  LoginFrom({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;

  final double height;
  final bool passwordVisible = false;
  final signinController = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
      builder: (controller) => Form(
          // key: SignInController.formGlobalKey,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: width * 0.05,
                    right: width * 0.05,
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
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
                          child: TextFormField(
                              style:  TextStyle(color:CommonColor. colorBlack),
                              // controller: controller.emailController,
                              decoration:  InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Email',
                                  labelStyle: TextStyle(
                                    color: CommonColor. colorBlack,
                                  )))))),
              Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    left: width * 0.05,
                    right: width * 0.05,
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
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
                          child: TextFormField(
                              // obscureText: controller.obscureText,
                              style:  TextStyle(color: CommonColor. colorBlack),
                              // controller: controller.passwordController,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      // signinController.visibility();
                                    },
                                    icon:Icon( Icons.accessibility),
                                    color: CommonColor. colorBlack,
                                  ),
                                  border: InputBorder.none,
                                  labelText: 'Password',
                                  labelStyle:  TextStyle(
                                    color: CommonColor. colorBlack,
                                  )))))),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot password?',
                      ))
                ],
              ),
              SizedBox(
                width: width * 0.9,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {
                      // if (SignInController.formGlobalKey.currentState!
                          // .validate()) {
                      //   SignInController.formGlobalKey.currentState!.save();

                      //   signinController.signIn();
                      // }
                    },
                    child: const Text('Login')),
              ),
              SizedBox(
                height: height * 0.04,
              ),
            ],
          )),
    );
  }
}
