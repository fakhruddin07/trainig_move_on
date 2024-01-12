import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FlutterInspectorDemo extends StatefulWidget {
  const FlutterInspectorDemo({super.key});

  @override
  State<FlutterInspectorDemo> createState() => _FlutterInspectorDemoState();
}

class _FlutterInspectorDemoState extends State<FlutterInspectorDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Inspector Demo"),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
        automaticallyImplyLeading: false,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Row(
              children: [
                Expanded(
                  child: Text(
                    "It's a demo text for inspection of flutter inspector. Now I'm implement it.",
                  ),
                ),
              ],
            ),
            const Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.emoji_emotions,
                        color: Colors.yellow,
                      ),
                      Text("Good 1")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.yellow,
                      ),
                      Text("Good 2")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.emoji_emotions,
                        color: Colors.yellow,
                      ),
                      Text("Good 3")
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Submit"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
