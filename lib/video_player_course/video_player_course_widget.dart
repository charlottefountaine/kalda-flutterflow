import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../course_addcomment/course_addcomment_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../quit_course/quit_course_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoPlayerCourseWidget extends StatefulWidget {
  const VideoPlayerCourseWidget({
    Key key,
    this.courseRefPlayer,
    this.videosRefPlayer,
  }) : super(key: key);

  final DocumentReference courseRefPlayer;
  final DocumentReference videosRefPlayer;

  @override
  _VideoPlayerCourseWidgetState createState() =>
      _VideoPlayerCourseWidgetState();
}

class _VideoPlayerCourseWidgetState extends State<VideoPlayerCourseWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersCoursesRecord>>(
      stream: queryUsersCoursesRecord(
        queryBuilder: (usersCoursesRecord) => usersCoursesRecord
            .where('userRef', isEqualTo: currentUserReference)
            .where('refCourse', isEqualTo: widget.courseRefPlayer),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<UsersCoursesRecord> videoPlayerCourseUsersCoursesRecordList =
            snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final videoPlayerCourseUsersCoursesRecord =
            videoPlayerCourseUsersCoursesRecordList.isNotEmpty
                ? videoPlayerCourseUsersCoursesRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.black,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(
              children: [
                StreamBuilder<List<VideosRecord>>(
                  stream: queryVideosRecord(
                    queryBuilder: (videosRecord) => videosRecord
                        .where('courseRef', isEqualTo: widget.courseRefPlayer)
                        .where('index',
                            isEqualTo:
                                videoPlayerCourseUsersCoursesRecord.progress),
                    singleRecord: true,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    List<VideosRecord> videoPlayerVideosRecordList =
                        snapshot.data;
                    // Return an empty Container when the document does not exist.
                    if (snapshot.data.isEmpty) {
                      return Container();
                    }
                    final videoPlayerVideosRecord =
                        videoPlayerVideosRecordList.isNotEmpty
                            ? videoPlayerVideosRecordList.first
                            : null;
                    return FlutterFlowVideoPlayer(
                      path: videoPlayerVideosRecord.videoLink,
                      videoType: VideoType.network,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1,
                      autoPlay: true,
                      looping: false,
                      showControls: false,
                      allowFullScreen: false,
                      allowPlaybackSpeedMenu: false,
                    );
                  },
                ),
                Align(
                  alignment: AlignmentDirectional(-0.06, 1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
                    child: FFButtonWidget(
                      onPressed: () async {
                        Navigator.pop(context);
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseAddcommentWidget(
                              courseRefAddcomment: widget.courseRefPlayer,
                            ),
                          ),
                        );
                      },
                      text: 'Next',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 56,
                        color: FlutterFlowTheme.of(context).alternate,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 46, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuitCourseWidget(
                                courseRefQuit: widget.courseRefPlayer,
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
              ],
            ),
          ),
        );
      },
    );
  }
}
