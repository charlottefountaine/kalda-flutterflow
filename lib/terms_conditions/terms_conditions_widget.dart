import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsConditionsWidget extends StatefulWidget {
  const TermsConditionsWidget({Key key}) : super(key: key);

  @override
  _TermsConditionsWidgetState createState() => _TermsConditionsWidgetState();
}

class _TermsConditionsWidgetState extends State<TermsConditionsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
          onPressed: () async {
            Navigator.pop(context);
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
                'https://firebasestorage.googleapis.com/v0/b/kalda/o/kaldaTermsAndConditions.html?alt=media&token=72edcf27-e31d-40d5-aa89-3fa09b8ae162',
            bypass: false,
            verticalScroll: false,
            horizontalScroll: false,
          ),
        ],
      ),
    );
  }
}
