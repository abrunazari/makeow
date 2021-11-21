import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:programow_flutter_getx_boilerplate/app/controller/auth/auth_controller.dart';

class LoginView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Login'),
            RaisedButton(
              child: Text('Login'),
              onPressed: () {
                Get.find<AuthController>().login();

                // Get.toNamed('/home');
              },
            ),
          ],
        ),
      ),
    );
  }
}

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _formKey = GlobalKey<FormState>();

//   String _email = "";
//   String _password = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Container(
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 colors: [Theme.of(context).backgroundColor, Colors.black87],
//                 stops: [0.49, 0.55])),
//         child: Center(
//           child: Container(
//             width: 400,
//             height: 500,
//             child: Card(
//               shape: RoundedRectangleBorder(
//                 side: BorderSide(color: Colors.white70, width: 1),
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                       padding: EdgeInsets.all(50),
//                       child: Image.asset("images/logo.png")),
//                   Center(
//                     child: Container(
//                       width: 260,
//                       child: Form(
//                         key: _formKey,
//                         child: Column(
//                           children: [
//                             TextFormField(
//                               decoration: InputDecoration(
//                                 suffixIcon: Icon(Icons.person),
//                                 labelText: 'Email',
//                               ),
//                               onChanged: (String value) => this.setState(() {
//                                 _email = value;
//                               }),
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             TextFormField(
//                               decoration: const InputDecoration(
//                                   suffixIcon: Icon(Icons.lock),
//                                   labelText: 'Password'),
//                               onChanged: (String value) => this.setState(() {
//                                 _password = value;
//                               }),
//                               validator: (val) {
//                                 if (val!.length < 6) {
//                                   return 'Password too short.';
//                                 }
//                                 if (val.isEmpty) {
//                                   return "Must fill password";
//                                 }
//                               },
//                               obscureText: true,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 60),
//                     child: ElevatedButton(
//                       child: Text("Entrar"),
//                       // color: Theme.of(context).primaryColor,
//                       style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all(
//                               Theme.of(context).primaryColor),
//                           minimumSize:
//                               MaterialStateProperty.all(Size(200, 50))),
//                       onPressed: () {
//                         if (_formKey.currentState!.validate()) {
//                           //Make login
//                           print("making login");
//                         }
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       )),
//     );
//   }
// }
