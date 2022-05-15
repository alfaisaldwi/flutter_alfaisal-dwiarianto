import 'package:flutter/cupertino.dart';
import 'package:mini_project/helper/db_helper.dart';
import 'package:mini_project/models/saveModel.dart';

class DbManager extends ChangeNotifier {
  List<SaveModel> _saveModels = [];
  late DatabaseHelper _dbHelper;

  List<SaveModel> get saveModels => _saveModels;

  DbManager() {
    _dbHelper = DatabaseHelper();
    _getAllTask();
  }

  void _getAllTask() async {
    _saveModels = await _dbHelper.getTask();
    notifyListeners();
  }

  Future<void> addTask(SaveModel saveModel) async {
    await _dbHelper.insertTask(saveModel);
    _getAllTask();
  }

  Future<SaveModel> getTaskById(int id) async {
    return await _dbHelper.getTaskById(id);
  }

  void updateTask(SaveModel saveModel) async {
    await _dbHelper.updateTask(saveModel);
  }

  void deleteTask(int id) async {
    await _dbHelper.deleteTask(id);
    _getAllTask();
  }
}
