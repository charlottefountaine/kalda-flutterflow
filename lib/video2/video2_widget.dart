import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Video2Widget extends StatefulWidget {
  const Video2Widget({Key key}) : super(key: key);

  @override
  _Video2WidgetState createState() => _Video2WidgetState();
}

class _Video2WidgetState extends State<Video2Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: FlutterFlowVideoPlayer(
          path: 'https://streamable.com/l/vu9k5t/mp4-mobile.mp4',
          videoType: VideoType.network,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          autoPlay: true,
          looping: true,
          showControls: true,
          allowFullScreen: true,
          allowPlaybackSpeedMenu: true,
        ),
      ),
    );
  }
}
