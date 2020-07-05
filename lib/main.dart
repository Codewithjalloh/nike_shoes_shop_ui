import 'package:flutter/material.dart';
import 'package:shopui/UI/custom_products_card.dart';
import 'package:shopui/Util/customised_icons.dart';

void main() => runApp(MaterialApp(
  home: ShopApp(),
  debugShowCheckedModeBanner: false,
));


class ShopApp extends StatefulWidget {
  @override
  _ShopAppState createState() => _ShopAppState();
}

class _ShopAppState extends State<ShopApp> {
  // declare current index to 0
  int _currentIndex = 0;

  // declare bottom navigation icon list
  List<Widget> bottomNavigationIconList = [
    // nike logo icon with size
    Image.asset(
      "assets/home_icon.png",
      width: 35.0,
      height: 35.0,
    ),
    // for the customised icon search
    Icon(
      CustomisedIcons.search,
      size: 32.0,
    ),
    // for the favourite icon
    Icon(
      CustomisedIcons.favourite,
      size: 32.0,
    ),
    // car icon with size
    Icon(CustomisedIcons.cart, size: 32.0),
    // plato image botton nav with with width and height
    Image.asset("assets/Plato.png", width: 35.0, height: 35.0,)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // background colour set

      backgroundColor: Colors.white,
      //backgroundColor: Colors.black,

      //Creates a box in which a single widget can be scrolled.
      body: SingleChildScrollView(
        // add padding
        child: Padding(
          // add egdge insects symmetic both vertical and horizontal
          padding: EdgeInsets.symmetric(
              horizontal: 50.0, vertical: 30.0
          ),
          child: Column(
            children: [
              Align(
                // align column children center
                alignment: Alignment.center,
                child: Padding(
                    padding: EdgeInsets.only(
                        top: 30.0, bottom: 25.0
                    ),
                    // image of nike shoee 1 with width and height
                    child: Image.asset("assets/nikeshoe_icon.png",
                      width: 62.0, height: 43.0,)),
              ),
              CustomProductsCard(
                  0xFFffbd69, "assets/nike_shoes_2.png",
                  "Air Nike 1", "\£109.00", "\£79.99"
              ),
              SizedBox(height: 32.0),
              CustomProductsCard(0xFF7f78d2, "assets/nike_shoes_1.png",
                  "Air Nike 2", "\£109.99", "\£69.9"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        
        height: 70.0,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12.withOpacity(0.065),
                  offset: Offset(0.0, -3.0),
                  blurRadius: 10.0)
            ]),

        // row
        child: Row(
          children: bottomNavigationIconList.map((item) {
            var index = bottomNavigationIconList.indexOf(item);
            return Expanded(
              // tap gesture for the
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                child: bottomNavigationItem(
                    item, index == _currentIndex),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

// bottom navigation item function
bottomNavigationItem(Widget item, bool isSelected) => Container(
    decoration: BoxDecoration(
      boxShadow: isSelected ?
          [BoxShadow(
            color: Colors.black12.withOpacity(0.02),
            offset: Offset(0.0, 5.0),
            blurRadius: 10.0),
          ]
          : []),
    child: item,
  );