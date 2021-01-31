import 'package:flutter/material.dart';
import 'package:nuct/datamodels/navbar_item_model.dart';
import 'package:provider_architecture/provider_architecture.dart';

class NavBarItemMobile extends ProviderWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
      ),
      child: Row(
        children: [
          Icon(model.iconData),
          // SizedBox(
          //   width: 30,
          // ),
          Text(
            model.title,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
