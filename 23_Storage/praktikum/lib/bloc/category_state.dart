part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

class CategoryInitial extends CategoryState {}

class CategoryLoaded extends CategoryState {
  final List<CategoryModel> allCategory = [
    CategoryModel(categoryData: 'Family'),
    CategoryModel(categoryData: 'School'),
    CategoryModel(categoryData: 'Work'),
    CategoryModel(categoryData: 'Call Center'),
  ];

  @override
  List<Object> get props => [allCategory];
}
