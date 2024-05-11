import 'package:firma/const/const.dart';
import 'package:firma/views/optionItem.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Container(
                height: size.height * 0.15,
                width: size.width,
                decoration: const BoxDecoration(
                    color: primaryGreen,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 120, left: 120, top: 30),
                  child: Image.asset('assets/images/title.png'),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 18.0),
                        child: OptionItem(
                            option: options[index],
                            color: index == 1 ? primaryYellow : primaryGreen),
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text.rich(TextSpan(children: <InlineSpan>[
                    TextSpan(
                      text: 'Made by ',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    TextSpan(
                      text: 'HoskaDev',
                      style: TextStyle(fontSize: 18, color: Color(0xff5E00DD)),
                    ),
                  ])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
