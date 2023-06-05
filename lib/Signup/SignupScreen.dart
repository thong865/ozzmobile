import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:ohaomob/widgets/ITextInput.dart';
import 'package:ohaomob/widgets/ITextInputPassword.dart';
import 'package:ohaomob/widgets/ITextInputPhone.dart';
import 'package:ohaomob/widgets/MeRemember.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>
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
                    child: PageView(
                      controller: PageController(initialPage: 0),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(
                              // color:
                              //     FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
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
                                ITextInput(),
                                ITextInput(),
                                TextInputPhone(),
                                ITextInputPassword(),
                                ITextInputPassword(),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: true,
                                      onChanged: (value) {},
                                    ),
                                    Text('Accept Our term')
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  minWidth:
                                      MediaQuery.of(context).size.width - 100,
                                  height: 50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  color: Colors.red,
                                  child: Text('Signin'),
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
                      ],
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
