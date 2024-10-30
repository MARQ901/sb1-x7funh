import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      'Trending',
      'Music',
      'Stories',
      'News',
      'Comedy',
      'Education'
    ];

    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Chip(
              label: Text(categories[index]),
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
              labelStyle: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
          );
        },
      ),
    );
  }
}