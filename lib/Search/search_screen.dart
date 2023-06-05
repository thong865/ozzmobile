import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        // color: mainText,
                      )),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        suffix: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 20,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.grey))),
                  )),
                  // IconButton(
                  //   onPressed: () {
                  //     // setState(() {
                  //     //   showModalBottomSheet(
                  //     //       shape: const RoundedRectangleBorder(
                  //     //         borderRadius: BorderRadius.vertical(
                  //     //           top: Radius.circular(25),
                  //     //         ),
                  //     //       ),
                  //     //       clipBehavior: Clip.antiAliasWithSaveLayer,
                  //     //       context: context,
                  //     //       builder: (context) =>
                  //     //           {});
                  //     // });
                  //   },
                  //   icon: const Icon(
                  //     Icons.search,
                  //     // color: mainText,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
