import 'package:firma/models/option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../const/const.dart';

class OptionDetails extends StatelessWidget {
  Option option;
  Color color;
  OptionDetails({required this.color, required this.option});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                width: Get.width,
                height: Get.height * 0.15,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 120, left: 120, top: 30),
                  child: Image.asset(color == primaryYellow
                      ? 'assets/images/title2.png'
                      : 'assets/images/title.png'),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: Get.height * 0.55,
                  decoration: BoxDecoration(
                      border: Border.all(color: color, width: 3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(17),
                        ),
                        height: Get.height * 0.14,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 40,
                            ),
                            SvgPicture.asset(
                              "assets/images/" + option.icon,
                              semanticsLabel: option.title,
                              height: Get.height * 0.1,
                              colorFilter: const ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              option.title,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text(
                          option.description,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // <-- Radius
                    ),
                    backgroundColor: color,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                  ),
                  onPressed: () {
                    launchAnotherApp();
                  },
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "اطلب الخدمة الان",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Alexandria'),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void launchAnotherApp() async {
  var phoneNumber = "+213560994147";
  var url = 'https://wa.me/$phoneNumber';
  if (!await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication)) {
    throw 'Could not launch ';
  }
}
