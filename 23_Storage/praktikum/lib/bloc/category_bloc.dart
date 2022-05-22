import 'package:bloc/bloc.dart';
import 'package:task21/model/category.dart';
import 'package:equatable/equatable.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryInitial()) {
    on<LoadAllCategory>((event, emit) async {
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(CategoryLoaded());
    });
  }
}
