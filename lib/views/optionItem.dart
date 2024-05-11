// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:firma/views/optionDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../models/option.dart';

class OptionItem extends StatelessWidget {
  Option option;
  Color color;
  OptionItem({required this.option, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {
          Get.to(OptionDetails(
            color: color,
            option: option,
          ));
        },
        child: Row(
          children: [
            const SizedBox(
              width: 40,
            ),
            SvgPicture.asset(
              "assets/images/" + option.icon,
              semanticsLabel: option.title,
              height: 90,
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              option.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
