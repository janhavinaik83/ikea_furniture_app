import 'package:augmented_reality_plugin/augmented_reality_plugin.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class VirtualARViewScreen extends StatelessWidget
{
  String? clickedItemImageLink;

  VirtualARViewScreen({this.clickedItemImageLink,});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "AR View",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: ()
          {
            Navigator.pop(context);
          },
        ),
      ),
      body: AugmentedRealityPlugin(clickedItemImageLink.toString()),
    );
  }
}
