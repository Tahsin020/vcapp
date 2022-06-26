import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:vcapp/feature/login/view/login_view.dart';
import 'package:vcapp/product/constant/color.dart';
import 'package:vcapp/product/padding/page_padding.dart';
import 'package:vcapp/product/widget/elevated_button_widget.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final String _registerImagePath = 'asset/images/register.png';
  final String _registerContinue = 'Register continue';
  final String _register = 'Register';
  final String _email = 'Email';
  final String _password = 'Password';
  final String _confirmPassword = 'Confirm Password';
  final String _member = 'Already a member?';
  final String _login = 'Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline), color: black)],
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new_outlined, color: blueDepths)),
        ),
        body: Padding(
          padding: const PagePadding.all(),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Image.asset(_registerImagePath),
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Text(
                      _register,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    _registerContinue,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: context.dynamicHeight(0.05),
                  ),
                  Container(
                    width: 336,
                    height: 320,
                    color: white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                      child: Column(
                        children: [
                          _TextFormField(
                            hintText: _email,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: context.dynamicHeight(0.01),
                          ),
                          _TextFormField(
                            hintText: _password,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                          SizedBox(
                            height: context.dynamicHeight(0.01),
                          ),
                          _TextFormField(
                            hintText: _confirmPassword,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 22),
                            child: ElevatedButtonWidget(
                              title: _register,
                              onPressed: () {},
                              color: spectrumRed,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _member,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginView(),
                                ));
                          },
                          child:  Text(_login)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _TextFormField extends StatelessWidget {
  const _TextFormField({
    Key? key,
    this.hintText,
    this.keyboardType,
  }) : super(key: key);
  final String? hintText;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(hintText: hintText, focusColor: black),
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
