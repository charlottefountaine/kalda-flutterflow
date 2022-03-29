import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../blaze_screen/blaze_screen_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../quit_course/quit_course_widget.dart';
import '../you_did_it/you_did_it_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseAddcommentWidget extends StatefulWidget {
  const CourseAddcommentWidget({
    Key key,
    this.courseRefAddcomment,
  }) : super(key: key);

  final DocumentReference courseRefAddcomment;

  @override
  _CourseAddcommentWidgetState createState() => _CourseAddcommentWidgetState();
}

class _CourseAddcommentWidgetState extends State<CourseAddcommentWidget>
    with TickerProviderStateMixin {
  TextEditingController usernameCreateAccController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      curve: Curves.easeIn,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(500, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    usernameCreateAccController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersCoursesRecord>>(
      stream: queryUsersCoursesRecord(
        queryBuilder: (usersCoursesRecord) => usersCoursesRecord
            .where('userRef', isEqualTo: currentUserReference)
            .where('refCourse', isEqualTo: widget.courseRefAddcomment),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitPumpingHeart(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        List<UsersCoursesRecord> courseAddcommentUsersCoursesRecordList =
            snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final courseAddcommentUsersCoursesRecord =
            courseAddcommentUsersCoursesRecordList.isNotEmpty
                ? courseAddcommentUsersCoursesRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryText,
          body: StreamBuilder<List<VideosRecord>>(
            stream: queryVideosRecord(
              queryBuilder: (videosRecord) => videosRecord
                  .where('courseRef', isEqualTo: widget.courseRefAddcomment)
                  .where('index',
                      isEqualTo: courseAddcommentUsersCoursesRecord.progress),
              singleRecord: true,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: SpinKitPumpingHeart(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 50,
                    ),
                  ),
                );
              }
              List<VideosRecord> containerVideosRecordList = snapshot.data;
              // Return an empty Container when the document does not exist.
              if (snapshot.data.isEmpty) {
                return Container();
              }
              final containerVideosRecord = containerVideosRecordList.isNotEmpty
                  ? containerVideosRecordList.first
                  : null;
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.asset(
                      'assets/images/onboarding_background_2.png',
                    ).image,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 46, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BlazeScreenWidget(
                                        blazeVideoRef:
                                            widget.courseRefAddcomment,
                                      ),
                                    ),
                                    (r) => false,
                                  );
                                },
                                child: Icon(
                                  Icons.chevron_left,
                                  color: Colors.black,
                                  size: 36,
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => QuitCourseWidget(
                                        courseRefQuit:
                                            widget.courseRefAddcomment,
                                      ),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.close,
                                  color: Colors.black,
                                  size: 36,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: AutoSizeText(
                                  containerVideosRecord.journalNoteText,
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        lineHeight: 1.3,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: usernameCreateAccController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: Color(0x77FFFFFF),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16, 16, 0, 16),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      ),
                                  textAlign: TextAlign.justify,
                                  maxLines: 4,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      final courseJournalCreateData =
                                          createCourseJournalRecordData(
                                        userRef: currentUserReference,
                                        courseRef: widget.courseRefAddcomment,
                                        question: valueOrDefault<String>(
                                          containerVideosRecord.journalNoteText,
                                          'Some question',
                                        ),
                                        answer: valueOrDefault<String>(
                                          usernameCreateAccController.text,
                                          '...',
                                        ),
                                        postTime: getCurrentTimestamp,
                                      );
                                      await CourseJournalRecord.collection
                                          .doc()
                                          .set(courseJournalCreateData);
                                      if (functions.progressCondition(
                                          courseAddcommentUsersCoursesRecord
                                              .dUPnumberOfLessons,
                                          courseAddcommentUsersCoursesRecord
                                              .progress)) {
                                        final usersCoursesUpdateData = {
                                          ...createUsersCoursesRecordData(
                                            courseFinished: true,
                                          ),
                                          'progress': FieldValue.increment(1),
                                        };
                                        await courseAddcommentUsersCoursesRecord
                                            .reference
                                            .update(usersCoursesUpdateData);
                                        await Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                YouDidItWidget(),
                                          ),
                                          (r) => false,
                                        );
                                      } else {
                                        final usersCoursesUpdateData = {
                                          'progress': FieldValue.increment(1),
                                        };
                                        await courseAddcommentUsersCoursesRecord
                                            .reference
                                            .update(usersCoursesUpdateData);
                                        await Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                BlazeScreenWidget(
                                              blazeVideoRef:
                                                  widget.courseRefAddcomment,
                                            ),
                                          ),
                                          (r) => false,
                                        );
                                      }
                                    },
                                    text: 'Submit',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 56,
                                      color: Color(0xFF00F3FD),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: 5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ).animated([animationsMap['columnOnPageLoadAnimation']]),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
