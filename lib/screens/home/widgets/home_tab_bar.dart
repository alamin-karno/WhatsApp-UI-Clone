import 'package:flutter/material.dart';

class HomeTabBar extends StatelessWidget with PreferredSizeWidget {
  final List<Widget> tabs;

  const HomeTabBar({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.camera_alt_rounded,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        Expanded(
          child: TabBar(
            tabs: tabs,
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 8),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}
