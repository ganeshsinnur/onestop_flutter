import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:onestop_dev/globals/my_colors.dart';
import 'package:onestop_dev/globals/my_fonts.dart';
import 'package:onestop_dev/stores/mess_store.dart';
import 'package:onestop_dev/widgets/food/mess/mess_meal.dart';
import 'package:provider/provider.dart';
import 'package:webfeed/domain/media/media.dart';

class MessMenu extends StatelessWidget {
  MessMenu({
    Key? key,
  }) : super(key: key);

  List<String> days = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
  List<String> hostels = [
    "Brahma",
    "Lohit",
    "Kameng",
    "Umiam",
    "Barak",
    "Manas",
    "Dihing",
    "Disang"
  ];
  initState()
  {
    DateTime now = DateTime.now();

  }



  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Provider(
      create: (_) => MessStore(),
      builder: (context, _) {
        var messStore = context.read<MessStore>();
        return Container(
            height: 171,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: kBlueGrey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(children: [
                Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MessMeal(mealName: "Breakfast"),
                        MessMeal(mealName: "Lunch"),
                        MessMeal(mealName: "Dinner")
                      ],
                    )),
                SizedBox(
                  width: 16,
                ),
                Observer(builder: (context) {
                  return Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              messStore.selectedMessModel?.timing ?? "",
                              style: MyFonts.w500.size(12).setColor(kGrey12),
                            ),
                          ),
                          Expanded(
                              flex: 4,
                              child: SingleChildScrollView(
                                  child: Text(
                                      messStore.selectedMessModel?.menu ?? "",
                                      style: MyFonts.w400
                                          .size(14)
                                          .setColor(kWhite)))),
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Theme(
                                  data: Theme.of(context).copyWith(cardColor: kGrey2),
                                  child: PopupMenuButton<String>(
                                    onSelected: (value) => print(value),
                                    itemBuilder: (context) {
                                      return days
                                          .map(
                                            (value) => PopupMenuItem(
                                              onTap: () {
                                                messStore.setDay(value);
                                              },
                                              value: value,
                                              child: Text(value, style: MyFonts.w500.setColor(kWhite)),
                                            ),
                                          )
                                          .toList();
                                    },
                                    offset: Offset(1, 40),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 7.0, horizontal: 12.0),
                                      decoration: BoxDecoration(
                                          color: kGrey2,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(messStore.selectedDay,
                                              style: MyFonts.w500
                                                  .setColor(lBlue)
                                                  .size(screenWidth <= 380
                                                      ? 10
                                                      : 13)),
                                          Icon(
                                            Icons.keyboard_arrow_down_outlined,
                                            color: lBlue,
                                            size: screenWidth <= 380 ? 15 : 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Theme(
                                  data: Theme.of(context).copyWith(cardColor: kBlueGrey),
                                  child: PopupMenuButton<String>(
                                    onSelected: (value) => print(value),
                                    itemBuilder: (context) {
                                      return hostels
                                          .map(
                                            (value) => PopupMenuItem(
                                              onTap: () {
                                                messStore.setHostel(value);
                                              },
                                              value: value,
                                              child: Text(
                                                value, style: MyFonts.w500.setColor(kWhite),
                                              ),
                                            ),
                                          )
                                          .toList();
                                    },
                                    offset: Offset(1, 40),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 6.0, horizontal: 12.0),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: lBlue),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(messStore.selectedHostel,
                                              style: MyFonts.w500
                                                  .setColor(lBlue)
                                                  .size(screenWidth <= 380
                                                      ? 10
                                                      : 13)),
                                          Icon(
                                            Icons.keyboard_arrow_down_outlined,
                                            color: lBlue,
                                            size: screenWidth <= 380 ? 15 : 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(),
                              ],
                            ),
                          )
                        ],
                      ));
                })
              ]),
            ));
      },
    );
  }
}
