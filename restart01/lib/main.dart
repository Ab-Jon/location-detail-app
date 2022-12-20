import 'package:flutter/material.dart';
import 'package:restart01/models/location.dart';
import 'location_detail.dart';
import 'location_list.dart';
import 'mocks/mock_location.dart';
void main(){
  final mockLocation = MockLocation.fetchAll();
  return runApp(MaterialApp(
    home: LocationList(mockLocation)
  ));
}









//NOTE
// Container is a convenient widget for positioning, sizing of widgets etc.
// Each container has a child element that allows us to nest elements.
/*return runApp(MaterialApp(
home: Scaffold(
appBar: AppBar(title: Text('Hello')),
body: Container(
decoration: BoxDecoration(
color: Colors.redAccent,
),
child: Text('Wow'),
),
),
));*/

// Column is a widget that displays the children in a vertical array
// main axis alignment and cross axis alignment are used to control how content is aligned along the main axis of the column
// which is a vertical line.