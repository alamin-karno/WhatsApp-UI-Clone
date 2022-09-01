import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _tabs = [
    Row(
      children: [
        const Tab(
          text: 'CHATS',
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: const Text(
            '1',
            style: TextStyle(
              color: Color(0xFF006054),
            ),
          ),
        ),
      ],
    ),
    const Tab(
      text: 'STATUS',
    ),
    const Tab(
      text: 'CALLS',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF006054),
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) => const SearchScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
          bottom: HomeTabBar(tabs: _tabs),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(Icons.chat_bubble),
        ),
        body: TabBarView(
          children: [
            const ChatTabScreen(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
