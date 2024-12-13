import 'package:flutter/material.dart';
import 'package:movie_ticket_booking/screens/booking_screen.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  List movies = [
    "Ant Man 3",
    "Aquaman 2",
    "GOTG Vol 3",
    "Shazam 2"
  ];

  List movies2 = [
    "Shazam 2",
    "GOTG Vol 3",
    "Ant Man 3",
    "Aquaman 2",
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.sort,
          size: 32,
          color: Colors.white,
        ),
        elevation: 0,
        title: const Text(
          "DP Cineplex",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  size: 28,
                  color: Colors.white,
                ),
                Icon(
                  Icons.filter_alt_outlined,
                  size: 28,
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Playing Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(
                        color: Color(0XFFF7D300),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 390,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) => 
                                  BookingScreen(movie: movies[index]),
                                  ));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "images/${movies[index]}.jpg",
                              height: 280,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movies[index],
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0XFFF7D300),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0XFFF7D300),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 4),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.access_time_rounded,
                                    color: Colors.white60,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "2h 30m",
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color(0XFF2F3236),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "Coming Soon",
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "View All",
                      style:TextStyle(
                        color: Color(0XFFF7D300),
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "images/${movies2[index]}.jpg",
                              fit:BoxFit.cover,
                              height: 200,
                              width: 180,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movies2[index],
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
