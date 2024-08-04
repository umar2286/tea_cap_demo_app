import 'package:flutter/material.dart';

class ContainerClass extends StatefulWidget {
  const ContainerClass({
    super.key,
    required this.image,
    required this.title,
    required this.detail,
    required this.price,
    required this.star,
  });
  final String title;
  final String detail;
  final int price;
  final double star;
  final AssetImage image;

  @override
  State<ContainerClass> createState() => _ContainerClassState();
}

class _ContainerClassState extends State<ContainerClass> {
  bool star = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 160,
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), // Radius of the border
          color: const Color.fromARGB(255, 234, 234, 234), // Background color
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 170,
              left: 110,
              child: GestureDetector(
                onTap: () {},
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(236, 200, 60, 17),
                          boxShadow: []),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'platyWrite',
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.detail,
                    style: TextStyle(
                        color: Colors.deepOrange.withOpacity(0.5),
                        fontSize: 14,
                        fontFamily: 'platyWrite',
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Rs. ${widget.price}',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'exo',
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            star = !star;
                          });
                        },
                        child: Icon(star ? Icons.star_border : Icons.star,
                            color: Colors.orange, size: 20),
                      ),
                      Text(
                        '${widget.star}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'platyWrite',
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: -50,
              left: 35,
              child: CircleAvatar(
                backgroundImage: widget.image,
                radius: 45,
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
