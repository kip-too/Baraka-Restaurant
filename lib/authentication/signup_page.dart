import 'package:baraka/authentication/signin_page.dart';
import 'package:baraka/configs/test_url.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth/bloc/authentication_bloc.dart';
import '../configs/animation/scale_route.dart';
import '../widgets/auth/signup/facebookgoogle.dart';
import '../widgets/auth/signup/signinbutton.dart';

class SignUpPage extends StatelessWidget {
  static const String id = 'sign_up_page';
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    String firstName;
    String lastName;
    String phoneNumber;
    String invitationCode;

    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;

    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 30),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: InkWell(
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.close),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Flexible(
              flex: 15,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 100,
                      alignment: Alignment.center,
                      child: Image.network(restaurantLogo),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: TextField(
                            onChanged: (value) {
                              firstName = value;
                            },
                            showCursor: true,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              fillColor: const Color(0xFFF2F3F5),
                              hintStyle: TextStyle(
                                color: const Color(0xFF666666),
                                fontFamily: defaultFontFamily,
                                fontSize: defaultFontSize,
                              ),
                              hintText: "First Name",
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          flex: 1,
                          child: TextField(
                            onChanged: (value) {
                              lastName = value;
                            },
                            showCursor: true,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              fillColor: const Color(0xFFF2F3F5),
                              hintStyle: TextStyle(
                                color: const Color(0xFF666666),
                                fontFamily: defaultFontFamily,
                                fontSize: defaultFontSize,
                              ),
                              hintText: "Last Name",
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      onChanged: (value) {
                        phoneNumber = value;
                      },
                      showCursor: true,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.phone,
                          color: const Color(0xFF666666),
                          size: defaultIconSize,
                        ),
                        fillColor: const Color(0xFFF2F3F5),
                        hintStyle: TextStyle(
                            color: const Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize),
                        hintText: "Phone Number",
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      onChanged: (value) {
                        invitationCode = value;
                      },
                      showCursor: true,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.code,
                          color: const Color(0xFF666666),
                          size: defaultIconSize,
                        ),
                        fillColor: const Color(0xFFF2F3F5),
                        hintStyle: TextStyle(
                          color: const Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize,
                        ),
                        hintText: "Invitation Code",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.info_outline,
                              color: const Color(0xFF666666),
                              size: defaultIconSize,
                            ),
                            Text(
                              " Leave empty if you don't have Invitation Code",
                              style: TextStyle(
                                color: const Color(0xFF666666),
                                fontFamily: defaultFontFamily,
                                fontSize: defaultFontSize,
                                fontStyle: FontStyle.normal,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    const SignInButtonWidget(),
                    const SizedBox(
                      height: 10,
                    ),
                    const FacebookGoogleLogin(),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        color: const Color(0xFF666666),
                        fontFamily: defaultFontFamily,
                        fontSize: defaultFontSize,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    BlocListener<AuthenticationBloc, AuthenticationState>(
                      listener: (context, state) {
                        if (state is SuccessAuthenticationstate) {}
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context, ScaleRoute(page: const SignInPage()));
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: const Color(0xFFf7418c),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
