import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler(
      {Key key, this.handlePushNotification, this.child})
      : super(key: key);

  final Function(BuildContext) handlePushNotification;
  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 50,
            height: 50,
            child: SpinKitPumpingHeart(
              color: FlutterFlowTheme.of(context).primaryColor,
              size: 50,
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'Onboarding': (data) async => OnboardingWidget(),
  'SignupCreateAcc': (data) async => SignupCreateAccWidget(),
  'SignupCreateAcc2': (data) async => SignupCreateAcc2Widget(),
  'SignupResetPass': (data) async => SignupResetPassWidget(),
  'SignupWelcomeBack': (data) async => SignupWelcomeBackWidget(),
  'updateProfile': (data) async => UpdateProfileWidget(),
  'Settings': (data) async => SettingsWidget(),
  'Feedback': (data) async => FeedbackWidget(),
  'JournalAddcomment': (data) async => JournalAddcommentWidget(),
  'JournalEntries': (data) async => JournalEntriesWidget(),
  'JournalEntry': (data) async => JournalEntryWidget(
        gratitudeEntryRef: getParameter(data, 'gratitudeEntryRef'),
      ),
  'ProgramJournalEntries': (data) async => ProgramJournalEntriesWidget(),
  'ProgramJournalEntry': (data) async => ProgramJournalEntryWidget(
        journalEntryRef: getParameter(data, 'journalEntryRef'),
      ),
  'TermsConditions': (data) async => TermsConditionsWidget(),
  'PrivacyStatement': (data) async => PrivacyStatementWidget(),
  'PaymentUnlock': (data) async => PaymentUnlockWidget(),
  'PaymentSuccessful': (data) async => PaymentSuccessfulWidget(),
  'PaymentError': (data) async => PaymentErrorWidget(),
  'PaymentRestore': (data) async => PaymentRestoreWidget(),
  'PaymentCancelled': (data) async => PaymentCancelledWidget(),
  'PremiumRestored': (data) async => PremiumRestoredWidget(),
  'PremiumExpired': (data) async => PremiumExpiredWidget(),
  'Help': (data) async => HelpWidget(),
  'ProgramEntryPaid': (data) async => ProgramEntryPaidWidget(
        refFormList: getParameter(data, 'refFormList'),
      ),
  'VideoPlayerCourse': (data) async => VideoPlayerCourseWidget(
        courseRefPlayer: getParameter(data, 'courseRefPlayer'),
        videosRefPlayer: getParameter(data, 'videosRefPlayer'),
      ),
  'CourseAddcomment': (data) async => CourseAddcommentWidget(
        courseRefAddcomment: getParameter(data, 'courseRefAddcomment'),
      ),
  'YouDidIt': (data) async => YouDidItWidget(),
  'QuitCourse': (data) async => QuitCourseWidget(
        courseRefQuit: getParameter(data, 'courseRefQuit'),
      ),
  'DeleteProgress': (data) async => DeleteProgressWidget(
        courseRefDelProgr: getParameter(data, 'courseRefDelProgr'),
      ),
  'VideoPlayerMeditation': (data) async => VideoPlayerMeditationWidget(),
  'VideoPlaAffirmation': (data) async => VideoPlaAffirmationWidget(
        randomNumber: getParameter(data, 'randomNumber'),
      ),
  'VideoPlayerMindfSession': (data) async => VideoPlayerMindfSessionWidget(
        mindfulRefPlayer: getParameter(data, 'mindfulRefPlayer'),
        mindfulVideosRefPlayer: getParameter(data, 'mindfulVideosRefPlayer'),
      ),
  'SessionEntryPaid': (data) async => SessionEntryPaidWidget(
        refFromSessionsList: getParameter(data, 'refFromSessionsList'),
      ),
  'blazeScreen': (data) async => BlazeScreenWidget(
        blazeVideoRef: getParameter(data, 'blazeVideoRef'),
      ),
  'PaymentUnlockForScreenshot': (data) async =>
      PaymentUnlockForScreenshotWidget(),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

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
