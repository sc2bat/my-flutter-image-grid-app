import 'package:flutter/material.dart';

class MainSuperTeam extends StatelessWidget {
  const MainSuperTeam({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> refrigeItems = [{}];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 40,
          mainAxisSpacing: 40,
          childAspectRatio: 1 / 3,
        ),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          child: Container(
            color: Colors.blueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'https://i.namu.wiki/i/jdsteyj1rJ6P2yGgoRf64CvKz9kMIceUPzL7MfqKSrsGI4YRPP7ddWnnZfFB72mm7MRA9CRT3Oth7Jr0S4Y39uNxGC27RLuiSFprnznRdd3jaWK-uMJa2M9MDqfXZ5gSN8aEcQa1y16HidxqPL3SIg.webp',
                  fit: BoxFit.cover,
                ),
                const Center(
                  child: Text(
                    'qwerasdf',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                //관리자 버튼
                SizedBox(
                  width: 80.0,
                  height: 30.0,
                  child: true
                      ? ElevatedButton(
                          onPressed: () {
                            // context.go('/editRefrige', extra: refrigeItems[index]);
                          },
                          child: const Center(
                              child: Text(
                            '수정',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )),
                        )

                      // ElevatedButton(
                      // onPressed: () {
                      // context.go('/editRefrige', extra: refrigeItems[index]);
                      // },
                      // child: Text('수정'))
                      : Container(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
