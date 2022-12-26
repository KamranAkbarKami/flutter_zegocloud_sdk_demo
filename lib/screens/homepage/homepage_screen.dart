import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../call_id_page/call_id_page.dart';
import '../utils/constants.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          child: ListView(
            shrinkWrap: true,
            children: [
              context.isPortrait ? gapH40 : gapH20,
              ZegoCloudOptionTile(
                  onTapFunction: () {
                    Get.to(() => const CallIdScreen());
                  },
                  text: "Zego Cloud One to One Video Call"),
              context.isPortrait ? gapH40 : gapH20,
            ],
          ),
        ),
      ),
    );
  }
}
//Component

class ZegoCloudOptionTile extends StatelessWidget {
  final String text;
  final Function()? onTapFunction;

  const ZegoCloudOptionTile(
      {Key? key, required this.text, required this.onTapFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      child: SizedBox(
        height: 70,
        width: MediaQuery.of(context).size.width * 1,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          elevation: 10,
          shadowColor: Colors.orange,
          color: Colors.orange,
          child: Center(
            child: FittedBox(
                child: Text(text,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17))),
          ),
        ),
      ),
    );
  }
}
