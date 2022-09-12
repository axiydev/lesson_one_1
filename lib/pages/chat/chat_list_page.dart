import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson_one/pages/chat/widget/user_card_widget.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavBar as NavigationBarTheme,
    );
  }

//? Bottom Navgation Bar
  Widget get bottomNavBar {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600, fontFamily: 'SfPro')),
          backgroundColor: Colors.white,
          indicatorColor: Colors.transparent),
      child: NavigationBar(destinations: [
        NavigationDestination(
            icon: const Icon(
              CupertinoIcons.chat_bubble,
              color: Color(0xFF7A7A7A),
              size: 30,
            ),
            selectedIcon: Badge(
              position: const BadgePosition(end: -30, top: -3),
              shape: BadgeShape.square,
              padding: const EdgeInsets.fromLTRB(6, 2, 6, 2),
              borderRadius: BorderRadius.circular(10),
              badgeContent: const Text('82',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SfPro')),
              child: const Icon(
                CupertinoIcons.chat_bubble,
                color: Color(0xFF000000),
                size: 30,
              ),
            ),
            label: 'Chats'),
        NavigationDestination(
            icon: Badge(
              position: const BadgePosition(end: -20, top: -3),
              shape: BadgeShape.square,
              padding: const EdgeInsets.fromLTRB(6, 2, 6, 2),
              borderRadius: BorderRadius.circular(10),
              badgeContent: const Text('2',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SfPro')),
              child: const Icon(
                Icons.alternate_email,
                color: Color(0xFF7A7A7A),
                size: 30,
              ),
            ),
            selectedIcon: const Icon(
              Icons.alternate_email,
              color: Color(0xFF000000),
              size: 30,
            ),
            label: 'Mentions')
      ]),
    );
  }

//? AppBar
  AppBar get appBar {
    return AppBar(
      elevation: 1,
      backgroundColor: Theme.of(context)
          .appBarTheme
          .copyWith(backgroundColor: Colors.white)
          .backgroundColor,
      leading: const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, .0, 10.0),
        child: CircleAvatar(
            backgroundImage: AssetImage(
          'assets/image/01.png',
        )),
      ),
      title: const Text(
        'Stream Chat',
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black,
            fontFamily: 'SfPro'),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: FloatingActionButton(
            heroTag: '0',
            elevation: 2,
            onPressed: () {},
            backgroundColor: Theme.of(context)
                .floatingActionButtonTheme
                .copyWith(backgroundColor: Colors.white)
                .backgroundColor,
            child: SvgPicture.asset(
              'assets/svg/pencil.svg',
              color: const Color(0xFF005FFF),
            ),
          ),
        )
      ],
    );
  }

//? body
  Widget get body {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: TextField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 20),
                hintText: 'Search',
                isDense: true,
                hintStyle: const TextStyle(fontSize: 16, fontFamily: 'SfPro'),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.black,
                ),
                prefixIconColor: Colors.black,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 1, color: Colors.grey[400]!)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 1, color: Colors.grey[400]!)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        BorderSide(width: 1, color: Colors.grey[400]!))),
          ),
        ),
        Expanded(
            child: ListView.builder(
          shrinkWrap: true,
          itemCount: 100,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CardUserWidget(),
          ),
        )),
      ],
    ));
  }
}
