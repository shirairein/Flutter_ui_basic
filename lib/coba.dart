// import 'package:flutter/material.dart';
// import 'package:flutter_pertama/shared/theme.dart';

// void main() {
//   runApp(SignInApp());
// }

// class SignInApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sign In Screen',
//       theme: ThemeData(
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: SignInScreen(),
//     );
//   }
// }

// class SignInScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(255, 83, 136, 136),
//         title: Text('Sign In'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: SignInForm(),
//       ),
//     );
//   }
// }

// class SignInForm extends StatefulWidget {
//   @override
//   _SignInFormState createState() => _SignInFormState();
// }

// class _SignInFormState extends State<SignInForm> {
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           TextFormField(
//             controller: _emailController,
//             decoration: InputDecoration(
//               labelText: 'Username',
//               labelStyle: blueDongkerTextStyle,
//               hintText: 'Enter your username',
//               hintStyle: blueDongkerTextStyle,
//             ),
//             style: blueDongkerTextStyle,
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'Please enter your email';
//               }
//               return null;
//             },
//           ),
//           SizedBox(height: 20.0),
//           TextFormField(
//             controller: _passwordController,
//             decoration: InputDecoration(
//               labelText: 'Password',
//               hintText: 'Enter your Password',
//               hintStyle: blueDongkerTextStyle,
//               labelStyle: blueDongkerTextStyle,
//             ),
//             obscureText: true,
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'Please enter your password';
//               }
//               return null;
//             },
//           ),
//           SizedBox(height: 20.0),
//           ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color.fromARGB(255, 83, 136, 136),
//               ),
//               onPressed: () {
//                 if (_formKey.currentState!.validate()) {
//                   // Perform sign in logic here
//                   // For demonstration purpose, just print email and password
//                   print('Email: ${_emailController.text}');
//                   print('Password: ${_passwordController.text}');
//                 }
//               },
//               child: Text('Masuk Akun', style: whiteTextStyle)),
//           SizedBox(height: 20.0),
//           TextButton(
//             onPressed: () {},
//             child: Text('Don\'t have an account? Sign Up'),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }
// }
