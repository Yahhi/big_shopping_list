import 'dart:math';

class ItemData {
  ItemData(this.title, this.image);

  factory ItemData.random() {
    final index = Random().nextInt(_images.length);
    return ItemData(_titles[index], _images[index]);
  }

  final String title;
  final String image;

  String get bigImage =>
      image + '?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260';

  String get smallImage => image + '?auto=compress&h=600';
}

List<String> _images = [
  'https://images.pexels.com/photos/46174/strawberries-berries-fruit-freshness-46174.jpeg',
  'https://images.pexels.com/photos/4022090/pexels-photo-4022090.jpeg',
  'https://images.pexels.com/photos/2294477/pexels-photo-2294477.jpeg',
  'https://images.pexels.com/photos/2363347/pexels-photo-2363347.jpeg',
  'https://images.pexels.com/photos/2067574/pexels-photo-2067574.jpeg',
  'https://images.pexels.com/photos/2288692/pexels-photo-2288692.jpeg',
  'https://images.pexels.com/photos/2363345/pexels-photo-2363345.jpeg'
];

List<String> _titles = [
  'Клубника',
  'Черника',
  'Апельсины',
  'Лаймы',
  'Груши',
  'Арбузы',
  'Манго'
];
