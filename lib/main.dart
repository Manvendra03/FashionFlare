import 'package:fashion_app/data.dart';
import 'package:fashion_app/model/category.dart';
import 'package:fashion_app/model/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.menu),
            title: const Text(
              "Home",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            actions: const [
              Icon(
                Icons.search,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.shopping_bag,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Find your Style",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Be more beautiful with our suggestions :)",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 15,
                    width: double.infinity,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 222, 204),
                        borderRadius: BorderRadius.circular(20)),
                    height: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dec 16 - Dec 31",
                                style: GoogleFonts.raleway(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 224, 99, 32)),
                              ),
                              Text(
                                "30 % OFF",
                                style: GoogleFonts.raleway(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black),
                              ),
                              Text(
                                "Super Discount",
                                style: GoogleFonts.raleway(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 251, 109, 0),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  "Avail Now",
                                  style: GoogleFonts.raleway(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Image(
                            image: AssetImage(
                              "assets/ccp.png",
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      itemCount: categoryList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      categoryList[index].image,
                                    ),
                                    fit: BoxFit.fitHeight,
                                  ),
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                  // borderRadius: BorderRadius.circular(40)
                                ),
                              ),
                              Text(
                                categoryList[index].tittle,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade800),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                    width: double.infinity,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Trending",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Text(
                        "See all",
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            // fontWeight: FontWeight.w700,
                            color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 190,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: itemList1.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.19),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: const Offset(
                                          4, 5), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: NetworkImage(itemList1[index].image),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                height: 140,
                                width: 120,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                itemList1[index].name,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey.shade700),
                              ),
                              Text(
                                "₹ " + itemList1[index].price,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New Arrivals",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Text(
                        "See all",
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            // fontWeight: FontWeight.w700,
                            color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 190,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: itemList2.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.19),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: const Offset(
                                          4, 5), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: NetworkImage(itemList2[index].image),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                height: 140,
                                width: 120,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                itemList2[index].name,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey.shade700),
                              ),
                              Text(
                                "₹" + itemList2[index].price.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Most Popular",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Text(
                        "See all",
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            // fontWeight: FontWeight.w700,
                            color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 190,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: itemList3.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.19),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: const Offset(
                                          4, 5), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: NetworkImage(itemList3[index].image),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                height: 140,
                                width: 120,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                itemList3[index].name,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey.shade700),
                              ),
                              Text(
                                "₹ " + itemList3[index].price,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
