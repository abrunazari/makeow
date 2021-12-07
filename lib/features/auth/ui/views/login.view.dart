import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/ui/controllers/auth.controller.dart';

class LoginView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                //TODO - modify this to get theme through getx
                colors: [Theme.of(context).backgroundColor, Colors.black87],
                stops: [0.49, 0.55])),
        child: Center(
          child: Container(
            width: 400,
            height: 500,
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.all(50),
                      child: Image.asset("images/logo.png")),
                  Center(
                    child: Container(
                      width: 260,
                      child: Form(
                        key: controller.loginFormKey,
                        child: Column(
                          children: [
                            TextFormField(
                                controller: controller.emailController,
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.person),
                                  labelText: 'Email',
                                ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: controller.validateEmail),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: controller.passwordController,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: controller.validatePassword,
                              decoration: const InputDecoration(
                                  suffixIcon: Icon(Icons.lock),
                                  labelText: 'Password'),
                              obscureText: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: ElevatedButton(
                      child: Text("Entrar"),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor),
                          minimumSize:
                              MaterialStateProperty.all(Size(200, 50))),
                      onPressed: () {
                        controller.login();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
