// single_child_scroll_view_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/setup_locator.dart';
import '../view_models/item_view_model.dart';

class SingleChildScrollViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<ItemViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView Example'),
      ),
      body: ChangeNotifierProvider<ItemViewModel>(
        create: (_) => viewModel,
        child: Consumer<ItemViewModel>(
          builder: (context, model, child) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: model.items.map((item) {
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        title: Text(item.title),
                        subtitle: Text(item.description),
                      ),
                    );
                  }).toList(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
