import 'package:flutter/material.dart';
import 'package:vcapp/feature/login/view/login_view.dart';
import 'package:vcapp/feature/register/view/register_view.dart';
import 'package:vcapp/product/padding/page_padding.dart';
import 'package:vcapp/product/widget/elevated_button_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const PagePadding.all(),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 182,
                  height: 182,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset("asset/images/image4.png"),
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'Visiting Card',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  'Lorem ipsum, or lipsum as it is sometimes known',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(
                  height: 18,
                ),
                TabPageSelector(
                  controller: _tabController,
                ),
                const SizedBox(
                  height: 89,
                ),
                Container(
                  height: 233,
                  width: 336,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButtonWidget(
                          title: 'Sign In',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginView(),
                                ));
                          },
                          color: const Color(0xfff30100),
                        ),
                        ElevatedButtonWidget(
                          title: 'Sign Up',
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterView(),));
                          },
                          color: const Color(0xff1050a0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
