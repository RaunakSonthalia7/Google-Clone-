import 'package:flutter/material.dart';
import 'package:google/models/item.dart';

class Item_list extends StatelessWidget {
  List<Item> _list;
  Item_list(this._list);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _list.map((tx) {
          return Card(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 100,
                  child: Image.asset(
                    tx.image,
                    height: 30,
                    width: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    tx.name,
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          );
        }).toList());
  }
}
