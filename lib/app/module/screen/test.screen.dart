import 'package:consumer_app/app/core/provider/theme.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, theme, _) {
      return Padding(
        padding: const EdgeInsets.all(36),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dynamic Theme',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline6),
                Text(
                  'supporting hot reload',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.headline5?.apply(
                        color: theme.getColors().secondary,
                      ),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                  textStyle: const TextStyle(fontSize: 16)),
              onPressed: () =>
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme(),
              child: const Text('Toggle Theme'),
            )
          ],
        ),
      );
    });
  }
}
