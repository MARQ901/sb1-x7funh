import 'package:flutter/material.dart';
import 'package:voice_social_media/widgets/search_bar.dart';
import 'package:voice_social_media/widgets/category_list.dart';
import 'package:voice_social_media/widgets/content_grid.dart';
import 'package:voice_social_media/widgets/record_button.dart';
import 'package:voice_social_media/screens/settings_screen.dart';
import 'package:voice_social_media/widgets/user_avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomSearchBar(),
        actions: [
          const UserAvatar(),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      ),
      endDrawer: const SettingsScreen(),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: CategoryList(),
              ),
              const SliverPadding(
                padding: EdgeInsets.all(16.0),
                sliver: ContentGrid(),
              ),
            ],
          ),
          const Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: RecordButton(),
          ),
        ],
      ),
    );
  }
}