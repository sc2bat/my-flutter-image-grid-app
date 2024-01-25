import 'package:flutter/material.dart';

class MainPinchZoomTest extends StatelessWidget {
  const MainPinchZoomTest({super.key});

  @override
  Widget build(Object context) {
    int count = 3;

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'pinch zoom test',
          ),
        ),
        body: null
        // ZoomPageTransitionsBuilder()
        // PinchZoom(
        //   maxScale: 2.5,
        //   onZoomStart: () {
        //     print('Start zooming');
        //   },
        //   onZoomEnd: () {
        //     print('Stop zooming');
        //   },
        //   child: Image.network('https://placekitten.com/640/360'),
        // ),

        // PinchZoom(
        //   maxScale: 2.5,
        //   onZoomStart: () {
        //     logger.info('=== zoom start ===');
        //   },
        //   onZoomEnd: () {
        //     logger.info('=== zoom end ===');
        //   },
        //   child: GridView.builder(
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 3,
        //       crossAxisSpacing: 4.0,
        //       mainAxisSpacing: 4.0,
        //     ),
        //     itemCount: 40,
        //     itemBuilder: (context, index) {
        //       return Container(
        //         decoration: const BoxDecoration(
        //           color: Colors.blue,
        //         ),
        //         child: Center(
        //           child: Text(
        //             'test$index',
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // ),
        );
  }
}
