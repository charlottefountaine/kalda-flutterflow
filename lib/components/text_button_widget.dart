import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../signup_welcome_back/signup_welcome_back_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TextButtonWidget extends StatefulWidget {
  const TextButtonWidget({Key key}) : super(key: key);

  @override
  _TextButtonWidgetState createState() => _TextButtonWidgetState();
}

class _TextButtonWidgetState extends State<TextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 60),
      child: InkWell(
        onTap: () async {
          logFirebaseEvent('Container-ON_TAP');
          logFirebaseEvent('Container-Navigate-To');
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignupWelcomeBackWidget(),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          height: 56,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Text(
              'Sign in',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
