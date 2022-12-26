import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_zegocloud_demo/screens/utils/constants.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:get/get.dart';

final String localUserID = math.Random().nextInt(10000).toString();

class CallPage extends StatelessWidget {
  final String callId;

  const CallPage({
    Key? key,
    required this.callId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltCall(
        appID: zegoCloudAppId,
        appSign: zegoAppSignIn,
        userID: localUserID,
        userName: "user_$localUserID",
        callID: callId,
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
          ..onOnlySelfInRoom = (context) {
            Navigator.of(context).pop();
          },
      ),
    );
  }
}
