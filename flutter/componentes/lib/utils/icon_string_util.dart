import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'admin_panel_settings': Icons.admin_panel_settings,
  'grading': Icons.grading,
  'payment': Icons.payment,
  'list': Icons.list,
  'receipt': Icons.receipt,
  'build': Icons.build,
  'system_update_alt': Icons.system_update_alt,
  'question_answer': Icons.question_answer,
  'thumb_up_alt': Icons.thumb_up_alt,
  'event': Icons.event,
  'dvr': Icons.dvr,
  'account_circle': Icons.account_circle,
  'circle_notifications': Icons.circle_notifications,
  'hearing': Icons.hearing,
  'donut_large': Icons.donut_large,
  'input': Icons.input,
  'sliders': Icons.slideshow,
};

Icon getIcon(String nombreIcono) {
  return Icon(
    _icons[nombreIcono],
    color: Colors.red[400],
  );
}
