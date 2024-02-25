import 'package:flutter/gestures.dart';
import 'package:ankle_assess_app/core/Helpers/extensions.dart';
import 'package:ankle_assess_app/core/theming/colors.dart';
import 'package:ankle_assess_app/core/theming/styles_manager.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style:
                getRegularStyle(color: ColorManger.darkPrimary, fontSize: 15),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routes.signupScreen);
              },
            text: ' Sign Up',
            style: getSemiBoldStyle(color: ColorManger.primary, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
