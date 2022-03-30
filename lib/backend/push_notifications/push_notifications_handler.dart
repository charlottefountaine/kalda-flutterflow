import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../onboarding/onboarding_widget.dart';
import '../../signup_create_acc/signup_create_acc_widget.dart';
import '../../signup_create_acc2/signup_create_acc2_widget.dart';
import '../../signup_welcome_back/signup_welcome_back_widget.dart';
import '../../signup_reset_pass/signup_reset_pass_widget.dart';
import '../../update_profile/update_profile_widget.dart';
import '../../settings/settings_widget.dart';
import '../../feedback/feedback_widget.dart';
import '../../journal_addcomment/journal_addcomment_widget.dart';
import '../../journal_entries/journal_entries_widget.dart';
import '../../journal_entry/journal_entry_widget.dart';
import '../../program_journal_entries/program_journal_entries_widget.dart';
import '../../program_journal_entry/program_journal_entry_widget.dart';
import '../../terms_conditions/terms_conditions_widget.dart';
import '../../privacy_statement/privacy_statement_widget.dart';
import '../../payment_unlock/payment_unlock_widget.dart';
import '../../payment_successful/payment_successful_widget.dart';
import '../../payment_error/payment_error_widget.dart';
import '../../payment_cancelled/payment_cancelled_widget.dart';
import '../../premium_restored/premium_restored_widget.dart';
import '../../premium_expired/premium_expired_widget.dart';
import '../../help/help_widget.dart';
import '../../program_entry_paid/program_entry_paid_widget.dart';
import '../../video_player_course/video_player_course_widget.dart';
import '../../course_addcomment/course_addcomment_widget.dart';
import '../../you_did_it/you_did_it_widget.dart';
import '../../quit_course/quit_course_widget.dart';
import '../../delete_progress/delete_progress_widget.dart';
import '../../video_player_meditation/video_player_meditation_widget.dart';
import '../../video_pla_affirmation/video_pla_affirmation_widget.dart';
import '../../video_player_mindf_session/video_player_mindf_session_widget.dart';
import '../../session_entry_paid/session_entry_paid_widget.dart';
import '../../blaze_screen/blaze_screen_widget.dart';

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
  'SignupWelcomeBack': (data) async => SignupWelcomeBackWidget(),
  'SignupResetPass': (data) async => SignupResetPassWidget(),
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
