import 'package:flutter/material.dart';
import 'package:yako_task/src/models/message_repository.dart';
import 'package:yako_task/src/widgets/search_bar.dart';
import '../models/models_view_message.dart';

class ChatPageScreen extends StatefulWidget {
  const ChatPageScreen({Key? key}) : super(key: key);

  @override
  State<ChatPageScreen> createState() => _ChatPageScreenState();
}

class _ChatPageScreenState extends State<ChatPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Column(
        children: [
          const SearchBar(),
          SizedBox(
            height: 575,
            child: SingleChildScrollView(
              child: Column(
                children: viewMessage
                    .map(
                      (e) => ModelsViewMessage(
                        avatar: e.avatar,
                        nameSurname: e.nameSurname,
                        message: e.message,
                        briefNotification: e.briefNotification,
                        date: e.date,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
