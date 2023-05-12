import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black),
                ),
                hintText: "Search...",
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 33,
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
          width: 65,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: const BorderSide(
                color: Color.fromARGB(255, 208, 59, 205),
                width: 1.5,
              ),
            ),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(Icons.tune),
            color: const Color.fromARGB(255, 208, 59, 205),
            iconSize: 35,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
