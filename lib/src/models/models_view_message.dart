import 'package:flutter/material.dart';
import 'package:yako_task/src/themes/fonts.dart';

class ModelsViewMessage extends StatelessWidget {
  final String avatar;
  final String nameSurname;
  final String message;
  final String briefNotification;
  final String date;

  const ModelsViewMessage({
    Key? key,
    required this.avatar,
    required this.nameSurname,
    required this.message,
    required this.briefNotification,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(avatar),
              radius: 25,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        nameSurname,
                        style: Fonts.nameSurname,
                      ),
                      Text(date, style: Fonts.date),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    message,
                    style: Fonts.message,
                  ),
                  if (briefNotification.isNotEmpty &&
                      identical(briefNotification, "Challenge"))
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 12),
                      decoration: const BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Text(
                        briefNotification,
                        style: Fonts.briefNotification,
                      ),
                    ),
                  if (briefNotification.isNotEmpty &&
                      identical(briefNotification, "Help Req."))
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 12),
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Text(
                        briefNotification,
                        style: Fonts.briefNotification,
                      ),
                    ),
                  if (briefNotification.isNotEmpty &&
                      identical(briefNotification, "Engagement Partner"))
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 12),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(199, 28, 27, 27),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Text(
                        briefNotification,
                        style: Fonts.briefNotification,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const Divider(height: 1, color: Colors.black26),
      ],
    );
  }
}
