import 'package:buttons_widget/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 4),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Text Button')));
              },
              child: const Text('Text Button'),
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Elevated Button')));
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all<Color>(Colors.orange),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text('Outlined Button')));
                },
                child: const Text('Outlined Button')),
            CustomButton(
              text: 'My Button',
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('My Button')));
              },
            ),
            CustomButton(
              text: 'Green Button',
              backgroundColor: Colors.green,
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Green Button')));
              },
            ),
            CustomButton(
              text: 'Purple Button',
              backgroundColor: Colors.purple,
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Purple Button')));
              },
            ),
            const Spacer(flex: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: CustomButton(text: 'Cancel', onPressed: () {})),
                Expanded(
                    child: CustomButton(
                  text: 'Submit',
                  backgroundColor: Colors.green,
                  onPressed: () {},
                )),
              ],
            ),
            const Spacer(flex: 4),
          ],
        ),
      ),
    );
  }
}
