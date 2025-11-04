import 'package:flutter/material.dart';
import 'package:couldai_user_app/app/modules/auth/login/login_view.dart';
import 'package:couldai_user_app/app/modules/dashboard/dashboard_view.dart';
import 'package:couldai_user_app/app/modules/settings/settings_view.dart';
import 'package:couldai_user_app/app/modules/help/help_view.dart';

class AppPages {
  static const INITIAL = '/';
  static const DASHBOARD = '/dashboard';
  static const SETTINGS = '/settings';
  static const HELP = '/help';

  static final routes = {
    INITIAL: (context) => const LoginView(),
    DASHBOARD: (context) => const DashboardView(),
    SETTINGS: (context) => const SettingsView(),
    HELP: (context) => const HelpView(),
  };
}
