import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_02_provider/counter.dart';
import 'package:provider/provider.dart';

import '../widget/counter_widget.dart';

class MainProviderPage extends StatelessWidget {
  const MainProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Counter(),
        ),
      ],
      child: Consumer<Counter>(
        builder: (context, counter, _) => const CounterWidget(),
      ),
    );
  }
}
