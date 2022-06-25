import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:vcapp/feature/login/view/login_view.dart';
import 'package:vcapp/product/padding/page_padding.dart';
import 'package:vcapp/product/widget/elevated_button_widget.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon:const Icon(Icons.help_outline), color: Colors.black)],
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
                children: [
                  Image.asset('asset/images/register.png'),
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Text(
                      'Register',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    'Register continue',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: context.dynamicHeight(0.05),
                  ),
                  Container(
                    width: 336,
                    height: 320,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
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
                          SizedBox(
                            height: context.dynamicHeight(0.01),
                          ),
                          const _TextFormField(
                            hintText: 'Confirm Password',
                            keyboardType: TextInputType.visiblePassword,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 22),
                            child: ElevatedButtonWidget(
                              title: 'Register',
                              onPressed: () {},
                              color: const Color(0xfff30100),
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
                        'Already a member?',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView(),));
                      }, child: const Text('Login')),
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
      decoration: InputDecoration(hintText: hintText, focusColor: Colors.black),
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
