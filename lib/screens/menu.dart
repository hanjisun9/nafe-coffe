import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;

  final List<String> categories = ["All", "Coffee", "Non Coffee"];
  final List<Map<String, dynamic>> coffee = [
    {
      'name': 'Americano',
      'price': 32,
      'image': 'assets/images/americano.jpg',
      'desc': 'Smooth espresso with a clean finish.',
      'isFavorite': false,
    },
    {
      'name': 'Dry Cappucino',
      'price': 23,
      'image': 'assets/images/dryCap.jpg',
      'desc': 'Creamy espresso with velvety foam.',
      'isFavorite': false,
    },
    {
      'name': 'Ice Red Velvet',
      'price': 22,
      'image': 'assets/images/red.jpg',
      'desc': 'Sweet red velvet with creamy milk.',
      'isFavorite': false,
    },
    {
      'name': 'Strawberry Latte',
      'price': 32,
      'image': 'assets/images/strawlat.jpg',
      'desc': 'Sweet strawberry with creamy latte.',
      'isFavorite': false,
    },
    {
      'name': 'Taro Coffe',
      'price': 39,
      'image': 'assets/images/taro.jpg',
      'desc': 'Creamy taro with rich espresso.',
      'isFavorite': false,
    },
    {
      'name': 'Vanilla Latte',
      'price': 35,
      'image': 'assets/images/vanilla.jpg',
      'desc': 'Creamy latte with sweet vanilla.',
      'isFavorite': false,
    },
        {
      'name': 'Virtuoso Latte',
      'price': 25,
      'image': 'assets/images/latte.jpg',
      'desc': 'Smooth espresso with silky steamed milk.',
      'isFavorite': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 247),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Text(
                'Coffee Menu',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 35,
                  color: Color(0xFF4E342E),
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 3),
              Text(
                'Carefully brewed, crafted for every coffee moment.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 20),
              Row(
                children: List.generate(categories.length, (index) {
                  final isSelected = selectedIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? const Color(0xFF4E342E)
                            : const Color(0xFFF3EDE5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: isSelected
                              ? Colors.white
                              : const Color(0xFF4E342E),
                          fontWeight: isSelected
                              ? FontWeight.w600
                              : FontWeight.w400,
                        ),
                      ),
                    ),
                  );
                }),
              ),

              SizedBox(height: 25),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: coffee.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 220,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    final item = coffee[index];
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 180,
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
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20),
                                  ),
                                  child: Image.asset(
                                    item['image'],
                                    height: 120,
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
                                        coffee[index]['isFavorite'] =
                                            !coffee[index]['isFavorite'];
                                      });
                                    },
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.favorite,
                                        size: 18,
                                        color: item['isFavorite']
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['name'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    item['desc'],
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        ('\$${item['price']}'),
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFFD4AF37),
                                        ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 15,
                                          vertical: 5,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF8D6E63),
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                        child: Text(
                                          '+',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white,
                                          ),
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
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
