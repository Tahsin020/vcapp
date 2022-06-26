import 'package:flutter/material.dart';
import 'package:vcapp/feature/add_corporate/view/add_corporate_view.dart';
import 'package:vcapp/feature/register/view/register_view.dart';
import 'package:vcapp/product/constant/color.dart';
import 'package:vcapp/product/padding/page_padding.dart';
import 'package:kartal/kartal.dart';
import 'package:vcapp/product/widget/elevated_button_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final String _loginName = 'asset/images/login.png';
  final String _loginContinue = 'Login to continue';
  final String _login = 'Login';
  final String _email = 'Email';
  final String _password = 'Password';
  final String _signIn = 'Sign In';
  final String _forgotPassword = 'Forgot Password?';
  final String _account = 'Don’t have an account?';
  final String _register = ' Register Now';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              icon: const Icon(Icons.help_outline),
              color: black)
        ],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: blueDepths,
            )),
      ),
      body: Padding(
        padding: const PagePadding.all(),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: SizedBox(
                    height: 171,
                    width: 184,
                    child: Image.asset(_loginName),
                  ),
                ),
                Text(
                  _login,
                  style: Theme.of(context).textTheme.headline4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    _loginContinue,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Container(
                  height: 291,
                  width: 336,
                  color: white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 31),
                          child: ElevatedButtonWidget(
                            title: _signIn,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AddCorporate(),
                                  ));
                            },
                            color: spectrumRed,
                          ),
                        ),
                        TextButton(onPressed: () {}, child: Text(_forgotPassword)),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      _account,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterView(),
                              ));
                        },
                        child: Text(_register))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
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
