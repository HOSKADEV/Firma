import 'package:firma/models/option.dart';
import 'package:flutter/material.dart';

List<Option> options = [
  Option(
      title: 'ادارة المحاصيل',
      description:
          "من أجل زيادة معدلات الإنتاجية وزيادة العوائد الاقتصادية للاستثمار الزراعي تركز برامج الأبحاث مركز firma على تحسين الممارسات الزراعية من خلال تطبيق  \" فيرمة firma \" على كافة المحاصيل المزروعة من أجل تحقيق أعلى إنتاجية ممكنة مع الالتزام بأعلى معايير السلامة حيث تغطي هذه الممارسات جوانب إنتاج المحاصيل، والتحكم في نمو النبات وجودة بيئة نمو الثمار أثناء فترة الزراعة والحصاد",
      icon: 'crop.svg'),
  Option(
      title: 'إكتشاف المرض',
      description:
          'عزيزي الفلاح يَعُد اكتشاف المرض بسرعة أمرا حيويًا لصحة المزروعات والمحاصيل ، من خلال هذهِ الأيقونة يُمكنك أن تحمي المزروعات من الخسائر الكبيرة وتساهم في الحفاظ على مستوى الإنتاجية وجودة المحاصيل',
      icon: 'bug.svg'),
  Option(
      title: 'الاستشارة الفورية',
      description:
          'انواع مختلف العوائق الزراعية مثل :\n• اختيار الزراعات المناسبة\n• تقنيات الزراعة الحديثة \n• ادارة المخاطر \n• إدارة المسار التقني',
      icon: 'support.svg')
];
const Color primaryGreen = Color(0xff038C25);
const Color primaryYellow = Color(0xffF2A71B);

ThemeData theme = ThemeData(
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.white, fontFamily: "Alexandria"),
  ),
);
