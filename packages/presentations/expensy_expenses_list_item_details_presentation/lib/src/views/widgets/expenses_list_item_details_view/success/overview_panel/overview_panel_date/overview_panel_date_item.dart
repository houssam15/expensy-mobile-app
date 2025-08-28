import "package:flutter/material.dart";

class ExpensyExpensesListItemDetailsPresentationViewSuccessPageOverviewPanelDateItem extends StatelessWidget {
  const ExpensyExpensesListItemDetailsPresentationViewSuccessPageOverviewPanelDateItem({
    super.key,
    this.margin,
    required this.label,
    required this.value
  });

  final EdgeInsets? margin;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          margin: margin,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Center(
                child: Text(
                  value,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 6,
                child: Text(
                  label,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w900
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
