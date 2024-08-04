import 'package:flutter/material.dart';
import 'package:flutter_gojek_ui/data/icon_data.dart';
import 'package:flutter_gojek_ui/theme.dart';
import 'package:flutter_svg/svg.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27, right: 27, top: 32),
      child: SizedBox(
        height: 157,
        child: GridView.count(
          childAspectRatio: 1.0,
          crossAxisCount: 4,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: [
            ...menuIcon.map(
              (icon) => Column(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: icon.icon == 'goclub' ? Colors.white : icon.color,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/${icon.icon}.svg',
                      color: icon.icon == 'goclub'
                          ? icon.color
                          : icon.icon == 'other'
                              ? dark2
                              : Colors.white,
                      width: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 9.0,
                  ),
                  Text(
                    icon.title,
                    style: semibold12_5.copyWith(color: dark2),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
