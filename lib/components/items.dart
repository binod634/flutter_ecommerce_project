import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final String title;
  final String branch;
  const Items({
    super.key,
    required this.title,
    required this.branch,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      elevation: 8,
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: 120,
                child: ClipRRect(
                    child: Image.asset(
                  "assets/pizza.jpeg",
                  fit: BoxFit.cover,
                ))),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: const Color.fromARGB(255, 225, 60, 48),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              color: const Color.fromARGB(255, 225, 58, 46),
              child: Text(branch,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
