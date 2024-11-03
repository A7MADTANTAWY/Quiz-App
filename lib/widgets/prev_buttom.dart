import 'package:flutter/material.dart';

class PrevBottom extends StatelessWidget {
  final VoidCallback pre;
  const PrevBottom({super.key, required this.pre});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ElevatedButton(
          onPressed: pre,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            padding: EdgeInsets.zero,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 1),
              Icon(Icons.arrow_back, color: Colors.black),
              Spacer(flex: 1),
              Text("Previews",
                  style: TextStyle(fontSize: 18, color: Colors.black)),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
