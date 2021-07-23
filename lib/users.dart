import 'model/user.dart';

final users = <User>[
  User(
    name: 'Lauren Turner',
    bio:
        'Psychology, science, and art are what helps me to learn the outside world and myself.',
    countFollowers: 4,
    countFollowing: 25,
    location: 'Paris, France',
    isFollowing: true,
    countPosts: 10,
    urlImage: 'assets/img/user1.jpg',
    urlPhotos: [
      'assets/img/photo1.jpg',
      'assets/img/photo2.jpg',
      'assets/img/photo3.jpg',
    ],
  ),
  User(
    name: 'Lori Perez',
    bio:
        'Travelling, adventures, extreme sports are also an integral part of me, but I like watching and admiring extreme sports rather than doing it ?',
    countFollowers: 2,
    countFollowing: 75,
    location: 'Marseille, France',
    isFollowing: false,
    countPosts: 5,
    urlImage: 'assets/img/user2.jpg',
    urlPhotos: [
      'assets/img/photo1.jpg',
      'assets/img/photo3.jpg',
    ],
  ),
  User(
    name: 'Christine Wallace',
    bio:
        'Psychology, science, and art are what helps me to learn the outside world and myself.',
    countFollowers: 6,
    countFollowing: 78,
    location: 'Munich, Germany',
    isFollowing: false,
    countPosts: 7,
    urlImage: 'assets/img/user3.jpg',
    urlPhotos: [
      'assets/img/photo2.jpg',
      'assets/img/photo1.jpg',
      'assets/img/photo2.jpg',
      'assets/img/photo3.jpg',
    ],
  )
];
