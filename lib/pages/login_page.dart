import 'package:flutter/material.dart';
import 'package:food_delevery_app/auth/auth_service.dart';
import 'package:food_delevery_app/pages/widget/my_button.dart';
import 'package:food_delevery_app/pages/widget/my_squreTile.dart';
import 'package:food_delevery_app/pages/widget/my_textField.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // sign user in method
  void login() async {
    final _authService = AuthService();
    try {
      await _authService.signInWithEmailPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }
  //forgot password
  void forgotpw() {
     showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.surface,
          title: Text("User tapped forgot password"),
        )
     );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),

            // App slogan
            Text(
              'Food Delevery App',
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(height: 20),

            // Email text field
            MyTextfield(
                controller: emailController,
                hintText: 'Email',
                obscureText: false),
            const SizedBox(height: 20),

            // Password text field
            MyTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true),
            const SizedBox(height: 20),

            // Sign in button
            MyButton(
              text: 'Sign In',
              onTap: login,
            ),
            const SizedBox(height: 25),

            // Not a member? Register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 16),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 16),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Google + Apple sign in buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // Google button
                SquareTile(imagePath: "assets/Images/AuthImages/apple.png"),

                SizedBox(width: 25),

                // Apple button
                SquareTile(imagePath: "assets/Images/AuthImages/google.png")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
