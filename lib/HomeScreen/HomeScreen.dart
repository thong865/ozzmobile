import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ohaomob/HomeScreen/widget/grid_view_menu.dart';
import 'package:ohaomob/Notification/notify_screen.dart';
import 'package:ohaomob/Qrscan/qr_scan_screen.dart';
import 'package:ohaomob/Search/search_screen.dart';
import 'package:ohaomob/SingleProduct/single_product_screen.dart';
import 'package:ohaomob/icpainclass/svicon.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _loadProducts = [];
  bool isLoading = false;

  // The function that fetches data from the API

  @override
  void initState() {
    // TODO: implement initState
    _fetchData();
    super.initState();
  }

  _fetchData() async {
    setState(() {
      isLoading = true;
    });
    var url = "https://dummyjson.com/products?limit=10&skip=10";
    var response = await http.get(Uri.parse(url));
    // print(response.body);
    if (response.statusCode == 200) {
      var items = json.decode(response.body);
      setState(() {
        _loadProducts = items['products'];
        isLoading = false;
      });
    } else {
      _loadProducts = [];
      isLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: Center(
                child: Text(
                  'OHZAO',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QrCodeScreen()));
                    },
                    icon: Icon(Icons.qr_code_scanner_outlined)),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationScreen()));
                    },
                    icon: Icon(Icons.notifications)),
              ],
              title: InkWell(
                borderRadius: BorderRadius.circular(20.0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchScreen()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(91, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Text(
                        'Search',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
              ),
              pinned: true,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: <StretchMode>[
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle,
                ],
              ),
            ),
          ];
        },
        body: RefreshIndicator(
          onRefresh: () async {
            _fetchData();
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(26, 156, 156, 156),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: CarouselSlider(
                                options: CarouselOptions(
                                    aspectRatio: 0.0,
                                    height:
                                        MediaQuery.of(context).size.width * 0.3,
                                    autoPlay: true,
                                    viewportFraction: 1.0),
                                items: [1, 2, 3, 4, 5].map((i) {
                                  return Builder(
                                    builder: (BuildContext context) {
                                      return Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 0.0),
                                          // decoration: BoxDecoration(color: Colors.amber),
                                          child: ClipRRect(
                                            child: Image.network(
                                              'https://lzd-img-global.slatic.net/g/gcp/lazada/0739b901-85ce-4a4e-a900-41f940a38f39_TH-1188-350.jpg_1188x350q80.jpg_.webp',
                                              fit: BoxFit.fill,
                                            ),
                                          ));
                                    },
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const GridViewMenuCateWgt(),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      children: <Widget>[
                        _loadProducts.isEmpty
                            ? Text('No Product')
                            : Column(
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Text('ລາຍການສິນຄ້າ'),
                                    ],
                                  ),
                                  StaggeredGrid.count(
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 4,
                                    crossAxisSpacing: 4,
                                    children: [
                                      for (int i = 0;
                                          i < _loadProducts.length;
                                          i++)
                                        ProductWidget(
                                          title: _loadProducts[i]['title'],
                                          thumnail: _loadProducts[i]
                                              ['thumbnail'],
                                          price: _loadProducts[i]['price'],
                                          discount: _loadProducts[i]
                                              ['discountPercentage'],
                                          onPressed: () {},
                                        )
                                    ],
                                  )
                                ],
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget(
      {Key? key,
      this.title,
      this.thumnail,
      required this.price,
      required this.discount,
      required this.onPressed})
      : super(key: key);
  final String? title;
  final String? thumnail;
  final int price;
  final double discount;
  // final ProductModel model;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SingleProductScreen()))
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.width * 0.40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: thumnail != null
                    ? Image.network(
                        thumnail!,
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width * 0.28,
                        fit: BoxFit.cover,
                      )
                    : Text(''),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                child: title != null
                    ? Text(
                        title!,
                        overflow: TextOverflow.fade,
                        maxLines: 2,
                        softWrap: false,
                      )
                    : Text(''),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                child: Column(
                  children: [
                    Text(
                      '${(price - discount)} USD',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                    Text(
                      '${price} USD',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                          color: Colors.grey[400],
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                child: Text(
                  'Sale 100',
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
