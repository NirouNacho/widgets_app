import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Riverpod Counter ',
      subTitle: 'counter using riverpod',
      link: '/counter',
      icon: Icons.countertops_rounded),
  MenuItem(
      title: 'Buttons',
      subTitle: 'Vatios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Cards',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars and Dialogues',
      subTitle: 'In Screen Indicators',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated Container',
      subTitle: 'Animated Statefull Widget',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'UI Controls + Tiles',
      subTitle: 'A series of flutter controls',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Application Introduction',
      subTitle: 'Lets get a ride through the application',
      link: '/tutorial',
      icon: Icons.directions_walk),
  MenuItem(
      title: 'Infinte Scroll and Pull to Refresh',
      subTitle: 'Infinte lists',
      link: '/infinite',
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: 'Change theme',
      subTitle: 'Change application theme',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
