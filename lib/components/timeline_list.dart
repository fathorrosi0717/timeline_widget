import 'package:timeline_widget/components/my_timeline_tile.dart';
import 'package:flutter/material.dart';

List<Widget> timelineList = [
  const MyTimelineTile(
      isFirst: true,
      isLast: false,
      isPast: true,
      title: 'Order Placed',
      description: 'We have received your order'),
  const MyTimelineTile(
      isFirst: false,
      isLast: false,
      isPast: true,
      title: 'Order Confirmed',
      description: 'We have confirmed your order'),
  const MyTimelineTile(
      isFirst: false,
      isLast: false,
      isPast: true,
      title: 'Oder Shipped',
      description: 'We have shipped your order'),
  const MyTimelineTile(
      isFirst: false,
      isLast: true,
      isPast: false,
      title: 'Delivered',
      description: 'Your order has been delivered'),
];
