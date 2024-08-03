import 'package:flutter/material.dart';
import 'package:flutter_gojek_ui/data/icon_data.dart';
import 'package:flutter_gojek_ui/theme.dart';
import 'package:flutter_svg/svg.dart';

class Gopay extends StatelessWidget {
  const Gopay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 15, right: 15),
      child: Container(
        height: 96,
        decoration: BoxDecoration(
          color: blue1,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 2,
                    height: 8,
                    color: dark3,
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    width: 2,
                    height: 8,
                    color: dark4,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                children: [
                  Container(
                    height: 11,
                    width: 118,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(8),
                      ),
                      color: Color(0XFF9CCDDB),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    height: 72,
                    width: 127,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/gopay.png',
                          height: 14,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Rp12.379',
                          style: bold16.copyWith(color: dark1),
                        ),
                        Flexible(
                          child: Text(
                            'Klik & cek riwayat',
                            style: semibold12_5.copyWith(color: green1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ...gopayIcons.map(
              (icon) => Flexible(
                fit: FlexFit.tight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: SvgPicture.asset(
                        'assets/icons/${icon.icon}.svg',
                        color: blue1,
                      ),
                    ),
                    const SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      icon.title,
                      style: semibold14.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
