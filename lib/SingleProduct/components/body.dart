import 'package:flutter/material.dart';
import 'package:ohaomob/constrants.dart';
// import 'package:furniture_app/constants.dart';
// import 'package:furniture_app/models/product.dart';

import 'chat_and_add_to_cart.dart';
import 'list_of_colors.dart';
import 'product_image.dart';

class Body extends StatelessWidget {
  // final Product product;

  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // it provide us total height and width
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small devices
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: 'tage',
                      child: ProductPoster(
                        size: size,
                        image:
                            'https://lzd-img-global.slatic.net/g/p/3279c6aa8941c21672f537a2848a3b5f.jpg_200x200q80.jpg_.webp',
                      ),
                    ),
                  ),
                  // ListOfColors(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      'sdafasdf',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    '\$d',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      '',
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                ],
              ),
            ),
            // ChatAndAddToCart(),
          ],
        ),
      ),
    );
  }
}
