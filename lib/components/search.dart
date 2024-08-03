import 'package:flutter/material.dart';
import 'package:flutter_gojek_ui/theme.dart';
import 'package:flutter_svg/svg.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 15, right: 15),
      child: Row(
        children: [
          Container(
            height: 35,
            width: 295,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: dark4,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/search.svg',
                  color: dark1,
                  width: 20,
                  height: 20,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Cari layanan, makanan, & tujuan',
                  style: regular14.copyWith(color: dark3),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          SizedBox(
            width: 35,
            height: 35,
            child: Stack(
              children: [
                CircleAvatar(
                  child: Image.asset('assets/images/Avatar.png'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 / 2),
                      color: const Color(0xFFD1E7EE),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: SvgPicture.asset(
                      'assets/icons/goclub.svg',
                      color: blue3,
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
