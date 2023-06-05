import 'package:flutter/material.dart';
import 'package:ohaomob/CategoryMenu.dart/category_menu_more.dart';
import 'package:rive/rive.dart';

class GridViewMenuCateWgt extends StatelessWidget {
  const GridViewMenuCateWgt({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, mainAxisSpacing: 8),
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CategoryMenuScreen()))
          },
          child: Container(
            child: Column(
              children: [
                SizedBox(
                    width: 48.0,
                    height: 48.0,
                    child: RiveAnimation.asset('assets/land.riv')),
                Text('20 Mall'),
              ],
            ),
          ),
        );
      },
    );
  }
}
