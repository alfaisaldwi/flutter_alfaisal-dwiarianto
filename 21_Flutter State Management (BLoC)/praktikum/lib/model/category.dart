import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
  String? categoryData;

  CategoryModel({this.categoryData});

  @override
  List<Object?> get props => [categoryData];
}
