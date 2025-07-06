import 'package:equatable/equatable.dart';

class ExpensyDashboardPresentationExpenseCategory extends Equatable{
  String? _name;
  String? _description;
  String? _categoryPictureLink;
  double? _categoryTotal;

  @override
  List<Object?> get props => [_name,_description,_categoryPictureLink,_categoryTotal];
}
