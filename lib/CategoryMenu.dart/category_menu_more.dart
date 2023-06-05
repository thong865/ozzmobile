import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ohaomob/HomeScreen/widget/grid_view_menu.dart';
import 'package:ohaomob/ic_doubtone.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ohaomob/icpainclass/svicon.dart';

class CategoryMenuScreen extends StatefulWidget {
  const CategoryMenuScreen({super.key});

  @override
  State<CategoryMenuScreen> createState() => _CategoryMenuScreenState();
}

class _CategoryMenuScreenState extends State<CategoryMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 241, 8, 55),
              Color.fromARGB(255, 241, 241, 241)
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: true,
                expandedHeight: 100.0,
                stretch: true,
                backgroundColor: Colors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'ໝວດໝູ່ ແລະ ບໍລິການ',
                    style: TextStyle(color: Colors.white),
                  ),
                  stretchModes: <StretchMode>[
                    StretchMode.zoomBackground,
                    StretchMode.blurBackground,
                    StretchMode.fadeTitle,
                  ],
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: DefaultTabController(
              length: 2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Builder(
                    builder: (context) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              backgroundBlendMode: BlendMode.softLight,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ບໍລິການ',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const GridViewMenuCateWgt()
                                ]),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              backgroundBlendMode: BlendMode.softLight,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('ໝວດໝູ່ສິນຄ້າ'),
                                  TabBar(
                                    onTap: (index) {
                                      // Tab index when user select it, it start from zero
                                    },
                                    tabs: [
                                      Tab(
                                        icon: Icon(Icons.card_travel),
                                        text: 'ທົ່ວໄປ',
                                      ),
                                      Tab(icon: Icon(Icons.add_shopping_cart)),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 300.0,
                                    child: TabBarView(
                                      children: [
                                        const GridViewMenuCateWgt(),
                                        const GridViewMenuCateWgt(),
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
