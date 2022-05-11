import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../blaze_screen/blaze_screen_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DeleteProgressWidget extends StatefulWidget {
  const DeleteProgressWidget({
    Key key,
    this.courseRefDelProgr,
  }) : super(key: key);

  final DocumentReference courseRefDelProgr;

  @override
  _DeleteProgressWidgetState createState() => _DeleteProgressWidgetState();
}

class _DeleteProgressWidgetState extends State<DeleteProgressWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'DeleteProgress'});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersCoursesRecord>>(
      stream: queryUsersCoursesRecord(
        queryBuilder: (usersCoursesRecord) => usersCoursesRecord
            .where('userRef', isEqualTo: currentUserReference)
            .where('refCourse', isEqualTo: widget.courseRefDelProgr),
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
        List<UsersCoursesRecord> deleteProgressUsersCoursesRecordList =
            snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final deleteProgressUsersCoursesRecord =
            deleteProgressUsersCoursesRecordList.isNotEmpty
                ? deleteProgressUsersCoursesRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryText,
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: Image.asset(
                  'assets/images/signup_background.png',
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: AutoSizeText(
                              'Are you sure you want to start the course again?',
                              textAlign: TextAlign.start,
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 40,
                                        fontWeight: FontWeight.w600,
                                        lineHeight: 1.2,
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: AutoSizeText(
                            'The progress would be deleted, but your answers after the video will be saved and available in the course journal.',
                            textAlign: TextAlign.start,
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ),
                      ],
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
                                  logFirebaseEvent('Button-ON_TAP');
                                  logFirebaseEvent('Button-Backend-Call');

                                  final usersCoursesUpdateData =
                                      createUsersCoursesRecordData(
                                    progress: 0,
                                    courseFinished: false,
                                  );
                                  await deleteProgressUsersCoursesRecord
                                      .reference
                                      .update(usersCoursesUpdateData);
                                  logFirebaseEvent('Button-Navigate-To');
                                  await Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BlazeScreenWidget(
                                        blazeVideoRef: widget.courseRefDelProgr,
                                      ),
                                    ),
                                    (r) => false,
                                  );
                                },
                                text: 'Start the course again',
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          logFirebaseEvent('Container-ON_TAP');
                          logFirebaseEvent('Container-Navigate-Back');
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Color(0xFF000001),
                              width: 2,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              'Return',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF000001),
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
