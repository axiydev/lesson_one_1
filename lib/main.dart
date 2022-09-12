import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lesson_one/pages/chat/chat_list_page.dart';
/*
Created by Axmadjon Isaqov on 10:27:12 12.09.2022
© 2022 @axi_dev 
*/

/*
Mavzu:::Respnsive UI
*/
void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      useInheritedMediaQuery: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChatListPage(),
    );
  }
}
