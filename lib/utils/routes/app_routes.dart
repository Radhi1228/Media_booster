import 'package:flutter/material.dart';
import 'package:media_player/screen/dash/dash_screen.dart';
import 'package:media_player/screen/music/view/music_player_screen.dart';
import 'package:media_player/screen/splash/splash_screen.dart';
import 'package:media_player/screen/video/view/video_player_screen.dart';
Map <String, WidgetBuilder> appRoutes={
  "/":(context) => const SplashScreen(),
  "home":(context) => const DashScreen(),
  "music":(context) => const MusicPlayerScreen(),
  "video":(context) => const VideoPlayerScreen(),
};