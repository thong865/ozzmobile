import 'package:flutter/material.dart';

class MeRememberWidget extends StatelessWidget {
  const MeRememberWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF5F3F3),
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(children: [
          Positioned(
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.fingerprint_outlined),
            ),
          ),
          Row(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 20,
                  child: Image.asset('assets/images/ohzao-logo.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('laithong Singhalat'),
                    Text('020555XXXX46'),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
