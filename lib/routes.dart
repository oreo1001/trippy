import 'package:flutter/material.dart';

import 'ChatScreen/chat_screen.dart';
import 'main_screen.dart';

final Map<String, WidgetBuilder> route = {
  "/main": (context) => const MainScreen(),
  "/chat": (context) => const ChatScreen(),
};