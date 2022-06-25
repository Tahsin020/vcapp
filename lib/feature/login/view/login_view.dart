import 'package:flutter/material.dart';
import 'package:vcapp/feature/add_corporate/view/add_corporate_view.dart';
import 'package:vcapp/feature/register/view/register_view.dart';
import 'package:vcapp/product/appbar/appbar.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline), color: Colors.black)],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff262d53),
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
                  'Login',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'Login to continue',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Container(
                  height: 291,
                  width: 336,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Column(
                      children: [
                        const _TextFormField(
                          hintText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: context.dynamicHeight(0.01),
                        ),
                        const _TextFormField(
                          hintText: 'Password',
                          keyboardType: TextInputType.visiblePassword,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 31),
                          child: ElevatedButtonWidget(
                            title: 'Sign In',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AddCorporate(),
                                  ));
                            },
                            color: const Color(0xfff30100),
                          ),
                        ),
                        TextButton(onPressed: () {}, child: const Text('Forgot Password?')),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Don’t have an account?',
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
                        child: const Text(' Register Now'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.question_mark_outlined), color: Colors.black)],
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff262d53),
          )),
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
      decoration: InputDecoration(hintText: hintText, focusColor: Colors.black),
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
