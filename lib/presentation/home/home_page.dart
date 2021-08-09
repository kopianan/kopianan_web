import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.size.height,
        color: Color(0xFFE6C302),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Kopianan",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Row(
                    children: [
                      HeaderMenu(menu: "Home"),
                      SizedBox(width: 40),
                      HeaderMenu(menu: "About"),
                      SizedBox(width: 40),
                      HeaderMenu(menu: "Portofolio"),
                      SizedBox(width: 40),
                      HeaderMenu(menu: "Contact"),
                      SizedBox(width: 40),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Yo! I'm Kopianan,\nI make Apps",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Let's collaborate on your next apps.",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 40),
                        Row(
                          children: [
                            MaterialButton(
                              height: 40,
                              onPressed: () {},
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Text("Button",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            SizedBox(width: 40),
                            MaterialButton(
                              height: 40,
                              onPressed: () {},
                              elevation: 0,
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                      width: 2, color: Colors.black)),
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Text("Button",
                                  style: TextStyle(color: Colors.black)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Placeholder())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    Key? key,
    required this.menu,
  }) : super(key: key);
  final String menu;
  @override
  Widget build(BuildContext context) {
    return Text(
      this.menu,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black54,
      ),
    );
  }
}
