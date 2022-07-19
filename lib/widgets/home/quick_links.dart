import 'package:flutter/material.dart';
import 'package:onestop_dev/globals/my_colors.dart';
import 'package:onestop_dev/globals/my_fonts.dart';
import 'package:onestop_dev/widgets/home/home_tab_tile.dart';

class QuickLinks extends StatelessWidget {
  const QuickLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kHomeTile,
      ),
      child: Container(
        padding: const EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: FittedBox(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Quick Links',
                    style: MyFonts.w500.size(10).setColor(kWhite),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width-40),
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    HomeTabTile(
                        label: "IP Settings",
                        icon: Icons.computer_outlined,
                        routeId: "/ip"),
                    SizedBox(
                      width: 5,
                    ),
                    HomeTabTile(
                      label: "Blogs",
                      icon: Icons.article_outlined,
                      routeId: "/blogs",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    HomeTabTile(
                      label: "Lost and Found",
                      icon: Icons.find_in_page_outlined,
                      routeId: "/lostFoundHome",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    HomeTabTile(
                      label: "Contacts",
                      icon: Icons.contact_mail_outlined,
                      routeId: "/contacto",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    HomeTabTile(
                      label: "Buy and Sell",
                      icon: Icons.money_rounded,
                      routeId: "/buySellHome",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
