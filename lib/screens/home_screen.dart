import 'package:flutter/material.dart';
import 'package:nike_design/constants/constants.dart';
import 'package:nike_design/data/data.dart';
import 'package:nike_design/widgets/filter_icon_button.dart';
import 'package:nike_design/widgets/shoe_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _tags = [
    'All',
    'Shoes',
    'Caps',
    'Bags',
    'Clothing',
  ];
  int selectedIndex = 0;

  Widget _buildTag(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: selectedIndex == index
              ? AppColor.secondaryColor
              : Colors.transparent,
        ),
        child: Text(
          _tags[index],
          style: TextStyle(
            color: selectedIndex == index ? Colors.white70 : Colors.grey,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextTheme contextTextTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Nike Collections',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 30,
                ),
              ),
              const Text(
                'The Best of Bike, all in one place',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          filled: true,
                          fillColor: Colors.black12,
                          border: InputBorder.none,
                          label: Text('Search'),
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  FilterIconButton(
                    radius: 15,
                    splashColor: Colors.grey,
                    onTap: () {},
                    backgroundColor: Colors.black12,
                    child: Image.asset("assets/icons/filter.png"),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _tags
                    .asMap()
                    .entries
                    .map((MapEntry m) => _buildTag(m.key))
                    .toList(),
              ),
              const SizedBox(height: 16),
              ListView.builder(
                  itemCount: shoeDataModel.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ShoeCard(shoe: shoeDataModel[index]);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
