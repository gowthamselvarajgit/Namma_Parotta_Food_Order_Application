import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:namma_parotta/models/food.dart';

class FoodTitle extends StatelessWidget {
  final Food food;

  final void Function()? onTap;

  const FoodTitle({
    super.key,
    required this.food,
    required this.onTap,
  });

  get color => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(left: 25),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //images
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                food.imagepath,
                height: 140,
              ),
            ),

            //text

            Text(
              food.name,
              style: GoogleFonts.merriweather(fontSize: 13),
            ),

            //price + rating
            SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Price
                  Text(
                    'Price: \₹' + food.price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),

                  //rating

                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow[800]),
                      Text(
                        food.rating,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
