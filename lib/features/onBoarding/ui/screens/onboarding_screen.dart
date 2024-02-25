import 'package:ankle_assess_app/core/Helpers/extensions.dart';
import 'package:ankle_assess_app/core/Helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles_manager.dart';
import '../../../../core/widgets/widgets.dart';
import '../widgets/ankle_image.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AnkleImage(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpace(20),
                      Text(
                        'Ankle Assess Pro',
                        textAlign: TextAlign.center,
                        style: getBlackStyle(
                          color: ColorManger.darkPrimary,
                          textHeight: 1.2.h,
                          fontSize: 24.sp,
                        ),
                      ),
                      verticalSpace(20),
                      Text(
                        'The best app to get you on the track of the right assessment of the ankle injuries that your patients suffer from.',
                        style: getRegularStyle(
                          color: Colors.black,
                          textHeight: 1.2.h,
                          fontSize: 17.sp,
                        ),
                      ),
                      verticalSpace(5),
                      Text(
                        'The app offers A 3d model for the anatomy of the ankle region, subjective and objective assessment to diagnose the injury and lastly treatment protocols that can be shared with your patiens. ',
                        style: getRegularStyle(
                          color: ColorManger.regularGrey.withOpacity(0.8),
                          textHeight: 1.2.h,
                          fontSize: 14.sp,
                        ),
                      ),
                      verticalSpace(40),
                      button(
                        height: 50,
                        context: context,
                        function: () {
                          context.pushNamed(Routes.loginScreen);
                        },
                        text: 'Get Started',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
