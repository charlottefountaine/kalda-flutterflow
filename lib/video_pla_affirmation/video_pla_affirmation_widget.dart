import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoPlaAffirmationWidget extends StatefulWidget {
  const VideoPlaAffirmationWidget({Key key}) : super(key: key);

  @override
  _VideoPlaAffirmationWidgetState createState() =>
      _VideoPlaAffirmationWidgetState();
}

class _VideoPlaAffirmationWidgetState extends State<VideoPlaAffirmationWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<VideoAffirmationsRecord>>(
      stream: queryVideoAffirmationsRecord(
        queryBuilder: (videoAffirmationsRecord) =>
            videoAffirmationsRecord.orderBy('videoIndex'),
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
        List<VideoAffirmationsRecord>
            videoPlaAffirmationVideoAffirmationsRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final videoPlaAffirmationVideoAffirmationsRecord =
            videoPlaAffirmationVideoAffirmationsRecordList.isNotEmpty
                ? videoPlaAffirmationVideoAffirmationsRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFF5F5F5),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 48, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.chevron_left,
                          color: Colors.black,
                          size: 36,
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: FlutterFlowVideoPlayer(
                    path: videoPlaAffirmationVideoAffirmationsRecord.videoLink,
                    videoType: VideoType.network,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    autoPlay: true,
                    looping: false,
                    showControls: true,
                    allowFullScreen: true,
                    allowPlaybackSpeedMenu: true,
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
