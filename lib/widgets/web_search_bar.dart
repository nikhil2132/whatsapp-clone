import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.22,
            padding: const EdgeInsets.all(10),
            // decoration: const BoxDecoration(
            //   border: Border(
            //     bottom: BorderSide(
            //       color: dividerColor,
            //     ),
            //   ),
            // ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: searchBarColor,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Icon(
                    Icons.search,
                    size: 20,
                  ),
                ),
                hintStyle: const TextStyle(
                  fontSize: 14,
                ),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
          ),
          const Icon(
            Icons.filter_list,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
