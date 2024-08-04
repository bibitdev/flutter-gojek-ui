import 'package:flutter/material.dart';
import 'package:flutter_gojek_ui/theme.dart';
import 'package:flutter_svg/svg.dart';

class Akses extends StatelessWidget {
  const Akses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Akses Cepat',
            style: bold16.copyWith(color: dark1),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFE8E8E8)),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                ...[
                  'Pintu masuk motor, MNC Land',
                  'Pintu keluar motor, MNC Land'
                ].map(
                  (text) => Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                              color: green2,
                              borderRadius: BorderRadius.circular(20)),
                          child: SvgPicture.asset(
                            'assets/icons/goride.svg',
                            color: Colors.white,
                            width: 24,
                          ),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          child: Text(
                            text,
                            style: regular12_5.copyWith(color: dark1),
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
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
