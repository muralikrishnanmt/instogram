import 'package:flutter/material.dart';
import 'package:instogram/screens/add_post_screen.dart';
import 'package:instogram/screens/feed_screen.dart';
import 'package:instogram/screens/search_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  SearchScreen(),
  AddPostScreen(),
  Text('notif'),
  Text('profile'),
];
