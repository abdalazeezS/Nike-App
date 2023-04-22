import 'package:flutter/material.dart';
import 'package:nike_design/data/data.dart';
import 'package:nike_design/screens/shoe_details.dart';

class ShoeCard extends StatelessWidget {
  const ShoeCard({Key? key, required this.shoe}) : super(key: key);
  final ShoeDataModel shoe;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return ShoeDetails(shoe: shoe);
        }));
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        width: double.infinity,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            Hero(tag: "tag",child: Image.asset(shoe.image)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    shoe.name,
                    style: const TextStyle(
                        fontFamily: "Poppins", fontWeight: FontWeight.w600),
                  ),
                  Text(
                    shoe.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    softWrap: true,
                    style: const TextStyle(color: Colors.black38),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(shoe.price),
                      InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: () {},
                        child: Ink(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black87),
                          child: const Text(
                            'Buy',
                            style: TextStyle(
                              color: Colors.white,
                            ),
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
  }
}
