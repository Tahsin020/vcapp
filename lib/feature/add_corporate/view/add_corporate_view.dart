import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vcapp/product/padding/page_padding.dart';
import 'package:vcapp/product/widget/elevated_button_widget.dart';

class AddCorporate extends StatefulWidget {
  const AddCorporate({Key? key}) : super(key: key);

  @override
  _AddCorporateState createState() => _AddCorporateState();
}

class _AddCorporateState extends State<AddCorporate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline), color: Colors.black)],
        centerTitle: true,
        title: Text(
          'Send Work Card',
          style: Theme.of(context).textTheme.headline5?.copyWith(
              fontSize: 14.0,
              color: const Color(0xff1050a0),
              fontFamily: 'poppins_semibold',
              fontWeight: FontWeight.normal),
        ),
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
                Container(
                  height: 66,
                  width: 66,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff1050a0),
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
                    color: Colors.white,
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
                              focusColor: Colors.black,
                              helperStyle: Theme.of(context).textTheme.headline5?.copyWith(
                                  fontSize: 14.0,
                                  color: const Color(0xff1050a0),
                                  fontFamily: 'poppins_semibold',
                                  fontWeight: FontWeight.normal),
                              label: Text('Message', style: Theme.of(context).textTheme.headline6),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Row(
                            children: [
                              Text(
                                'Send via VC App',
                                style: Theme.of(context).textTheme.headline5?.copyWith(
                                    fontSize: 14.0,
                                    color: const Color(0xff1050a0),
                                    fontFamily: 'poppins_semibold',
                                    fontWeight: FontWeight.normal),
                              ),
                            
                              
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 21),
                            child: ElevatedButtonWidget(title: 'Send',color: const Color(0xfff30100),onPressed: (){},),
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
