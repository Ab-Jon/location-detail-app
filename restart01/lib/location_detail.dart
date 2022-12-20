import 'package:flutter/material.dart';
import 'package:restart01/models/location.dart';
import 'package:restart01/styles.dart';

class LocationDetail extends StatelessWidget{
  final Location location;
  LocationDetail(this.location);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(location.name, style: Styles.navBarTitle,),),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderBody(context, location),
      ),
    );
  }

  List<Widget> _renderBody(BuildContext context, Location location){
    var result = <Widget>[];
    result.add(_bannerImage(location.url, 170.0));
    result.addAll(_renderFacts(context, location));
    return result;
  }

  List<Widget> _renderFacts(BuildContext context, Location location){
    final result = <Widget>[];
    for (int i = 0; i < location.fact.length; i++){
      result.add(_sectionTitle(location.fact[i].title));
      result.add(_sectionText(location.fact[i].text));
    }
    return result;
  }
  // Location detail has three components; image, title and text.
  // Title section of the location detail
  Widget _sectionTitle(String text){
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
      child: Text(text,
        textAlign: TextAlign.left,
        style: Styles.headerLarge,),
    );
  }

  // Text section of location detail
  Widget _sectionText(String text){
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
      child:   Text(text, style: Styles.textDefault,),
    );
  }
  // Image section of location detail
  Widget _bannerImage(String url, double height){
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth,),
    );
  }
 /* Widget _section(String title, Color color){
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      child: Text(title),
    );
  }*/
}
// children[
//  _section("One", Colors.red),
//             _section("Two", Colors.blue),
//             _section("Three", Colors.green),]

// Instead of repetition of container, a widget method is created with parameters to handle the containers.
/*
Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              child: Text('Wow'),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Wow'),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text('Wow'),
            ),
*/