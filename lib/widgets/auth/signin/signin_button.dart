import 'package:baraka/authentication/signup_page.dart';
import 'package:baraka/screens/home/home_page.dart';
import 'package:baraka/widgets/progress_indicator/progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auth/bloc/authentication_bloc.dart';

class SignInButtonWidget extends StatelessWidget {
  const SignInButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color(0xFFfbab66),
          ),
          BoxShadow(
            color: Color(0xFFf7418c),
          ),
        ],
        gradient: LinearGradient(
            colors: [Color(0xFFf7418c), Color(0xFFfbab66)],
            begin: FractionalOffset(0.2, 0.2),
            end: FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          if (state is LoadingAUthenticationState) {
          } else if (state is SuccessAuthenticationstate) {
            Navigator.pushNamed(context, HomeScreen.id);
          }
        },
        child: MaterialButton(
            highlightColor: Colors.transparent,
            splashColor: const Color(0xFFf7418c),
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
              child: Text(
                "SIGN IN",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontFamily: "WorkSansBold"),
              ),
            ),
            onPressed: () {
              //print(phoneNumber.SignUpPage);
            }),
      ),
    );
  }
}
