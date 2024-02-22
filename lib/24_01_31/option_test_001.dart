import 'package:flutter/material.dart';

const List<Widget> collectionOptions = <Widget>[
  Text('전체'),
  Text('보유'),
  Text('미보유')
];
const List<Widget> directionOptions = <Widget>[
  Text('정방향'),
  Text('역방향'),
];

class OptionTest001 extends StatefulWidget {
  const OptionTest001({super.key});

  @override
  State<OptionTest001> createState() => _OptionTest001State();
}

class _OptionTest001State extends State<OptionTest001> {
  final List<bool> _selectedCollectionOptions = <bool>[true, false, false];
  final List<bool> _selectedDirectionOptions = <bool>[true, false];

  @override
  Widget build(BuildContext context) {
    double currentSliderValue = 2.0;
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(content: StatefulBuilder(
                  //   title: const Center(
                  //   child: Text(
                  //     '사용자 옵션',
                  //   ),
                  // ),
                  builder: (BuildContext context,
                      void Function(void Function()) setState) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Center(
                              child: Text(
                                '사용자 옵션',
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            '메인 열 수',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(height: 6.0),
                          Slider(
                            value: currentSliderValue,
                            min: 2,
                            max: 5,
                            divisions: 3,
                            label: currentSliderValue.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                currentSliderValue = value;
                              });
                            },
                          ),
                          const SizedBox(height: 16.0),
                          const Text(
                            '컬렉션 보유',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(height: 6.0),
                          ToggleButtons(
                            direction: Axis.horizontal,
                            onPressed: (int index) {
                              setState(() {
                                for (int i = 0;
                                    i < _selectedCollectionOptions.length;
                                    i++) {
                                  _selectedCollectionOptions[i] = i == index;
                                  print(
                                      'qwerasdf ${_selectedCollectionOptions[i]}');
                                }
                              });
                            },
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            selectedBorderColor: Colors.green[700],
                            selectedColor: Colors.white,
                            fillColor: Colors.green[200],
                            color: Colors.green[400],
                            constraints: const BoxConstraints(
                              minHeight: 40.0,
                              minWidth: 80.0,
                            ),
                            isSelected: _selectedCollectionOptions,
                            children: collectionOptions,
                          ),
                          const SizedBox(height: 16.0),
                          const Text(
                            '정렬 방향',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(height: 6.0),
                          ToggleButtons(
                            direction: Axis.horizontal,
                            onPressed: (int index) {
                              setState(() {
                                for (int i = 0;
                                    i < _selectedDirectionOptions.length;
                                    i++) {
                                  _selectedDirectionOptions[i] = i == index;
                                  print(
                                      'qwerasdf ${_selectedDirectionOptions[i]}');
                                }
                              });
                            },
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            selectedBorderColor: Colors.blue[700],
                            selectedColor: Colors.white,
                            fillColor: Colors.blue[200],
                            color: Colors.blue[400],
                            constraints: const BoxConstraints(
                              minHeight: 40.0,
                              minWidth: 80.0,
                            ),
                            isSelected: _selectedDirectionOptions,
                            children: directionOptions,
                          ),
                          const SizedBox(height: 16.0),
                        ],
                      ),
                    );
                  },
                ));
              },
            );
          },
          child: const Icon(
            Icons.sort,
          ),
        ),
      ),
      body: Container(
        child: const Center(
          child: Text('qwerasdf'),
        ),
      ),
    );
  }
}
