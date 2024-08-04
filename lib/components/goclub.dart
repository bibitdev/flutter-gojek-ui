import 'package:flutter/material.dart';
import 'package:flutter_gojek_ui/theme.dart';
import 'package:flutter_svg/svg.dart';

class Goclub extends StatelessWidget {
  const Goclub({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 19),
      child: Container(
        height: 65,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            colors: [
              Color(0XFFEAF3F6),
              Colors.white,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          border: Border.all(
            color: const Color(0xFFE8E8E8),
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 6, bottom: 6),
              child: SvgPicture.asset('assets/icons/dots.svg'),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/star.svg'),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '117 XP lagi ada Harta Karun',
                          style: semibold14.copyWith(color: dark1),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2)),
                          child: LinearProgressIndicator(
                            color: green1,
                            backgroundColor: dark3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 24.0,
                  ),
                  SvgPicture.asset(
                    'assets/icons/left.svg',
                    height: 24,
                    color: dark1,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
