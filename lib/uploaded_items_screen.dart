import 'dart:typed_data';

import 'package:flutter/material.dart';

class UploadedItemsScreen extends StatelessWidget {
  final List<UploadedItem> uploadedItems;

  const UploadedItemsScreen({
    Key? key,
    required this.uploadedItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Uploaded Items',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: uploadedItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.memory(
              uploadedItems[index].imageData,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(uploadedItems[index].itemName),
            subtitle: Text(uploadedItems[index].itemDescription),
            trailing: Text('\$${uploadedItems[index].itemPrice.toString()}'),
          );
        },
      ),
    );
  }
}

class UploadedItem {
  final String itemName;
  final String itemDescription;
  final double itemPrice;
  final Uint8List imageData; // Assuming image data as Uint8List

  UploadedItem({
    required this.itemName,
    required this.itemDescription,
    required this.itemPrice,
    required this.imageData,
  });
}
