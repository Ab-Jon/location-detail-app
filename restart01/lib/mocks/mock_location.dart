import 'package:restart01/models/location.dart';
import 'package:restart01/models/location_fact.dart';

mixin MockLocation implements Location{
  static final List<Location> items = [
    Location(
      name: 'Bamboo Groove',
      url: 'https://i.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
      fact: <LocationFact>[
        LocationFact(
          title: 'Summary',
          text: 'While we could go on and on While we could go on and on\n While we could go on and on While we could go on and on'
        ),
        LocationFact(
          title: 'How to Get There',
          text: 'Kyoto airport, with several terminals is located 16 kilometers south of the city \n While we could go on and on'
        ),
      ]),

    Location(
        name: 'Mount Fuji',
        url:
        'https://img3.goodfon.ru/original/1920x1080/a/a5/fuji-peizazh-iaponiia-gora-tsvety-nebo.jpg',
        fact: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
              'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          LocationFact(
              title: 'How to Get There',
              text:
              'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),

    Location(
    name: 'Kiyomizu-dera',
    url:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Kiyomizu-dera_in_Kyoto-r.jpg/800px-Kiyomizu-dera_in_Kyoto-r.jpg',
    fact: <LocationFact>[
    LocationFact(
    title: 'Summary',
    text:
    'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
    LocationFact(
    title: 'How to Get There',
    text:
    'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
    ]),

  Location(
  name: 'Kinkaku-ji',
  url:
  'https://www.asisbiz.com/Japan/Kinkaku-ji/images/0-Postcards-Kinkaku-ji-Winter.jpg',
  fact: <LocationFact>[
  LocationFact(
  title: 'Summary',
  text:
  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
  LocationFact(
  title: 'How to Get There',
  text:
  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
  ]),

  Location(
  name: 'Odaiba',
  url: 'https://www.yhunter.ru/wp-content/uploads/2015/06/DSC1876.jpg',
  fact: <LocationFact>[
  LocationFact(
  title: 'Summary',
  text:
  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
  LocationFact(
  title: 'How to Get There',
  text:
  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
  ]),
  ];
  static Location fetchAny(){
    return items[0];
  }

  static List<Location> fetchAll(){
    return items;
  }
  }
