import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:volunteer_services/widgets.dart';

import 'fixsizebox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();


  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key:formKey ,
            child: FixSizedBox(
              maxWidth: context.width() ,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 0),
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(top: 16,bottom: 24),
                  child: Column(
                    children: [
                      16.height,
                      Column(
                        children: [
                          AppTextField(
                            controller: emailController,
                              focus: emailFocus,
                              nextFocus: passwordFocus,
                              textFieldType: TextFieldType.EMAIL,
                              textInputAction: TextInputAction.next,
                            decoration: inputDecorationRecipe(labelTextName: 'email')

                              ),
                          16.height,
                        AppTextField(
                            textFieldType: TextFieldType.PASSWORD,
                          controller: passController,
                          focus: passwordFocus,
                          textInputAction: TextInputAction.done,


                        )


                        ],
                      )


                    ],
                  ),
                ),


              ),


            ),

          )

        ],
      ),

    );
  }
}
