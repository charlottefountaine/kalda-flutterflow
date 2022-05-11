import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoPlayerMindfSessionWidget extends StatefulWidget {
  const VideoPlayerMindfSessionWidget({
    Key key,
    this.mindfulRefPlayer,
    this.mindfulVideosRefPlayer,
  }) : super(key: key);

  final DocumentReference mindfulRefPlayer;
  final DocumentReference mindfulVideosRefPlayer;

  @override
  _VideoPlayerMindfSessionWidgetState createState() =>
      _VideoPlayerMindfSessionWidgetState();
}

class _VideoPlayerMindfSessionWidgetState
    extends State<VideoPlayerMindfSessionWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'VideoPlayerMindfSession'});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MindfulnessSessionsRecord>(
      stream: MindfulnessSessionsRecord.getDocument(widget.mindfulRefPlayer),
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
        final videoPlayerMindfSessionMindfulnessSessionsRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.black,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/onboarding_background_3.png',
                      ).image,
                    ),
                  ),
                  child: FlutterFlowVideoPlayer(
                    path: videoPlayerMindfSessionMindfulnessSessionsRecord
                        .sessionVideo,
                    videoType: VideoType.network,
                    width: MediaQuery.of(context).size.width * 0.83,
                    autoPlay: true,
                    looping: false,
                    showControls: false,
                    allowFullScreen: false,
                    allowPlaybackSpeedMenu: false,
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
                          logFirebaseEvent('Icon-ON_TAP');
                          logFirebaseEvent('Icon-Navigate-Back');
                          Navigator.pop(context);
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
