import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:namma_parotta/components/button.dart';
import 'package:namma_parotta/models/shop.dart';
import 'package:namma_parotta/pages/food_details_page.dart';
import 'package:namma_parotta/themes/colors.dart';
import 'package:namma_parotta/components/food_title.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //navigate to food item details page

  void navigateToFoodDetails(int index) {
    //get the shop and its menu
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsPage(
          food: foodMenu[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //get the shop and its menu
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.grey[800],
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          // color: Colors.grey,
        ),
        title: Text(
          'Namma Parotta',
          style: GoogleFonts.playfairDisplay(),
        ),
        centerTitle: true,
        actions: [
          //cart button
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cartpage');
            },
            icon: const Icon(
              Icons.shopping_cart,
              // color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //promo banner
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    //promo message
                    Text(
                      "Today's special",
                      style: GoogleFonts.playfairDisplay(
                        color: const Color.fromARGB(255, 218, 219, 189),
                        fontSize: 20,
                      ),
                    ),

                    const SizedBox(height: 15),

                    //redeem button
                    Padding(
                      padding: const EdgeInsets.all(0.7),
                      child: MyButton(
                        text: "Malabar",
                        onTap: () {
                          Navigator.pushNamed(context, '/todayspecial');
                        },
                      ),
                    )
                  ],
                ),

                //image
                Image.asset(
                  'lib/images/many_parotta.png',
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Search",
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          //menu list

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food Menu",
              style: GoogleFonts.merriweather(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: foodMenu.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => FoodTitle(
                food: foodMenu[index],
                onTap: () => navigateToFoodDetails(index),
              ),
            ),
          ),

          const SizedBox(height: 25),
          //popular food
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(right: 25, left: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //image
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'lib/images/kizhi parotta.png',
                        height: 60,
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    const SizedBox(width: 10),

                    //name and price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //name
                        Text(
                          'Kizhi Parotta',
                          style: GoogleFonts.merriweather(fontSize: 18),
                        ),

                        const SizedBox(height: 10),

                        //price
                        Text(
                          '₹150',
                          style: TextStyle(color: Colors.grey[700]),
                        )
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.only(right: 35),
                    ),
                    // Heart Icons
                    // const Icon(
                    //   Icons.favorite_outline,
                    //   color: Colors.grey,
                    //   size: 28,
                    // ),
                    const LikeButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
