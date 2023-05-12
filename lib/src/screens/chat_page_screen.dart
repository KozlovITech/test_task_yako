import 'package:flutter/material.dart';

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.black),
                  ),
                  hintText: "Search...",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.only(top: 5),
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
                  color: Colors.red,
                  width: 2,
                ),
              ),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.tune),
              color: Colors.red,
              iconSize: 35,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
