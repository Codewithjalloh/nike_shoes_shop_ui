import 'package:flutter/material.dart';
import 'package:shopui/Util/customised_icons.dart';

// Customised Product Card Class
class CustomProductsCard extends StatelessWidget {

  // declared properties
  int cardColor;
  String imgUrl;
  String title;
  String previousPrice;
  String price;

  // declared constructors
  CustomProductsCard(
      this.cardColor,
      this.imgUrl,
      this.title,
      this.previousPrice,
      this.price);


  @override
  Widget build(BuildContext context) {
    // container for the custom products card
    return Container(
      width: double.infinity,
      height: 320.0,
      decoration: BoxDecoration(
        color: Color(cardColor), 
        borderRadius: BorderRadius.circular(20.0), 
        border: Border.all(
          color: Colors.grey.withOpacity(.3), width: 2)),
      // colum

      child: Column(
        children: [
          // size box for division
          SizedBox(
            height: 8.0,
          ),
          // get the image url and set the width and height
          Image.asset(imgUrl, width: 281.0, height: 191.0,),
          // declare title with textstyle.
          Text(title, style: TextStyle(fontSize: 25.0, fontFamily: "Raleway"),),
          // size box division
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0
            ),

            // set the row for the icons
            child: Row(
              // main axis alignment space between
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // favourite icon
                IconButton(
                  icon: Icon(CustomisedIcons.favourite),
                  onPressed: () {
                    // TODO: Favourite Icon Clicked Do Something

                  },
                ),

                // column with all its children
                Column(
                  children: [
                    Text(previousPrice, style: TextStyle(
                      color: Color(0xFFfeb0ba),
                      fontSize: 16.0,
                      fontFamily:"Helvetica"),
                    ),
                    // size box divider
                    SizedBox(
                      height: 12.0,
                    ),
                    // price
                    Text(price, style: TextStyle(
                      fontSize: 28.0,
                      fontFamily: "Helvetica"
                    ),)
                  ],
                ),
                // cart icon
                IconButton(
                  icon: Icon(CustomisedIcons.cart),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
