import 'package:flutter/material.dart';
import 'package:nafe_coffe/screens/menuDetail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> coffeeList = [
    {
      'name': 'Virtuoso Latte',
      'price': 25,
      'image': 'assets/images/latte.jpg',
      'desc': 'Smooth espresso with silky steamed milk.',
      'isFavorite': false,
      'rate': 4.9,
      'descrip':
          'Virtuoso Latte is our signature handcrafted coffee, combining premium espresso with silky steamed milk to create a smooth and creamy experience. Finished with delicate latte art, every cup delivers warmth, comfort, and a perfectly balanced flavor.',
    },
    {
      'name': 'Americano',
      'price': 32,
      'image': 'assets/images/americano.jpg',
      'desc': 'Smooth espresso with a clean finish.',
      'isFavorite': false,
      'rate': 4.5,
      'descrip':
          'Freshly brewed espresso combined with water to create a balanced coffee with a smooth body, rich aroma, and clean finish. A timeless choice for everyday coffee lovers.',
    },
    {
      'name': 'Dry Cappucino',
      'price': 23,
      'image': 'assets/images/dryCap.jpg',
      'desc': 'Creamy espresso with velvety foam.',
      'isFavorite': false,
      'rate': 4.4,
      'descrip':
          'Crafted with rich espresso, steamed milk, and a thick layer of velvety milk foam. Cappuccino offers a smooth texture and balanced coffee flavor in every sip.',
    },
    {
      'name': 'Vanilla Latte',
      'price': 35,
      'image': 'assets/images/vanilla.jpg',
      'desc': 'Creamy latte with sweet vanilla.',
      'isFavorite': false,
      'rate': 4.7,
      'descrip':
          'A delightful combination of rich espresso, steamed milk, and smooth vanilla syrup. Sweet, creamy, and comforting, it`s the perfect drink for those who enjoy a gentle coffee flavor.',
    },
    {
      'name': 'Taro Coffe',
      'price': 39,
      'image': 'assets/images/taro.jpg',
      'desc': 'Creamy taro with rich espresso.',
      'isFavorite': false,
      'rate': 4.8,
      'descrip':
          'A unique fusion of aromatic espresso and creamy taro, creating a smooth texture with a naturally sweet finish. A perfect choice for adventurous coffee lovers looking for something different.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 247),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                SizedBox(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                              'https://i.pinimg.com/736x/02/c2/5d/02c25d44b20f9d94caaf24c21c49861d.jpg',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.notifications,
                              color: Color(0xFF4E342E),
                              size: 20,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/icons/logo.png', width: 25),
                          SizedBox(width: 5),
                          Text(
                            'Nana Coffee',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Color(0xFF4E342E),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Find your favorite coffee...',
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black12, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xFFD4AF37),
                        width: 1,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 25),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF8D6E63),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Seasonal Special',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Coffe Latte',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 40,
                                  ),
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  width: 120,
                                  height: 35,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFD4AF37),
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: Text(
                                      'View Now',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Image.asset('assets/images/lattee.png', width: 100),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Coffee',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF4E342E),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFD4AF37),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: coffeeList.length,
                    itemBuilder: (context, index) {
                      final coffee = coffeeList[index];
                      return coffeeCard(coffee, index);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget coffeeCard(Map<String, dynamic> coffee, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MenuDetail(
              item: coffee,
              name: coffee['name'],
              price: coffee['price'],
              image: coffee['image'],
              desc: coffee['desc'],
              descrip: coffee['descrip'],
              rate: coffee['rate'],
            ),
          ),
        );
      },
      child: Container(
        width: 168,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  child: Image.asset(
                    coffee['image'],
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        coffeeList[index]['isFavorite'] =
                            !coffeeList[index]['isFavorite'];
                      });
                    },
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite,
                        size: 18,
                        color: coffee['isFavorite'] ? Colors.red : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffee['name'],
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    coffee['desc'],
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ('\$${coffee['price']}'),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFD4AF37),
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Added to cart")),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF8D6E63),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(Icons.add, color: Colors.white, size: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
