import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../video_player_course/video_player_course_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class BlazeScreenWidget extends StatefulWidget {
  const BlazeScreenWidget({
    Key key,
    this.blazeVideoRef,
  }) : super(key: key);

  final DocumentReference blazeVideoRef;

  @override
  _BlazeScreenWidgetState createState() => _BlazeScreenWidgetState();
}

class _BlazeScreenWidgetState extends State<BlazeScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1000));
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => VideoPlayerCourseWidget(
            courseRefPlayer: widget.blazeVideoRef,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.asset(
                  'assets/images/onboarding_background_3.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
