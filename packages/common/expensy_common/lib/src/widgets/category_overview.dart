import "package:flutter/material.dart";

class ExpensyCategoryOverview extends StatelessWidget {

  const ExpensyCategoryOverview({
    super.key,
    this.categoryImage,
    this.categoryImageSize,
    this.categoryName,
    this.categoryDescription,
    this.price,
    this.priceTextStyle,
    this.categoryNameTextStyle,
    this.categoryDescriptionTextStyle,
    this.spacer
  });

  final String? categoryImage;
  final double? categoryImageSize;
  final String? categoryName;
  final TextStyle? categoryNameTextStyle;
  final String? categoryDescription;
  final TextStyle? categoryDescriptionTextStyle;
  final String? price;
  final TextStyle? priceTextStyle;
  final Widget? spacer;

  @override
  Widget build(BuildContext context) {

    return Row(
        children: [
          Container(
             margin: EdgeInsets.all(10),
             width: categoryImageSize ?? 50,
             height: categoryImageSize ?? 50,
             child: ClipRRect(
               borderRadius: BorderRadius.circular(12),
               child: Image.network(
                   categoryImage ?? "",
                   fit: BoxFit.cover
               ),
             ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                   categoryName ?? "",
                     style: categoryNameTextStyle ?? TextStyle(
                       fontWeight: FontWeight.w900
                     ),
                     overflow: TextOverflow.ellipsis,
                 ),
                 spacer ?? const SizedBox(height: 5),
                 Text(
                   categoryDescription ?? "",
                     style: categoryDescriptionTextStyle ?? TextStyle(
                         fontSize: 10,
                         color: Colors.grey
                     ),
                     overflow: TextOverflow.ellipsis,
                 )
              ]
            ),
          ),
          Text(
            price ?? "",
              style:priceTextStyle ?? TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w900
              ),
          )
        ]
    );
  }
}
