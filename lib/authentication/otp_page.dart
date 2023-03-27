import 'package:baraka/configs/test_url.dart';
import 'package:baraka/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  OtpPageState createState() => OtpPageState();
}

class OtpPageState extends State<OtpPage> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _textControllers;

  @override
  void initState() {
    super.initState();

    // Initialize the focus nodes and text controllers for each OTP field
    _focusNodes = List.generate(
      6,
      (index) => FocusNode(),
    );

    _textControllers = List.generate(
      6,
      (index) => TextEditingController(),
    );
  }

  @override
  void dispose() {
    // Dispose the focus nodes and text controllers to avoid memory leaks
    _focusNodes.forEach((node) => node.dispose());
    _textControllers.forEach((controller) => controller.dispose());

    super.dispose();
  }

  void _onTextChanged(String value, int index) {
    if (value.length == 1) {
      // Move the focus to the next OTP field if a digit is entered
      if (index < _focusNodes.length - 1) {
        _focusNodes[index + 1].requestFocus();
      }
    } else if (value.isEmpty) {
      // Move the focus to the previous OTP field if the delete key is pressed
      if (index > 0) {
        _focusNodes[index - 1].requestFocus();
      }
    }
  }

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(restaurantLogo),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Enter the OTP code',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      _textControllers.length,
                      (index) => SizedBox(
                        width: 40,
                        child: TextField(
                          controller: _textControllers[index],
                          focusNode: _focusNodes[index],
                          autofocus: index == 0,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 24),
                          decoration: InputDecoration(
                            counterText: '',
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                          onChanged: (value) => _onTextChanged(value, index),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  MaterialButton(
                    onPressed: () {
                      // verifyUserPhoneNumber();
                    },
                    color: const Color(0xFFf7418c),
                    child: const Text(
                      'Verify',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
