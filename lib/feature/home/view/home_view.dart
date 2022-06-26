import 'package:flutter/material.dart';
import 'package:vcapp/feature/login/view/login_view.dart';
import 'package:vcapp/feature/register/view/register_view.dart';
import 'package:vcapp/product/constant/color.dart';
import 'package:vcapp/product/padding/page_padding.dart';
import 'package:vcapp/product/widget/elevated_button_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final String _homeImagePath = 'asset/images/home.png';
  final String _visitingCard = 'Visiting Card';
  final String _lorem = 'Lorem ipsum, or lipsum as it is sometimes known';
  final String _signIn = 'Sign In';
  final String _signUp = 'Sign Up';

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
                _sizedBox(20),
                Container(
                  height: 182,
                  width: 182,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: white,
                  ),
                  child: Image.asset(_homeImagePath),
                ),
                _sizedBox(26),
                Text(
                  _visitingCard,
                  style: Theme.of(context).textTheme.headline4,
                ),
                _sizedBox(14),
                Text(
                  _lorem,
                  style: Theme.of(context).textTheme.headline6,
                ),
                _sizedBox(18),
                TabPageSelector(
                  controller: _tabController,
                ),
                _sizedBox(MediaQuery.of(context).size.height * 0.05),
                Container(
                  height: 233,
                  width: 336,
                  color: white,
                  child: Padding(
                    padding: HomePadding.symmetricPadding,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButtonWidget(
                          title: _signIn,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginView(),
                                ));
                          },
                          color: spectrumRed,
                        ),
                        ElevatedButtonWidget(
                          title: _signUp,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterView(),
                                ));
                          },
                          color: sonicBlue,
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

  SizedBox _sizedBox(double? height) {
    return SizedBox(
      height: height,
    );
  }
}

class HomePadding {
  static const EdgeInsets symmetricPadding = EdgeInsets.symmetric(vertical: 40.0, horizontal: 24);
}
