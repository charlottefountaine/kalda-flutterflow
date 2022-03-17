import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyStatementWidget extends StatefulWidget {
  const PrivacyStatementWidget({Key key}) : super(key: key);

  @override
  _PrivacyStatementWidgetState createState() => _PrivacyStatementWidgetState();
}

class _PrivacyStatementWidgetState extends State<PrivacyStatementWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryText,
      body: Stack(
        children: [
          FlutterFlowWebView(
            url:
                'https://firebasestorage.googleapis.com/v0/b/kalda/o/kaldaPrivacyStatement.html?alt=media&token=658d10b2-16ec-4b1b-bfcd-64c047b7bf5b',
            bypass: false,
            verticalScroll: false,
            horizontalScroll: false,
          ),
        ],
      ),
    );
  }
}
