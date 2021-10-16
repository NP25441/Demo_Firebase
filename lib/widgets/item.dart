import 'package:flutter/material.dart';
import 'package:untitle/model/model.dart';

const KLeadingText = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w300,
  color: Colors.blue,
);
const kTrailingText = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: Colors.black87,
);

class item extends StatelessWidget {
  final model product;
  item({required this.product});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        leading: Text(
          product.productName,
          style: KLeadingText,
        ),
        title: Text(
          product.price.toStringAsFixed(2),
          style: kTrailingText,
          textAlign: TextAlign.right,
        ),
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
