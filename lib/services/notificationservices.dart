import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> BackgroundHandler(RemoteMessage remotemessage)async{
  log("Message received ${remotemessage.notification!.title}");
}

class NotificationServices
{
  Future<void>intialize()async{
    NotificationSettings notificationSettings = await FirebaseMessaging.instance.requestPermission();
    if(notificationSettings.authorizationStatus== AuthorizationStatus.authorized){
      FirebaseMessaging.onBackgroundMessage(BackgroundHandler);
      FirebaseMessaging.onMessage.listen((message){
        log("Message Received ${message.notification!.title}");
      });
    }
  }

}