import 'package:flutter/material.dart';

import 'food.dart';

class Shop extends ChangeNotifier {
  //food menu

  final List<Food> _foodMenu = [
    //ajwain parotta"
    Food(
        name: "Ajwain Parotta",
        price: "30",
        imagepath: "lib/images/ajwain parotta.png",
        rating: "4.9",
        description:
            "Ajwain paratha is a fragrant, layered flatbread variant. These flaky parathas are made with unleavened whole wheat dough and flavored with carom seeds (ajwain). They are easy to make and pairs well with many Indian sides. Ajwain is also known as carom seeds or thymol seeds or bishops weed in English and omam or owa or ajmo in some regional Indian languages."),

    //allo parotta
    Food(
        name: "Allo Parotta",
        price: "30",
        imagepath: "lib/images/allo parotta.png",
        rating: "4.8",
        description:
            "It is made using unleavened dough rolled with a mixture of mashed potato and spices (amchur, garam masala) which is cooked on a hot tawa with butter or ghee. Aloo paratha is usually served with butter, chutney, curd, or Indian pickles."),

    //dall parotta
    Food(
        name: "Dall Parotta",
        price: "50",
        imagepath: "lib/images/dall parotta.png",
        rating: "4.8",
        description:
            "dall paratha is a stuffed paratha made with unleavened whole wheat dough, chana dal (bengal gram) and spices. This variation of stuffed paratha with lentils is popular in Punjabi homes and usually made for breakfast. Enjoy this tasty savory chana dal ka paratha with yogurt, pickles and homemade butter. I am sharing my family recipe which we have been making for decades and we all love it!"),

    //Gobi parotta
    Food(
        name: "Gobi Parotta",
        price: "50",
        imagepath: "lib/images/Gobi parotta.png",
        rating: "4.8",
        description:
            "This delicious Gobi Paratha is a recipe that you will make again and again. Also known as Cauliflower paratha, these unleavened whole wheat flatbreads are stuffed with a savory, spiced grated cauliflower filling. Being one of the most popular Punjabi paratha recipes, Gobi paratha is loved by many folks. There are so many ways to make these flatbreads, but here I show you an authentic heirloom Gobi paratha recipe that is much loved in my family."),

    //kizhi parotta
    Food(
        name: "Kizhi Parotta",
        price: "50",
        imagepath: "lib/images/kizhi parotta.png",
        rating: "4.8",
        description:
            "Kizhi Parotta, is a Malabar parotta that is laced with hot, vegetable-chicken-based masala and placed inside a banana leaf before it is steamed. To make the paratha, a masala is prepared in advance. If it is a loaded Kizhi paratha, chopped onions, tomatoes, chillies are tossed and shallow-fried on a hot tawa."),

    //kothu parotta
    Food(
        name: "kothu Parotta",
        price: "50",
        imagepath: "lib/images/kothu parotta.png",
        rating: "4.8",
        description:
            "Kothu Parotta is a popular and flavorful South Indian street food dish that originated in the Tamil Nadu region of India. The dish is known for its unique preparation method, where shredded or chopped parottas (layered flatbread) are stir-fried with a mixture of spices, vegetables, and often meat or eggs. The name Kothu literally translates to minced or chopped, reflecting the preparation method."),

    //malabar parotta
    Food(
        name: "Malabar Parotta",
        price: "50",
        imagepath: "lib/images/malabar parotta.png",
        rating: "4.8",
        description:
            "Malabar Parotta, also known as Kerala Parotta, is a popular South Indian flatbread that originated in the Malabar region of Kerala, India. This flaky and layered bread is a staple in Malabar cuisine and is enjoyed with various side dishes, such as curries, gravies, and accompaniments."),

    //matar parotta
    Food(
        name: "Matar Parotta",
        price: "50",
        imagepath: "lib/images/matar parotta.png",
        rating: "4.8",
        description:
            "Matar Parotta typically refers to a type of Indian flatbread that is infused with green peas (matar in Hindi). Parotta, in general, is a layered flatbread that originated in South India, and it has various regional variations and creative adaptations. Matar Parotta specifically incorporates green peas into the dough or as a filling, adding a delightful sweetness and texture to the bread"),

    //methi parotta
    Food(
        name: "Methi Parotta",
        price: "50",
        imagepath: "lib/images/methi parotta.png",
        rating: "4.8",
        description:
            "Methi Parotta refers to a type of Indian flatbread that incorporates fenugreek leaves, known as methi in Hindi. Fenugreek leaves have a distinct, slightly bitter flavor that adds a unique taste to the parotta. This dish is popular in various regions of India and is often enjoyed with side dishes such as curries, gravies, or yogurt."),

    //mooli parotta
    Food(
        name: "Mooli Parotta",
        price: "50",
        imagepath: "lib/images/molli parotta.png",
        rating: "4.8",
        description:
            "Mooli paratha is a popular Punjabi whole wheat flatbread made with unleavened dough and filled with spiced grated radish stuffing. They are often made for breakfast or lunch and make for a filling and tasty meal accompanies with pickle, curd (yogurt) or white butter."),

    //mughlai parotta
    Food(
        name: "Mughlai parotta",
        price: "50",
        imagepath: "lib/images/mughlai parotta.png",
        rating: "4.8",
        description:
            "Mughlai Paratha, also known as Mughlai Parotta, is a rich and indulgent stuffed flatbread that belongs to the Mughlai cuisine, influenced by the culinary traditions of the Mughal Empire in India. This dish is a delicious example of the fusion of Persian and Indian culinary styles."),

    //paneer parotta
    Food(
        name: "Paneer Parotta",
        price: "50",
        imagepath: "lib/images/paneer parotta.png",
        rating: "4.8",
        description:
            "Paneer Parotta is a delicious Indian flatbread that incorporates paneer (Indian cottage cheese) into the dough or as a stuffing. This variation adds a rich and creamy texture to the parotta, making it a flavorful and satisfying dish."),

    //porucha paratta
    Food(
        name: "Porucha Parotta",
        price: "50",
        imagepath: "lib/images/porucha parotta.png",
        rating: "4.8",
        description:
            "Poricha parotta/ Virudhunagar parotta is a super flaky, crispy, lightly sweet and delicious deep fried parotta often served with salna both veg/ chicken."),

    //pyaz parotta
    Food(
        name: "Pyaz Parotta",
        price: "50",
        imagepath: "lib/images/pyaz Parotta.png",
        rating: "4.8",
        description:
            "Pyaz Parotta is a type of Indian flatbread that features onions (pyaz in Hindi) as a significant ingredient. This parotta is known for its savory and flavorful taste, with the added sweetness and texture of caramelized onions."),

    //sattu parotta
    Food(
        name: "Sattu Parotta",
        price: "50",
        imagepath: "lib/images/sattu parotta.png",
        rating: "4.8",
        description:
            "Sattu Parotta is a type of Indian flatbread that features sattu as a significant ingredient. Sattu is a traditional flour in Indian cuisine made from roasted gram (chana) or Bengal gram (chickpea) and is commonly used in various culinary preparations. Sattu is known for its nutritional content and is often used in regional dishes for its unique flavor and health benefits."),

    //spinach parotta
    Food(
        name: "Spinach Parotta",
        price: "50",
        imagepath: "lib/images/spinach parotta.png",
        rating: "4.8",
        description:
            "Spinach Parotta is a variation of the traditional Indian flatbread that incorporates spinach into the dough, adding both color and nutritional value to the parotta. This type of parotta is often appreciated for its vibrant green hue and the earthy flavor imparted by the spinach. "),

    //veechu parotta
    Food(
        name: "Veechu Parotta",
        price: "50",
        imagepath: "lib/images/veechu parotta.png",
        rating: "4.8",
        description:
            "Veechu Parotta Recipe is a very famous bread in Sri Lanka. The bread/parotta is mainly made from maida or all purpose flour but in this recipe we have used a combination of maid and whole wheat flour to make it healthier. It is kneaded to a very soft and sticky dough which is then rolled and pressed using your hand to form a thin dough that is then folded to create many air pockets."),
  ];

  //customer cart
  List<Food> _cart = [];

  //getter method

  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
