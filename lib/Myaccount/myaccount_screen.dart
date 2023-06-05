import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ohaomob/ic_doubtone.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ohaomob/icpainclass/svicon.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              actions: [
                IconButton(
                    onPressed: () {}, icon: FaIcon(FontAwesomeIcons.bell))
              ],
              pinned: true,
              // expandedHeight: 100.0,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('my account'),
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
          child: Container(
            child: Builder(
              builder: (context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(26, 156, 156, 156),
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Order Shiping'),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 1, 0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[
                                          for (int i = 0; i <= 10; i++)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 8, 8, 8),
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 2,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0),
                                                ),
                                                child: Container(
                                                  width: 65,
                                                  height: 65,
                                                  decoration: BoxDecoration(
                                                    // color: FlutterFlowTheme.of(context)
                                                    //     .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        width: 32,
                                                        height: 32,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.grey,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Icon(
                                                          Icons
                                                              .self_improvement_outlined,
                                                          // color:
                                                          //     FlutterFlowTheme.of(context)
                                                          //         .secondaryText,
                                                          size: 24,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 1, 0, 0),
                                                        child: Text('test'),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Expanded(child: GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder),),
                          /// section
                          ///
                          ///
                          Wrap(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width / 2.5,
                                height: 220,
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: [
                                      BoxShadow(), // no shadow color set, defaults to black
                                    ]),
                                child: Column(children: [
                                  Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.solidLemon,
                                        size: 24.0,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text('data for your'),
                                    ],
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.network(
                                        'https://cf.shopee.co.th/file/16a34202e1507e12eb76a69fd444d3c2'),
                                  )
                                ]),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 2.5,
                                height: 220,
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: [
                                      BoxShadow(), // no shadow color set, defaults to black
                                    ]),
                                child: Column(children: [
                                  Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.solidLemon,
                                        size: 24.0,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text('data for your'),
                                    ],
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.network(
                                        'https://cf.shopee.co.th/file/16a34202e1507e12eb76a69fd444d3c2'),
                                  )
                                ]),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 2.5,
                                height: 220,
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: [
                                      BoxShadow(), // no shadow color set, defaults to black
                                    ]),
                                child: Column(children: [
                                  Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.solidLemon,
                                        size: 24.0,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text('data for your'),
                                    ],
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.network(
                                        'https://cf.shopee.co.th/file/16a34202e1507e12eb76a69fd444d3c2'),
                                  )
                                ]),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 15.0, horizontal: 10.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Row(
                                          children: [
                                            webelight.getUserDuotone(24.0),
                                            SizedBox(
                                              width: 3.0,
                                            ),
                                            Text('Term And Policy')
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 15.0, horizontal: 10.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Row(
                                          children: [
                                            webelight.getUserDuotone(24.0),
                                            SizedBox(
                                              width: 3.0,
                                            ),
                                            Text('Term And Policy')
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
