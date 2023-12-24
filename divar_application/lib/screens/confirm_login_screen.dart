import 'package:divar_application/widgets/code_container.dart';
import 'package:flutter/material.dart';

class ConfirmLoginScreen extends StatelessWidget {
  const ConfirmLoginScreen({super.key});

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
              child: Image.asset('assets/images/pic7.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 40,
                right: 20,
              ),
              child: Image.asset('assets/images/pic8.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 16,
              ),
              child: SizedBox(
                height: 74,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const CodeContainer();
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'ارسال مجدد کد',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '00:00',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const ConfirmLoginButton(),
          ],
        ),
      ),
    );
  }
}

class ConfirmLoginButton extends StatelessWidget {
  const ConfirmLoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 16,
      ),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Center(
            child: Text(
              'تایید ورود',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
