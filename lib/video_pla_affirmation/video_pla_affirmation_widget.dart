import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoPlaAffirmationWidget extends StatefulWidget {
  const VideoPlaAffirmationWidget({
    Key key,
    this.randomNumber,
  }) : super(key: key);

  final int randomNumber;

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
        queryBuilder: (videoAffirmationsRecord) => videoAffirmationsRecord
            .where('videoIndex', isEqualTo: widget.randomNumber),
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
        List<VideoAffirmationsRecord>
            videoPlaAffirmationVideoAffirmationsRecordList = snapshot.data;
        final videoPlaAffirmationVideoAffirmationsRecord =
            videoPlaAffirmationVideoAffirmationsRecordList.isNotEmpty
                ? videoPlaAffirmationVideoAffirmationsRecordList.first
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
                    path: videoPlaAffirmationVideoAffirmationsRecord.videoLink,
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
                  padding: EdgeInsetsDirectional.fromSTEB(20, 46, 0, 0),
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
