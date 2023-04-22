
class ShoeDataModel {
  int id;
  String name;
  String description;
  String price;
  String image;
  String tagLine;

  ShoeDataModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.tagLine,
  });
}

List<ShoeDataModel> shoeDataModel = [
  ShoeDataModel(
    id: 1,
    name: 'Nike Air Zoom',
    description:
        'The Nike Air Zoom Pegasus 38 returns to put a spring in your steps,'
        'skips and jumps using the same responsive foam as its predecessor. '
        'Breathable mesh in the upper combines the comfort and durability you want, plus more wiggle room for your toes.',
    price: '350',
    image: 'assets/images/1.png',
    tagLine: 'tagLine',
  ),
  ShoeDataModel(
    id: 3,
    name: 'Nike Air Pegasus',
    description:
        'The Nike Air Zoom Pegasus 38 returns to put a spring in your steps,'
        'skips and jumps using the same responsive foam as its predecessor. '
        'Breathable mesh in the upper combines the comfort and durability you want, plus more wiggle room for your toes.',
    price: '400',
    image: 'assets/images/2.png',
    tagLine: 'tagLine',
  ),
  ShoeDataModel(
    id: 3,
    name: 'Nike Air Light',
    description:
        'The Nike Air Zoom Pegasus 38 returns to put a spring in your steps,'
        'skips and jumps using the same responsive foam as its predecessor. '
        'Breathable mesh in the upper combines the comfort and durability you want, plus more wiggle room for your toes.',
    price: '350',
    image: 'assets/images/3.png',
    tagLine: 'tagLine',
  ),
  ShoeDataModel(
    id: 4,
    name: 'Nike Air Zoom',
    description:
        'The Nike Air Zoom Pegasus 38 returns to put a spring in your steps,'
        'skips and jumps using the same responsive foam as its predecessor. '
        'Breathable mesh in the upper combines the comfort and durability you want, plus more wiggle room for your toes.',
    price: '350',
    image: 'assets/images/1.png',
    tagLine: 'tagLine',
  ),
];
