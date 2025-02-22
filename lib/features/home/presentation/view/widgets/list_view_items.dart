// features/home/presentation/view/widgets/list_view_items.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/features/home/presentation/view/widgets/list_viwe_item.dart';
import 'package:furniture_app/model/product_item_model.dart';


class ListViewItems extends StatelessWidget {
  const ListViewItems({
    super.key, 
  });
  

  @override
  Widget build(BuildContext context, ) {
    return SizedBox(
      height: 246.h,
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: ListView.builder(
          itemCount:furniture.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
          return Padding(
            padding: EdgeInsets.only(right: 16),
            child: ListViweItem(furnitur: furniture[index]));
        }),
      ),
    );
  }
}

