import 'dart:async';

import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import '../../components/customNotificationDialog.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }
  void messageListener(BuildContext context) {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
// Handle multiple notifications for the same message
      if (_handledMessageIds.contains('${message.messageId}0000foreground')) {
        return;
      }
      _handledMessageIds.add('${message.messageId}0000foreground');

      print('Got a new message whilst in the foreground!');

// ... Extract notification data ...

      String? title = message.notification?.title;
      print('Notification Title: $title');

      String? body = message.notification?.body;
      print('Notification Body: $body');

      String? image = isWeb
          ? message.notification?.web?.image
          : message.notification?.android?.imageUrl ??
              message.notification?.apple?.imageUrl;
      print('Notification Image: $image');

      print('Message also contained data: ${message.data}');

// Show a custom dialog and handle after closure

      showCustomNotificationDialog(context, image, title, body)
          .then((_) => _handlePushNotification(message));
    });
  }
///////////////
  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'Login6': ParameterData.none(),
  'Kurier': ParameterData.none(),
  'Witam': ParameterData.none(),
  'AktywniKurierzy': ParameterData.none(),
  'Restaura': ParameterData.none(),
  'Admin': ParameterData.none(),
  'GieldaZlecen': ParameterData.none(),
  'ZamowPierwsze': (data) async => const ParameterData(
        allParams: {},
      ),
  'Dzisiejszezlecenia': ParameterData.none(),
  'Zleceniakuriera': ParameterData.none(),
  'dodajdzwiek': ParameterData.none(),
  'UstawieniaKurier': ParameterData.none(),
  'Mojestatystyki': ParameterData.none(),
  'Historiazlecen': ParameterData.none(),
  'Zmienhaslo': ParameterData.none(),
  'Zleceniakurieraobcy': ParameterData.none(),
  'numerytel': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
