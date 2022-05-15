import 'package:flutter/material.dart';
import 'package:mini_project/component/task_card.dart';
import 'package:mini_project/models/db_manager.dart';
import 'package:mini_project/screens/weather_home.dart';
import 'package:provider/provider.dart';

class TaskListScreen extends StatelessWidget {
  final DbManager manager;
  const TaskListScreen({Key? key, required this.manager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<DbManager>(
          builder: (context, value, child) {
            final taskItems = manager.saveModels;
            return ListView.separated(
              itemCount: taskItems.length,
              itemBuilder: (context, index) {
                final item = taskItems[index];
                return InkWell(
                  onTap: () async {
                    final selectedTask = await manager.getTaskById(item.id!);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WeatherHome(
                                  saveModel: selectedTask,
                                )));
                  },
                  child: TaskCard(
                    task: item,
                    onPressed: () {
                      manager.deleteTask(item.id!);
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${item.cityName} Deleted')),
                      );
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 16);
              },
            );
          },
        ));
  }
}
