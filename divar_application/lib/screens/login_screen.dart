import 'package:divar_application/screens/confirm_login_screen.dart';
import 'package:divar_application/widgets/next_step_container.dart';
import 'package:divar_application/widgets/textfiled_content.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const routename = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 76,
                right: 20,
              ),
              child: Image.asset('assets/images/pic5.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 40,
                right: 20,
              ),
              child: Image.asset('assets/images/pic6.png'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16,
              ),
              child: TextFiledContent('شماره موبایل'),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ConfirmLoginScreen(),
                    ),
                  );
                },
                child: const NextStepContainer(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'ثبت نام',
                    style: TextStyle(
                      color: Color.fromARGB(255, 216, 20, 6),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'تا حالا ثبت نام نکردی؟',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
