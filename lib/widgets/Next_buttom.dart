import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final VoidCallback next;

  const NextButton({super.key, required this.next});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ElevatedButton(
          onPressed: next,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            padding: EdgeInsets.zero,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 1),
              Text("Next", style: TextStyle(fontSize: 18, color: Colors.black)),
              Spacer(flex: 1),
              Icon(Icons.arrow_forward, color: Colors.black),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
