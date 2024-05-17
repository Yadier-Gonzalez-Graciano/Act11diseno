import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:gonzalez/util/my_button.dart';
import 'package:gonzalez/util/my_list_tile.dart';
import 'package:gonzalez/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff9bd2ec),
        child: Icon(
          Icons.monetization_on_outlined,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Color(0xff9bd2ec),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Mis",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " Tarjetas",
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 999999,
                      cardNumber: 9999,
                      expiryMonth: 4,
                      expiryYear: 28,
                      color: Color(0xff6cace8),
                    ),
                    MyCard(
                      balance: 22222,
                      cardNumber: 5678,
                      expiryMonth: 2,
                      expiryYear: 28,
                      color: Color(0xfff288d3),
                    ),
                    MyCard(
                      balance: 11111,
                      cardNumber: 1246,
                      expiryMonth: 7,
                      expiryYear: 28,
                      color: Color(0xfff4f287),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      iconImagePath: "lib/icons/money-transfer.png",
                      buttontext: "Transaferir",
                    ),
                    MyButton(
                      iconImagePath: "lib/icons/atm-card.png",
                      buttontext: "Pagar",
                    ),
                    MyButton(
                      iconImagePath: "lib/icons/bill.png",
                      buttontext: "Recibos",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MyListTile(
                      iconImagePath: "lib/icons/rising.png",
                      titleName: "Pagos Monetarios",
                      titleSubTitle: "Pagos e impuestos",
                    ),
                    MyListTile(
                      iconImagePath: "lib/icons/money.png",
                      titleName: "Transferencias",
                      titleSubTitle: "Consulta tus transferencias",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
