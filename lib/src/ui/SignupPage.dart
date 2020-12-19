import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grpc_flutter/protos/auth/AuthService.pb.dart';
import 'package:grpc_flutter/src/repository/AuthRepository.dart';
import 'package:grpc_flutter/src/usecases/OtpVerificationUseCase.dart';
import 'package:grpc_flutter/src/usecases/SignupUseCase.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignupPage extends StatefulWidget {
  final SignupUseCase signupUseCase = Get.put(SignupUseCase(AuthRepository()));
  final OtpVerificationUseCode otpVerificationUseCode =
      Get.put(OtpVerificationUseCode(AuthRepository()));

  @override
  _SignupPageState createState() =>
      _SignupPageState(signupUseCase, otpVerificationUseCode);
}

class _SignupPageState extends State<SignupPage> {
  final SignupUseCase signupUseCase;
  final OtpVerificationUseCode otpVerificationUseCode;
  String phoneNumber, verificationId;
  String otp, authStatus = "";

  int authCode = 0;

  bool loading = false;

  _SignupPageState(this.signupUseCase, this.otpVerificationUseCode);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                "Phone Auth📱",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.message,
                color: Colors.green,
                size: 120,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Please enter the phone number followed by country code",
                style: TextStyle(color: Colors.green),
              ),
              IntlPhoneField(
                initialCountryCode: 'IN',
                decoration: new InputDecoration(
                  icon: Icon(
                    Icons.phone_iphone,
                  ),
                  hintText: "Enter Your Phone Number...",
                  labelText: 'Phone Number *',
                ),
                onChanged: (value) {
                  phoneNumber = value.completeNumber;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () => phoneNumber == null ? null : verifyPhoneNow(),
                child: Text(
                  "Generate OTP",
                  style: TextStyle(color: Colors.white),
                ),
                elevation: 7.0,
                color: Colors.green,
              ),
              SizedBox(
                height: 20,
              ),
              loading
                  ? CircularProgressIndicator()
                  : Text(
                      authStatus == "" ? "" : authStatus,
                      style: TextStyle(
                          color: authCode != 200 ? Colors.red : Colors.green),
                    )
            ],
          ),
        ),
      ),
    );
  }

  otpDialogBox(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: Text('Enter your OTP'),
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30),
                    ),
                  ),
                ),
                onChanged: (value) {
                  otp = value;
                },
              ),
            ),
            contentPadding: EdgeInsets.all(10.0),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  submitVerifyOtp();
                },
                child: Text(
                  'Submit',
                ),
              ),
            ],
          );
        });
  }

  verifyPhoneNow() async {
    if (phoneNumber.isNotEmpty) {
      progressBar(true);
      var request = AuthRequest();
      request.phoneNumber = phoneNumber;
      try {
        var value = await signupUseCase.perform(request);
        handleSuccess(value);
        otpDialogBox(context);
      } catch (ex) {
        handleError(ex);
      }
      progressBar(false);
    }
  }

  void handleError(ex) {
    setState(() {
      authCode = 201;
      authStatus = ex.toString();
    });
  }

  void handleSuccess(AuthResponse value) {
    setState(() {
      authCode = value.code;
      authStatus = value.message;
    });
  }

  void progressBar(bool bool) {
    setState(() {
      loading = bool;
    });
  }

  void submitVerifyOtp() async {
    if (otp.isNotEmpty) {
      progressBar(true);
      var request = AuthVerify();
      request.phoneNumber = phoneNumber;
      request.code = otp;
      try {
        var value = await otpVerificationUseCode.perform(request);
        handleSuccess(value);
      } catch (ex) {
        handleError(ex);
      }
      progressBar(false);
    }
  }
}
