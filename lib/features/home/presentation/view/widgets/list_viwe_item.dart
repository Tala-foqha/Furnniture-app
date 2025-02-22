// features/home/presentation/view/widgets/list_viwe_item.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/utils/app_Style.dart';
import 'package:furniture_app/core/utils/app_color.dart';
import 'package:furniture_app/features/home/presentation/view/widgets/stack_item.dart';
import 'package:furniture_app/model/product_item_model.dart';


class ListViweItem extends StatelessWidget {
  const ListViweItem({super.key,  required this.furnitur});
   final FurnitureModel furnitur;

  @override
  Widget build(BuildContext context) {
    return Container(
     // margin: EdgeInsets.only(right: 16),
    //padding: EdgeInsets.only(top: 16,left: 16,right: 16),
      height: 246.h,
      width: 152.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        color: Color(0xffFFFFFF),
        boxShadow:[ BoxShadow(
        offset: Offset(0, 2),
        blurRadius: 24,
        color: Color(0xff0000000).withOpacity(0.01)
        ),
        
     ] ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
        //  mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            StackItem(path: furnitur.imageUrl,),
            SizedBox(height: 10.h,),
            Text(furnitur.name,style: AppStyle.manrope14mordarkegrey.copyWith(color: AppColor.darkgrey),),
          //  SizedBox(height: 4.h,),
        
            Text('\$ ${furnitur.price}',
            style: AppStyle.manrope20darkgreyBold,),
            Text('\$${furnitur.oldPrice}',style: AppStyle.manrope12RegulardimGray.copyWith( decoration:
             TextDecoration.lineThrough,
                        decorationColor: Colors.black,)),

            
           // SizedBox(height: 4.h,),
            Row(
              children: [
                Icon(Icons.star,
                size: 18,
                color: Color(0xffEBB56B),
                
                
                ),
                SizedBox(width: 4.w,),
               
                Text('${furnitur.rating}',style:
                 AppStyle.manrope12RegulardimGray.copyWith(color: Color(0xff404040)),),
                  SizedBox(width: 4.w,),
                  Text('${(furnitur.reviews)}',style:
                 AppStyle.manrope12RegulardimGray.copyWith(color: Color(0xff404040)),),

              ],
            )
          ],
        ),
      )
      
    );
  }
}

