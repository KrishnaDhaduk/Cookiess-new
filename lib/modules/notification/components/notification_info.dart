import 'package:flutter/cupertino.dart';

import 'notification_container.dart';

List notificationItems = [
  NotificationContainer(
    isSelected: true,
    title: "enable_all",
    description: "tap_to_receive_all_notifications",
  ),
  NotificationContainer(
    isSelected: false,
    title: "Push_notifications",
    description: "in_app_notifications",
  ),
  NotificationContainer(
    isSelected: false,
    title: "emails",
    description: "get_notifications",
  ),
  NotificationContainer(
    isSelected: true,
    title: "promos_and_ofers",
    description: "promos_details",
  ),
  NotificationContainer(
    isSelected: true,
    title: "orders_and_purchase",
    description: "orders_and_purchase_details",
  ),
  SizedBox(height: 80)
];
