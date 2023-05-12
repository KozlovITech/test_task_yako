import 'package:flutter/material.dart';
import 'package:yako_task/src/models/message_repository.dart';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black),
                      ),
                      hintText: "Search...",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      contentPadding: EdgeInsets.only(top: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                alignment: Alignment.center,
                height: 49,
                width: 60,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 208, 59, 205),
                      width: 2,
                    ),
                  ),
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.tune),
                  color: Color.fromARGB(255, 208, 59, 205),
                  iconSize: 35,
                  onPressed: () {},
                ),
              )
            ],
          ),
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
