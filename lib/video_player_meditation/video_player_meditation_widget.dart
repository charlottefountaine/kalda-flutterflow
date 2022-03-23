import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoPlayerMeditationWidget extends StatefulWidget {
  const VideoPlayerMeditationWidget({Key key}) : super(key: key);

  @override
  _VideoPlayerMeditationWidgetState createState() =>
      _VideoPlayerMeditationWidgetState();
}

class _VideoPlayerMeditationWidgetState
    extends State<VideoPlayerMeditationWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<VideoMeditationsRecord>>(
      stream: queryVideoMeditationsRecord(
        queryBuilder: (videoMeditationsRecord) => videoMeditationsRecord
            .where('videoIndex', isEqualTo: FFAppState().meditIndex),
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
        List<VideoMeditationsRecord>
            videoPlayerMeditationVideoMeditationsRecordList = snapshot.data;
        final videoPlayerMeditationVideoMeditationsRecord =
            videoPlayerMeditationVideoMeditationsRecordList.isNotEmpty
                ? videoPlayerMeditationVideoMeditationsRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.black,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: FlutterFlowVideoPlayer(
                    path: videoPlayerMeditationVideoMeditationsRecord.videoLink,
                    videoType: VideoType.network,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    autoPlay: true,
                    looping: false,
                    showControls: false,
                    allowFullScreen: false,
                    allowPlaybackSpeedMenu: false,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 108, 0, 0),
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
          ),
        );
      },
    );
  }
}
