import 'package:flutter/material.dart';
import 'package:my_flutter_image_grid_app/24_01_02_provider/counter.dart';
import 'package:my_flutter_image_grid_app/logger/simple_logger.dart';
import 'package:provider/provider.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'provider',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '${counter.count}',
              style: const TextStyle(
                fontSize: 32.0,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                logger.info('qwerasdf count => ${counter.count}');
                counter.increment();

                logger.info('qwerasdf button pressed');
              },
              style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll(
                  Size(56.0, 56.0),
                ),
              ),
              child: const Icon(
                Icons.plus_one,
                size: 32.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
