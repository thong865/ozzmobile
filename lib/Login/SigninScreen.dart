import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:ohaomob/widgets/ITextInput.dart';
import 'package:ohaomob/widgets/ITextInputPassword.dart';
import 'package:ohaomob/widgets/ITextInputPhone.dart';
import 'package:ohaomob/widgets/MeRemember.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen>
    with TickerProviderStateMixin {
  final isRemember = false;
  final isMobileLogin = true;
  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      final local_auth = LocalAuthentication();
      bool _isBiometricSupported = await local_auth.isDeviceSupported();
      bool canCheckBiometrics = await local_auth.canCheckBiometrics;
      if (_isBiometricSupported && canCheckBiometrics) {
        await local_auth.authenticate(
            localizedReason: 'BIO',
            options: const AuthenticationOptions(biometricOnly: true));
        setState(() {});
      }
    });
    // setupTriggerAnimations(
    //   animationsMap.values
    //       .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
    //   this,
    // );
  }

  // @override
  // void dispose() {
  //   cpasswordController?.dispose();
  //   passwordController2?.dispose();
  //   usernameController2?.dispose();
  //   usernameController3?.dispose();
  //   usernameController4?.dispose();
  //   passwordController1?.dispose();
  //   usernameController1?.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width * 10,
                  height: MediaQuery.of(context).size.height * 1,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(
                          // color:
                          //     FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Hero(
                              tag: 'logo_ani',
                              transitionOnUserGestures: true,
                              child: Container(
                                  width: 120,
                                  height: 120,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/ohzao-logo.png'),
                                  )),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 20,
                              decoration: BoxDecoration(
                                  // color: FlutterFlowTheme.of(context)
                                  //     .secondaryBackground,
                                  ),
                            ),
                            Text(
                              'ddd',
                              // style: FlutterFlowTheme.of(context)
                              //     .bodyText1
                              //     .override(
                              //       fontFamily: 'lao somvang',
                              //       fontSize: 25,
                              //       useGoogleFonts: false,
                              //     ),
                            ),
                            Text(
                              "Welcome to ohzao agency Easy",
                              // style: FlutterFlowTheme.of(context)
                              //     .bodyText1
                              //     .override(
                              //       fontFamily: 'lao somvang',
                              //       fontSize: 14,
                              //       useGoogleFonts: false,
                              //     ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 20,
                              decoration: BoxDecoration(
                                  // color: FlutterFlowTheme.of(context)
                                  //     .secondaryBackground,
                                  ),
                            ),
                            isRemember
                                ? MeRememberWidget()
                                : !isMobileLogin
                                    ? TextInputPhone()
                                    : ITextInput(),
                            ITextInputPassword(),
                            Row(
                              children: [
                                Checkbox(
                                  value: true,
                                  onChanged: (value) {},
                                ),
                                Text('Remember Me')
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Wrap(
                              spacing: 5,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.transparent, // foreground
                                  ),
                                  child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent),
                                      width: MediaQuery.of(context).size.width /
                                          2.5,
                                      child: Row(
                                        children: [
                                          Icon(Icons.facebook_outlined),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            'Facebook',
                                            style: TextStyle(fontSize: 14),
                                          )
                                        ],
                                      )),
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  minWidth:
                                      MediaQuery.of(context).size.width / 2.5,
                                  height: 50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  color: Colors.red,
                                  child: Text('Signin'),
                                ),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 10,
                              decoration: BoxDecoration(
                                  // color: FlutterFlowTheme.of(context)
                                  //     .secondaryBackground,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                right: 30,
                child: Text('<< Swipe to Register'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
