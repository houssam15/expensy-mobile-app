import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../blocs/remote/bloc.dart";

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
    this.onTap
  });

  final ExpensyExpenseCategory category;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(5),
        width: 100,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: NetworkImage(category.getCategoryPictureLink()),
                fit: BoxFit.cover
              )
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withOpacity(0.5)
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      category.getName(),
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      category.getDescription(),
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.white70,
                        fontSize: 10
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
