import 'package:flutter/material.dart';
import 'package:nafe_coffe/screens/home.dart';

class Checkout extends StatefulWidget {
  final double total;

  const Checkout({super.key, required this.total});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 247),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 247),
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Row(
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
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30),
                Image.asset('assets/icons/done.png', height: 200),
                SizedBox(height: 30),
                Text(
                  'Payment Successful',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF4E342E),
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Your coffee is being prepared with love.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF4E342E),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 170,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Order ID',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF4E342E),
                            ),
                          ),
                          Text(
                            '#NAFE-1308',
                            style: TextStyle(
                              color: Color(0xFF4E342E),
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 15),
                      Divider(color: Colors.grey.shade200, height: 1),

                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.schedule,
                                color: Color(0xFF4E342E),
                                size: 16,
                              ),
                              SizedBox(width: 3),
                              Text(
                                'Estimated Time',
                                style: TextStyle(
                                  color: Color(0xFF4E342E),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '15-20 mins',
                            style: TextStyle(
                              color: Color(0xFF4E342E),
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 15),
                      Divider(color: Colors.grey.shade200, height: 1),

                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Paid',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF4E342E),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '\$${widget.total.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF4E342E),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color(0xFF8D6E63),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),

                    child: Text(
                      'Track My Order',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      side: BorderSide(color: Color(0xFF8D6E63), width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'Back to Home',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF4E342E),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
