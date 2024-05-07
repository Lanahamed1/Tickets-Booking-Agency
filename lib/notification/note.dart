



// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:get/get_connect/http/src/interceptors/get_modifiers.dart';
// import 'package:get/get_connect/http/src/request/request.dart';
// // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
// //   print('Got a message whilst in the foreground!');
// //   print('Message data: ${message.data}');

// //   if (message.notification != null) {
// //     print('Message also contained a notification: ${message.notification}');
// //   }
// // });

//  FirebaseMessaging messaging = FirebaseMessaging.instance;
// requestPermissionNotification() async{
//  NotificationSettings settings = await  FirebaseMessaging.instance .requestPermission(
//    alert: true,
//    announcement: false,
//    badge: true,
//   carPlay: false,
//    criticalAlert: false,
//    provisional: false,
//    sound: true,
//  );
//   print('${settings.authorizationStatus}');

// }


// class MyMessagingService {
//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

//   void setupFirebaseMessaging() { 
//     _firebaseMessaging.getToken().then((token) {
//       print("FCM Token: $token");
//     });

//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       print("Message received: ${message.notification!.title}");
//     });

//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       print("Message opened: ${message.notification!.title}");
//     });
//   }
// }

// // @pragma('vm:entry-point')
// // Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
// //   // If you're going to use other Firebase services in the background, such as Firestore,
// //   // make sure you call `initializeApp` before using other Firebase services.
// //   await Firebase.initializeApp();

// //   print("Handling a background message: ${message.messageId}");
// // }

// // void main() {
// //   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
// //   runApp(MyApp());
// // }class Application extends StatefulWidget {
// //   @override
// //   State<StatefulWidget> createState() => _Application();
// // }

// // class _Application extends State<Application> {
// //   // It is assumed that all messages contain a data field with the key 'type'
// //   Future<void> setupInteractedMessage() async {
// //     // Get any messages which caused the application to open from
// //     // a terminated state.
// //     RemoteMessage? initialMessage =
// //         await FirebaseMessaging.instance.getInitialMessage();

// //     // If the message also contains a data property with a "type" of "chat",
// //     // navigate to a chat screen
// //     if (initialMessage != null) {
// //       _handleMessage(initialMessage);
// //     }

// //     // Also handle any interaction when the app is in the background via a
// //     // Stream listener
// //     FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
// //   }

// //   void _handleMessage(RemoteMessage message) {
// //     if (message.data['type'] == 'chat') {
// //       Navigator.pushNamed(context, '/chat',
// //         arguments: ChatArguments(message),
// //       );
// //     }
// //   }

// //   @override
// //   void initState() {
// //     super.initState();

// //     // Run code required to handle interacted messages in an async function
// //     // as initState() must not be async
// //     setupInteractedMessage();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Text("...");
// //   }
// // }


