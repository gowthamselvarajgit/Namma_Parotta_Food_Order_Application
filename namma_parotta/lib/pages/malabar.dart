import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:namma_parotta/models/food.dart';
import 'package:namma_parotta/models/shop.dart';
import 'package:namma_parotta/themes/colors.dart';
import 'package:namma_parotta/components/button.dart';
import 'package:provider/provider.dart';

class Malabar extends StatefulWidget {
  final Food food;
  const Malabar({super.key, required this.food});

  @override
  State<Malabar> createState() => _Malabar();
}

class _Malabar extends State<Malabar> {
  //quantity

  int quantityCount = 0;

  //decrement quantity
  void decrementQuantity() {
    setState(() {
      if (quantityCount > 0) {
        quantityCount--;
      }
    });
  }

  //increment quantity

  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  //add to cart

  void addToCart() {
    //only add to cart if there is something in the cart
    if (quantityCount > 0) {
      //get access to shop
      final shop = context.read<Shop>();

      //add to cart
      shop.addToCart(widget.food, quantityCount);

      //let the user know it was successfull
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: primaryColor,
          content: const Text(
            'Successfully added to Cart',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          actions: [
            //okay button
            IconButton(
              onPressed: () {
                //pop once to remove dialog box

                Navigator.pop(context);

                //pop again to go previous screen
                Navigator.pop(context);
              },
              icon: Icon(Icons.done, color: Colors.white),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  //image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'lib/images/malabar parotta.png',
                      height: 200,
                    ),
                  ),

                  const SizedBox(height: 25),

                  //rating

                  Row(
                    children: [
                      //star icon
                      Icon(Icons.star, color: Colors.yellow[800]),

                      const SizedBox(width: 10),

                      //rating

                      Text(
                        '4.7',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  //heading

                  Text(
                    'Malabar Parotta',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(height: 25),

                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "Malabar Parotta, also known as Kerala Parotta, is a popular South Indian flatbread that originated in the Malabar region of Kerala, India. This flaky and layered bread is a staple in Malabar cuisine and is enjoyed with various side dishes, such as curries, gravies, and accompaniments.",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      height: 2,
                    ),
                  )
                ],
              ),
            ),
          ),

          // price + quantity + add to cart buttom
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                //price+quantity

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //price
                    const Text(
                      "₹150",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    //quantity

                    Row(
                      children: [
                        //minus button

                        Container(
                          decoration: BoxDecoration(
                              color: secondarycolor, shape: BoxShape.circle),
                          child: IconButton(
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            onPressed: decrementQuantity,
                          ),
                        ),

                        //quantity count

                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              quantityCount.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),

                        //plus button

                        Container(
                          decoration: BoxDecoration(
                              color: secondarycolor, shape: BoxShape.circle),
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: incrementQuantity,
                          ),
                        )
                      ],
                    )
                  ],
                ),

                const SizedBox(height: 25),

                //add to cart button
                MyButton(text: "Add To Cart", onTap: addToCart),
              ],
            ),
          )
        ],
      ),
    );
  }
}
