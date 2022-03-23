import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../signup_create_acc/signup_create_acc_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({Key key}) : super(key: key);

  @override
  _OnboardingWidgetState createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageViewController ??=
                    PageController(initialPage: 0),
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Image.asset(
                          'assets/images/onboarding_background_1.png',
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                              child: Image.asset(
                                'assets/images/welcome-image.png',
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 50, 0, 85),
                              child: AutoSizeText(
                                'The mental health app for\nthe LGBTQIA+ community.\nWe\'re with you. 💜',
                                textAlign: TextAlign.justify,
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 22,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 0, 20, 126),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await pageViewController.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                                text: 'Continue',
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
                                showLoadingIndicator: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Image.asset(
                          'assets/images/onboarding_background_2.png',
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 140, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      child: FlutterFlowExpandedImageView(
                                        image: Image.asset(
                                          'assets/images/support-imge.png',
                                          fit: BoxFit.contain,
                                        ),
                                        allowRotation: false,
                                        tag: 'imageTag4',
                                        useHeroAnimation: true,
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: 'imageTag4',
                                  transitionOnUserGestures: true,
                                  child: Image.asset(
                                    'assets/images/support-imge.png',
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 20),
                              child: Text(
                                'Being LGBTQIA+ brings with \nit unique challenges. Our \nLGBT+ therapists have \ncreated programs to \nsupport you.',
                                textAlign: TextAlign.justify,
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 22,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 0, 20, 126),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await pageViewController.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                                text: 'Continue',
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Image.asset(
                          'assets/images/onboarding_background_3.png',
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 140, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      child: FlutterFlowExpandedImageView(
                                        image: Image.asset(
                                          'assets/images/habits-image.png',
                                          fit: BoxFit.contain,
                                        ),
                                        allowRotation: false,
                                        tag: 'imageTag6',
                                        useHeroAnimation: true,
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: 'imageTag6',
                                  transitionOnUserGestures: true,
                                  child: Image.asset(
                                    'assets/images/habits-image.png',
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 85),
                              child: Text(
                                'Affirmations, mindfulness \nexercises and more to \nsupport you day-to-day.',
                                textAlign: TextAlign.justify,
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 22,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 0, 20, 126),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  setState(() =>
                                      FFAppState().onboardingComplete = true);
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          SignupCreateAccWidget(),
                                    ),
                                  );
                                },
                                text: 'Get Started',
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.88),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: SmoothPageIndicator(
                    controller: pageViewController ??=
                        PageController(initialPage: 0),
                    count: 3,
                    axisDirection: Axis.horizontal,
                    onDotClicked: (i) {
                      pageViewController.animateToPage(
                        i,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    effect: ExpandingDotsEffect(
                      expansionFactor: 2,
                      spacing: 8,
                      radius: 16,
                      dotWidth: 12,
                      dotHeight: 12,
                      dotColor: Colors.black,
                      activeDotColor: Colors.black,
                      paintStyle: PaintingStyle.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
