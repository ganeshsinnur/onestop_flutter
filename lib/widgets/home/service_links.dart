import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:onestop_dev/pages/buy_sell/bns_home.dart';
import 'package:onestop_dev/pages/contact/contact.dart';
import 'package:onestop_dev/pages/ip/ip_carousel.dart';
import 'package:onestop_dev/pages/lost_found/lnf_home.dart';
import 'package:onestop_dev/pages/quick_links/cab_share.dart';
import 'package:onestop_dev/pages/quick_links/gc_scoreboard.dart';
import 'package:onestop_dev/pages/upsp/upsp.dart';
import 'package:onestop_dev/widgets/home/home_tab_tile.dart';

List<HomeTabTile> serviceLinks = [
  const HomeTabTile(
    label: "LAN",
    icon: FluentIcons.desktop_24_regular,
    routeId: RouterPage.id,
  ),
  const HomeTabTile(
    label: "Contacts",
    icon: FluentIcons.contact_card_group_24_regular,
    routeId: ContactPage.id,
  ),
  const HomeTabTile(
    label: "Lost and Found",
    icon: FluentIcons.document_search_24_regular,
    routeId: LostFoundHome.id,
  ),
  const HomeTabTile(
    label: "Buy and Sell",
    icon: FluentIcons.money_20_regular,
    routeId: BuySellHome.id,
  ),
  const HomeTabTile(
      label: "Cab Sharing",
      icon: FluentIcons.vehicle_bus_24_regular,
      routeId: CabShare.id),
  // const HomeTabTile(
  //   label: "GC Score Board",
  //   icon: FluentIcons.trophy_20_regular,
  //   routeId: Scoreboard.id,
  // ),
  const HomeTabTile(
    label: "UPSP",
    icon: FluentIcons.chat_warning_16_regular,
    routeId: Upsp.id
  ),
];