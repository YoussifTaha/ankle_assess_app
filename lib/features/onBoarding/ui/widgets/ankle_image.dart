import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnkleImage extends StatelessWidget {
  const AnkleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 390.w,
          height: 342.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF40916C), Color(0x9740916C), Color(0x0040916C)],
            ),
          ),
        ),
        Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
                height: 350.h, child: Image.asset('assets/images/ankle.png')))
      ],
    );
  }
}
