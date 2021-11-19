import 'package:equatable/equatable.dart';

class MainOffers extends Equatable {
  final String name;
  final String imageUrl;

  const MainOffers ({
    required this.name,
    required this.imageUrl
});


  @override
  List<Object?> get props => [name, imageUrl];

  static List<MainOffers> mainOffers = [
    const MainOffers(
        name: 'First Add',
        imageUrl: 'assets/images/32745-9-gaming-computer-transparent_400x400.png'
    ),
    const MainOffers(
        name: 'Second Add',
        imageUrl: 'assets/images/36673-5-lenovo-desktop-computer.png'
    ),
    const MainOffers(
        name: 'Third Add',
        imageUrl: 'assets/images/32742-2-gaming-computer-photos_400x400.png'
    ),
    const MainOffers(
        name: 'Fourth Add',
        imageUrl: 'assets/images/laptop_01.png'
    ),
    const MainOffers(
        name: 'Fifth Add',
        imageUrl: 'assets/images/35932-1-desktop-computer.png'
    ),
    const MainOffers(
        name: 'Sixth Add',
        imageUrl: 'assets/images/32745-9-gaming-computer-transparent_400x400.png'
    ),
  ];
}