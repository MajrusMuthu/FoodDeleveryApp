import 'package:flutter/material.dart';
import 'package:food_delevery_app/auth/auth_service.dart';
import 'package:food_delevery_app/pages/widget/my_button.dart';
import 'package:food_delevery_app/pages/widget/my_squreTile.dart';
import 'package:food_delevery_app/pages/widget/my_textField.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void register() async {
    final _authService = AuthService();
    if (passwordController.text == confirmPasswordController.text) {
      try {
        await _authService.signUpWithEmailPassword(
            emailController.text, passwordController.text);
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Password don't match!"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),

            //message App slogan
            Text(
              "Let's create an account for you",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 20,
            ),
            //email textfield
            MyTextfield(
                controller: emailController,
                hintText: 'Emial',
                obscureText: false),
            const SizedBox(
              height: 20,
            ),

            //password textfield
            MyTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true),
            const SizedBox(
              height: 20,
            ),

            //Confirm password textfield
            MyTextfield(
                controller: confirmPasswordController,
                hintText: 'Confirm password',
                obscureText: true),
            const SizedBox(
              height: 25,
            ),

            //sign up button
            MyButton(
              text: 'Sign Up',
              onTap: register,
            ),
            const SizedBox(
              height: 25,
            ),
            //already have an account? login now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 16),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Login now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
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
