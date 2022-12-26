import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../call_page/call_page.dart';

class CallIdScreen extends StatefulWidget {
  const CallIdScreen({Key? key}) : super(key: key);

  @override
  State<CallIdScreen> createState() => _CallIdScreenState();
}

class _CallIdScreenState extends State<CallIdScreen> {
  final TextEditingController callIdTextController =
      TextEditingController(text: "call_id");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zego Cloud Video and Audio Call"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        width: context.width * 1,
        height: context.height * 1,
        child: ListView(
          shrinkWrap: true,
          children: [
            TextFormField(
              controller: callIdTextController,
              decoration: const InputDecoration(labelText: "join a call by id"),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return CallPage(callId: callIdTextController.text);
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(context.width * 1, 60)),
              child: const Text("join"),
            )
          ],
        ),
      ),
    );
  }
}
