import 'package:flutter/material.dart';

import '../screens/chat_page_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Container(
          color: const Color.fromARGB(255, 3, 13, 58),
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.account_circle_rounded,
                      color: Colors.white,
                    ),
                    iconSize: 35,
                  ),
                  const Text(
                    "Chat",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    iconSize: 35,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: const ChatPageScreen(),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.mark_unread_chat_alt),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none_outlined),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz_outlined),
          label: 'More',
        ),
      ]),
    );
  }
}
