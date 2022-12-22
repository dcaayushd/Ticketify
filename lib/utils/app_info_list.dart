import 'package:dart_date/dart_date.dart';

List<Map<String, dynamic>> hotelList = [
  {
    'image': 'one.jpg',
    'place': 'Hotel Barahi',
    'destination': 'Pokhara',
    'star': '4.5',
    'reviews': '1,025',
    'price': '3,055',
  },
  {
    'image': 'two.jpg',
    'place': 'Hotel Middle Path',
    'destination': 'Pokhara',
    'star': '5',
    'reviews': '980',
    'price': '4,569',
  },
  {
    'image': 'three.jpg',
    'place': 'Sarangkot Lodge',
    'destination': 'Pokhara',
    'star': '5',
    'reviews': '132',
    'price': '4,509',
  },
  {
    'image': 'four.jpg',
    'place': 'Hotel Mala Pokhara',
    'destination': 'Pokhara',
    'star': '4.5',
    'reviews': '23',
    'price': '5,863',
  },
];

var _date = DateTime.now().format('dd MMM');
List<Map<String, dynamic>> ticketList = [
  {
    'from': {
      'code': 'LUA',
      'name': 'Lukla',
    },
    'to': {
      'code': 'KTM',
      'name': 'Kathmandu',
    },
    'flying_time': '30 Minutes',
    'date': _date,
    'departure_time': '06:50 AM',
    'number': 'TA-112',
  },
  {
    'from': {
      'code': 'KTM',
      'name': 'Kathmandu',
    },
    'to': {
      'code': 'BRT',
      'name': 'Biratnagar',
    },
    'flying_time': '40 Minutes',
    'date': _date,
    'departure_time': '08:20 AM',
    'number': 'YT-787',
  },
  {
    'from': {
      'code': 'KTM',
      'name': 'Kathmandu',
    },
    'to': {
      'code': 'PKR',
      'name': 'Pokhara',
    },
    'flying_time': '25 Minutes',
    'date': _date,
    'departure_time': '08:30 AM',
    'number': '	YT-673',
  },
  {
    'from': {
      'code': 'JKR',
      'name': 'Janakpur',
    },
    'to': {
      'code': 'KTM',
      'name': 'Kathmandu',
    },
    'flying_time': '25 Minutes',
    'date': _date,
    'departure_time': '10:50 AM',
    'number': 'YT-572',
  },
  {
    'from': {
      'code': 'KEP',
      'name': 'Nepalgunj',
    },
    'to': {
      'code': 'KTM',
      'name': 'Kathmandu',
    },
    'flying_time': '50 Minutes',
    'date': _date,
    'departure_time': '02:10 PM',
    'number': 'YT-422',
  },
  {
    'from': {
      'code': 'BDP',
      'name': 'Bhadrapur',
    },
    'to': {
      'code': 'KTM',
      'name': 'Kathmandu',
    },
    'flying_time': '45 Minutes',
    'date': _date,
    'departure_time': '20:05 PM',
    'number': 'YT-928',
  },
];
