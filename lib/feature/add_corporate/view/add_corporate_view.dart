import 'package:flutter/material.dart';
import 'package:vcapp/product/constant/color.dart';
import 'package:vcapp/product/padding/page_padding.dart';
import 'package:vcapp/product/widget/elevated_button_widget.dart';

class AddCorporate extends StatefulWidget {
  const AddCorporate({Key? key}) : super(key: key);

  @override
  _AddCorporateState createState() => _AddCorporateState();
}

class _AddCorporateState extends State<AddCorporate> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {
        }, icon: const Icon(Icons.help_outline), color: black)],
        centerTitle: true,
        title: Text(
          'Send Work Card',
          style: Theme.of(context).textTheme.headline5?.copyWith(
              fontSize: 14.0,
              color: sonicBlue,
              fontFamily: 'poppins_semibold',
              fontWeight: FontWeight.normal),
        ),
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
              children: [
                Container(
                  height: 66,
                  width: 66,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: sonicBlue,
                  ),
                  child: Image.asset('asset/images/card.png'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  'Text your Work card to:',
                  style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 12),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.04),
                  child: Container(
                    height: 516,
                    // width: 336,
                    color: white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 25),
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardAppearance: Brightness.dark,
                            autofocus: true,
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(hintText: 'Enter Name', label: Text('Name')),
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          TextFormField(
                            keyboardAppearance: Brightness.dark,
                            autofocus: true,
                            keyboardType: TextInputType.phone,
                            style: Theme.of(context).textTheme.headline6,
                            decoration: const InputDecoration(
                              hintText: '+66 222 333 4444',
                              label: Text('Mobile Number'),
                            ),
                          ),
                          TextFormField(
                            //minLines: 1,
                            maxLines: 5,
                            keyboardAppearance: Brightness.dark,
                            keyboardType: TextInputType.multiline,
                            maxLength: 100,
                            autofocus: true,
                            style: Theme.of(context).textTheme.headline6,
                            decoration: InputDecoration(
                              helperText: 'Optional',
                              focusColor: black,
                              helperStyle: Theme.of(context).textTheme.headline5?.copyWith(
                                  fontSize: 14.0,
                                  color: sonicBlue,
                                  fontFamily: 'poppins_semibold',
                                  fontWeight: FontWeight.normal),
                              label: Text('Message', style: Theme.of(context).textTheme.headline6),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Send via VC App',
                                style: Theme.of(context).textTheme.headline5?.copyWith(
                                    fontSize: 14.0,
                                    color: sonicBlue,
                                    fontFamily: 'poppins_semibold',
                                    fontWeight: FontWeight.normal),
                              ),
                              Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                  });
                                },
                                activeTrackColor: sonicBlue,
                                activeColor: sonicBlue,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 21, bottom: 18),
                            child: ElevatedButtonWidget(
                              title: 'Send',
                              color: spectrumRed,
                              onPressed: () {},
                            ),
                          ),
                          //SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              _CustomIconGes(
                                icon: Icons.qr_code_scanner_outlined,
                                data: 'Code',
                              ),
                              _CustomIconGes(
                                icon: Icons.email_outlined,
                                data: 'Email',
                              ),
                              _CustomIconGes(
                                icon: Icons.message_outlined,
                                data: 'Text',
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CustomIconGes extends StatelessWidget {
  const _CustomIconGes({
    Key? key,
    required this.icon,
    required this.data,
  }) : super(key: key);
  final IconData? icon;
  final String data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Icon(
            icon,
            color: sonicBlue,
            size: 40,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Center(
            child: Text(data,
                style: Theme.of(context).textTheme.headline6?.copyWith(color: sonicBlue, fontSize: 11)),
          )
        ],
      ),
    );
  }
}
