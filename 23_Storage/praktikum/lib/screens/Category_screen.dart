import 'package:task21/bloc/category_bloc.dart';
import 'package:task21/model/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GlobalState - Category Contact'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
          if (state is CategoryInitial) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is CategoryLoaded) {
            return ListView.builder(
                itemCount: state.allCategory.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${state.allCategory[index].categoryData}'),
                  );
                });
          } else {
            return const Center(child: Text('Category not found'));
          }
        }),
      ),
    );
  }
}
