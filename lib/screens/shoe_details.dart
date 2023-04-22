import 'package:flutter/material.dart';
import 'package:nike_design/data/data.dart';

class ShoeDetails extends StatelessWidget {
  const ShoeDetails({Key? key, required this.shoe}) : super(key: key);
  final ShoeDataModel shoe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   iconTheme: const IconThemeData(
      //     color: Colors.black87,
      //   ),
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                      child: Hero(
                        tag: "tag",
                        child: Image.asset(
                          shoe.image,
                          width: double.infinity,
                          height: 300,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 16,
                      child: IconButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  shoe.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  shoe.description,
                  style: const TextStyle(
                    height: 1.5,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 16),
                Container(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const ElevatedButton(
                          onPressed: null,
                          child: Text('-'),
                        ),
                        const Text('1'),
                        ElevatedButton(onPressed: () {}, child: Text('+')),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 160),
                ElevatedButton(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.add_shopping_cart_outlined),
                        Text(
                          'Add To Cart',
                          style: TextStyle(),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
