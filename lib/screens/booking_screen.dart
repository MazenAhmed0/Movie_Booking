import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BookingScreen extends StatelessWidget {
  String movie;
  BookingScreen({super.key, required this.movie});

  List formats = [
    "2D",
    "3D",
    "4DX",
    "IMAX",
  ];

  List days = [
    "S",
    "M",
    "T",
    "W",
    "T",
    "F",
    "S",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF212429),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.2,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("images/$movie.jpg",),
                  fit: BoxFit.cover,
                  opacity: 0.6
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Padding(
                    padding: const EdgeInsets.only(left:10, right: 10, top:40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 28,
                            ),
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.share_outlined,
                              color: Colors.white,
                              size: 25
                            ),
                            SizedBox(width: 10,),
                            Icon(
                              Icons.favorite_outline,
                              color: Colors.white,
                              size: 25
                            )
                        ],)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      movie,
                      style: const TextStyle(
                        color:Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  )
                ]
              )
            ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      const Text(
                        "Foramt:",
                        style: TextStyle(
                          color:Color(0xFFF7d300),
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                        ),
                        ),
                  SizedBox(
                    height: 25,
                    child:ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: formats.length,
                      itemBuilder:(context, index){
                        return InkWell(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: index == 1?const Color(0xfff7d300):const Color(0xff212429),
                              borderRadius: BorderRadius.circular(5),
                              border: index != 1?Border.all(color: Colors.white60):null,
                            ),
                            child:Center(
                              child: Text(
                                formats[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color:Colors.white70
                                ),
                              ),
                            )
                          ),
                        );
                      } ,
                    )
                  )
                ],),
                const SizedBox(height: 20,),
                const Text(
                  "Select Date",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color:Colors.white70
                  ),
                ),
                const SizedBox(height:8),
                SizedBox(
                  height:70,
                  child:ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder:(context, index){
                        return InkWell(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                              color: index == 1?const Color(0xfff7d300):null,
                              borderRadius: BorderRadius.circular(5),
                              // border: index != 1?Border.all(color: Colors.white60):null,
                            ),
                            child:Column(
                              children: [
                                Text(
                                  days[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color:Colors.white
                                  )
                                ),
                                Text(
                                  "${index + 8}",
                                  style:const TextStyle(
                                    fontSize: 17,
                                    color:Colors.white
                                  )
                                )
                              ],
                            ),
                          ),
                        );
                      } ,
                    ),
                ),
                const SizedBox(height: 10,),
                const Row(
                  children: [
                    Icon(Icons.location_on, color:Color(0xfff7d300)),
                    Text(
                      "City Complex Cinema",
                      style: TextStyle(
                        color:Colors.white70
                      )
                    ),
                    Spacer(),
                    Text(
                      "Hall A",
                      style: TextStyle(
                        color: Colors.white70
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15,),
                const Text(
                  "Select Time",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color:Colors.white70
                  ),
                ),
                const SizedBox(height:15),
                SizedBox(
                  height:30,
                  child:ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder:(context, index){
                        return InkWell(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: index == 1?const Color(0xfff7d300):Colors.white24,
                              borderRadius: BorderRadius.circular(5),
                              border: index != 1?Border.all(color: Colors.white30):null,
                            ),
                            child:Center(
                              child: Text(
                                "${index + 8} : 30 AM",
                                style:const TextStyle(
                                  fontSize: 17,
                                  color:Colors.white
                                )
                              ),
                            ),
                          ),
                        );
                      } ,
                    ),
                ),
              const SizedBox(height: 15,),
              const Row(
                  children: [
                    Icon(Icons.location_on, color:Color(0xfff7d300)),
                    Text(
                      "City Complex Cinema",
                      style: TextStyle(
                        color:Colors.white70
                      )
                    ),
                    Spacer(),
                    Text(
                      "Hall B",
                      style: TextStyle(
                        color: Colors.white70
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15,),
                const Text(
                  "Select Time",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color:Colors.white70
                  ),
                ),
                const SizedBox(height:15),
                SizedBox(
                  height:30,
                  child:ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder:(context, index){
                        return InkWell(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: index == 2?const Color(0xfff7d300):Colors.white24,
                              borderRadius: BorderRadius.circular(5),
                              border: index != 1?Border.all(color: Colors.white30):null,
                            ),
                            child:Center(
                              child: Text(
                                "${index + 12} : 30 AM",
                                style:const TextStyle(
                                  fontSize: 17,
                                  color:Colors.white
                                )
                              ),
                            ),
                          ),
                        );
                      } ,
                    ),
                ),
                const SizedBox(height: 20,),
                Material(
                  color: const Color(0xfff7d300).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: const Text(
                          "Book Ticket",
                          style:  TextStyle(
                            color:Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                )
            ],
          )
          ),
          ],
        ),
      ),
    );
  }


}