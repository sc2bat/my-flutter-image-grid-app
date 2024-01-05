import 'package:flutter/material.dart';

class MyTextFieldWidget extends StatefulWidget {
  const MyTextFieldWidget({
    super.key,
    required this.textContoller,
  });

  final TextEditingController textContoller;

  @override
  State<MyTextFieldWidget> createState() => _MyTextFieldWidgetState();
}

class _MyTextFieldWidgetState extends State<MyTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextField(
        controller: widget.textContoller,
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.grey[400],
            fontSize: 16.0,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.deepOrange,
            ),
          ),
          suffixIcon: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.search_rounded,
            ),
          ),
        ),
        onChanged: (value) {
          // searchingImage();
          setState(() {});
        },
      ),
    );
  }
}
