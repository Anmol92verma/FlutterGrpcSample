import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grpc_flutter/src/generated/lib/protos/AuthService.pb.dart';
import 'package:grpc_flutter/src/repository/AuthRepository.dart';
import 'package:grpc_flutter/src/usecases/SignupUseCase.dart';

class SignupPage extends StatelessWidget {
  final SignupUseCase signupUseCase = Get.put(SignupUseCase(AuthRepository()));

  final TextEditingController fullNameController =
      TextEditingController(text: '');
  final TextEditingController userNameController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Form(
          child: Column(
            children: [
              TextFormField(
                  controller: fullNameController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'What do people call you?',
                    labelText: 'Name *',
                  ),
                  onSaved: (String value) {},
                  validator: (String value) {
                    return value.isEmpty ? 'Empty Name!' : null;
                  }),
              TextFormField(
                  controller: userNameController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'What will be your user name?',
                    labelText: 'UserName *',
                  ),
                  onSaved: (String value) {},
                  validator: (String value) {
                    return value.isEmpty ? 'Empty UserName!' : null;
                  }),
              FlatButton(
                child: Text("Signup"),
                onPressed: () {
                  var request = SignupRequest();
                  request.userName = userNameController.value.text;
                  request.fullName = fullNameController.value.text;
                  signupUseCase
                      .perform(request)
                      .then((value) => print(value.message));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
