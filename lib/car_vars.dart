import 'package:flutter/material.dart';
import 'main.dart';
import 'Cars.dart';

class Car {
  String CarName;
  String CarImage;

  Car({this.CarName, this.CarImage});
}

class DaCars {
  List<Car> _carsData = [
    Car(
        CarName: 'SUBARU WRX STI',
        CarImage:
            'https://www.carscoops.com/wp-content/uploads/2020/12/2021-subaru-wrx-sti.jpg'),
    Car(
        CarName: 'SUBARU BRZ',
        CarImage:
            'https://secure-akns.subaru.com/content/media/mp_fullscreen_1920/20_BRZ_photos_ext_19.jpg'),
    Car(
        CarName: 'NISSAN 350z',
        CarImage:
            'https://s1.cdn.autoevolution.com/images/news/z1-motorsports-nissan-370z-boasts-side-exit-exhaust-huge-rear-wing-138827_1.jpg'),
    Car(
        CarName: "Nissan Skyline GTR (R34)",
        CarImage:
            'https://dealeraccelerate-all.s3.amazonaws.com/international/marketing_assets/178/BLUE_R34_GTR-6.jpg'),
    Car(
        CarName: 'NISSAN GTR (R35)',
        CarImage:
            'https://www.nismo.com/wp-content/uploads/2019/04/190321_MY20_GT_R_NISMO_MC_Newsroom1.jpg'),
    Car(
        CarName: 'WOLKSWAGON GTI',
        CarImage:
            'https://www.motortrend.com/uploads/sites/5/2020/07/2018-Volkswagen-Golf-GTI.jpg?fit=around%7C875:492'),
    Car(
        CarName: 'Charger',
        CarImage:
            'https://0.cdn.autotraderspecialty.com/1970-Dodge-Charger-muscle-and-pony-cars--Car-101402793-fc299ded8901d5f47b11561bb63c199c.jpg?w=735&h=551&r=pad&c=%23f5f5f5'),
    Car(
      CarName: 'Shelby Mustang',
      CarImage:
          'https://www.gannett-cdn.com/presto/2020/09/13/PDTN/f13ef1f5-c3af-4b8b-8bb6-4ef042ad5b2b-cr3.jpg?crop=1919,1080,x0,y96&width=1919&height=1080&format=pjpg&auto=webp',
    ),
    Car(
      CarImage:
          'https://cdn.discordapp.com/attachments/790620808691187767/860598165207121930/Mona_Laza.PNG',
      CarName: 'Moan A Leza',
    )
  ];

  int carNumber = 0;

  String getCarName() {
    return _carsData[carNumber].CarName;
  }

  String getCarImage() {
    return _carsData[carNumber].CarImage;
  }
}
