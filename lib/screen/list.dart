import 'package:untitle/model/model.dart';
import 'package:untitle/service/database.dart';
import 'package:flutter/material.dart';
import 'package:untitle/widgets/item.dart';

class list extends StatelessWidget {
  const list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Database db = Database.instance;
    Stream<List<model>> stream = db.getAllProductStream();
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: StreamBuilder<List<model>>(
        stream: stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data?.length == 0) {
              return Center(
                child: Text('No Product'),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return item(
                  product: snapshot.data![index],
                );
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
