import 'package:flutter/material.dart';
import 'package:restart01/location_detail.dart';
import 'package:restart01/styles.dart';
import 'models/location.dart';

class LocationList extends StatelessWidget{
  final List<Location> _location;

  LocationList(this._location);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations', style: Styles.navBarTitle,),
      ),

      body: ListView.builder(
        itemCount: this._location.length,
        itemBuilder: _listViewItemBuilder,),
    );
  }

  // Widget function holding list items
  Widget _listViewItemBuilder(BuildContext context, int index){
    var location = this._location[index];
    return ListTile(
        contentPadding: EdgeInsets.all(10.0),
        leading: _itemThumbnail(location),
        title: _itemTitle(location),
        onTap: () => {_navigateToLocationDetail(context, location),}
    );
  }

  // method handling routing from list to location details
  void _navigateToLocationDetail(BuildContext context, Location location){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                LocationDetail(location)));
  }

  // function handling the image item of the list
  Widget _itemThumbnail(Location location){
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: Image.network(location.url, fit: BoxFit.fitHeight,),
    );
  }

  // function handling the text item of the list
  Widget _itemTitle(Location location){
    return Text(location.name, style: Styles.textDefault,);
  }
}