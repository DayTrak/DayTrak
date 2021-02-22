import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../globals.dart' as globals;
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'fp1.dart';
import '../pages/home.dart';

String errmessage = "Cannot Be Empty";
OutlineInputBorder textfieldborderenabled = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(25.0)),
  borderSide: BorderSide(color: Colors.black54, width: 1),
);
OutlineInputBorder focusedborder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(25.0)),
  borderSide: BorderSide(color: Color.fromRGBO(224, 163, 160, 1), width: 2),
);

class Fp2Page extends StatefulWidget {
  @override
  _Fp2State createState() => _Fp2State();
}

class _Fp2State extends State<Fp2Page> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  final myController4 = TextEditingController();
  final myController5 = TextEditingController();
  final myController6 = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  grade11() {
    return Form(
        key: _formKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 20,
          ),
          TextFormField(
              textInputAction: TextInputAction.next,
              textCapitalization: TextCapitalization.sentences,
              cursorColor: Colors.black54,
              validator: (value) {
                if (value.isEmpty) {
                  return errmessage;
                }
                return null;
              },
              controller: myController,
              decoration: InputDecoration(
                  labelText: 'Block 1',
                  labelStyle: TextStyle(
                    color: Colors.black54,
                  ),
                  enabledBorder: textfieldborderenabled,
                  focusedBorder: focusedborder)),
          SizedBox(
            height: 10,
          ),
          TextFormField(
              textInputAction: TextInputAction.next,
              textCapitalization: TextCapitalization.sentences,
              cursorColor: Colors.black54,
              validator: (value) {
                if (value.isEmpty) {
                  return errmessage;
                }
                return null;
              },
              controller: myController2,
              decoration: InputDecoration(
                  labelText: 'Block 2',
                  labelStyle: TextStyle(
                    color: Colors.black54,
                  ),
                  enabledBorder: textfieldborderenabled,
                  focusedBorder: focusedborder)),
          SizedBox(
            height: 10,
          ),
          TextFormField(
              textInputAction: TextInputAction.next,
              textCapitalization: TextCapitalization.sentences,
              validator: (value) {
                if (value.isEmpty) {
                  return errmessage;
                }
                return null;
              },
              cursorColor: Colors.black54,
              controller: myController3,
              decoration: InputDecoration(
                  labelText: 'Block 3',
                  labelStyle: TextStyle(
                    color: Colors.black54,
                  ),
                  enabledBorder: textfieldborderenabled,
                  focusedBorder: focusedborder)),
          SizedBox(
            height: 10,
          ),
          TextFormField(
              textInputAction: TextInputAction.next,
              textCapitalization: TextCapitalization.sentences,
              validator: (value) {
                if (value.isEmpty) {
                  return errmessage;
                }
                return null;
              },
              cursorColor: Colors.black54,
              controller: myController4,
              decoration: InputDecoration(
                  labelText: 'Block 4',
                  labelStyle: TextStyle(
                    color: Colors.black54,
                  ),
                  enabledBorder: textfieldborderenabled,
                  focusedBorder: focusedborder)),
          SizedBox(
            height: 10,
          ),
          TextFormField(
              textInputAction: TextInputAction.next,
              textCapitalization: TextCapitalization.sentences,
              validator: (value) {
                if (value.isEmpty) {
                  return errmessage;
                }
                return null;
              },
              cursorColor: Colors.black54,
              controller: myController5,
              decoration: InputDecoration(
                  labelText: 'Block 5',
                  labelStyle: TextStyle(
                    color: Colors.black54,
                  ),
                  enabledBorder: textfieldborderenabled,
                  focusedBorder: focusedborder)),
          SizedBox(
            height: 10,
          ),
          TextFormField(
              textCapitalization: TextCapitalization.sentences,
              validator: (value) {
                if (value.isEmpty) {
                  return errmessage;
                }
                return null;
              },
              cursorColor: Colors.black54,
              controller: myController6,
              decoration: InputDecoration(
                  labelText: 'Block 6',
                  labelStyle: TextStyle(
                    color: Colors.black54,
                  ),
                  enabledBorder: textfieldborderenabled,
                  focusedBorder: focusedborder)),
        ]));
  }

  nosupport() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: globals.s2,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: 0.0, left: globals.h5, right: globals.h5),
                        child: Container(
                          child: Text(
                            'Support Coming Soon!',
                            style: TextStyle(
                              fontFamily: 'Protipo Compact',
                              fontSize: globals.h5,
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                            ),
                            overflow: TextOverflow.ellipsis,
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.center,
                            maxLines: 6,
                          ),
                        )))
              ]),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    myController4.dispose();
    myController5.dispose();
    myController6.dispose();
    super.dispose();
  }

  addIntToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('Value', globals.valueOfGrade);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: AppBar(
                    backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                    elevation: 0,
                    title: Container(
                        child: Padding(
                      padding: EdgeInsets.only(top: 0.0, left: 2.0, right: 2.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.transparent),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.transparent),
                                      shadowColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.transparent),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                          new MaterialPageRoute(
                                              builder: (context) => Fp1Page()));
                                    },
                                    child: Icon(
                                      CupertinoIcons.chevron_back,
                                      color: Colors.black54,
                                      size: globals.h4,
                                    ))
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.transparent),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.transparent),
                                      shadowColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.transparent),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                          new MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                    },
                                    child: Icon(
                                      CupertinoIcons.multiply,
                                      color: Colors.black54,
                                      size: globals.h4,
                                    ))
                              ],
                            )
                          ]),
                    )),
                    toolbarHeight: 100.0)),
            body: ListView(children: [
              Column(
                children: [
                  SizedBox(
                    height: globals.h5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Setup',
                        style: TextStyle(
                          fontFamily: 'Protipo Compact',
                          fontSize: globals.h1,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: globals.h7),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(55)),
                      ),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(children: [
                              Card(
                                  elevation: 7,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(35)),
                                  child: SizedBox(
                                      width: globals.w,
                                      height: 490,
                                      child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context)
                                                .requestFocus(FocusNode());
                                          },
                                          child: SingleChildScrollView(
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 0.0,
                                                      left: 30.0,
                                                      right: 30.0),
                                                  child: Container(
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                        SizedBox(
                                                          height: globals.h6,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text('Grade: ',
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'Protipo Compact',
                                                                  fontSize:
                                                                      globals
                                                                          .h5,
                                                                  color: const Color(
                                                                      0xff9b8fb1),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                )),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: globals.h6,
                                                        ),
                                                        Container(
                                                            child: Center(
                                                                child: Column(
                                                                    children: <
                                                                        Widget>[
                                                              InputDecorator(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Grade: ',
                                                                    labelStyle: Theme.of(
                                                                            context)
                                                                        .primaryTextTheme
                                                                        .caption
                                                                        .copyWith(
                                                                            color:
                                                                                Colors.black),
                                                                    border: const OutlineInputBorder(
                                                                        gapPadding:
                                                                            0,
                                                                        borderSide: const BorderSide(
                                                                            width:
                                                                                1),
                                                                        borderRadius:
                                                                            const BorderRadius.all(Radius.circular(25.0))),
                                                                  ),
                                                                  child:
                                                                      DropdownButtonHideUnderline(
                                                                          child:
                                                                              Listener(
                                                                    onPointerDown: (_) =>
                                                                        FocusScope.of(context)
                                                                            .unfocus(),
                                                                    child:
                                                                        DropdownButton(
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w300,
                                                                          fontSize: globals
                                                                              .h10,
                                                                          fontFamily:
                                                                              'Protipo Compact'),
                                                                      elevation:
                                                                          1,
                                                                      isExpanded:
                                                                          true,
                                                                      isDense:
                                                                          true,
                                                                      icon: Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down),
                                                                      value: globals
                                                                          .valueOfGrade,
                                                                      items: [
                                                                        DropdownMenuItem(
                                                                            child:
                                                                                Text("5"),
                                                                            value: 5),
                                                                        DropdownMenuItem(
                                                                            child:
                                                                                Text("6"),
                                                                            value: 6),
                                                                        DropdownMenuItem(
                                                                            child:
                                                                                Text("7"),
                                                                            value: 7),
                                                                        DropdownMenuItem(
                                                                            child:
                                                                                Text("8"),
                                                                            value: 8),
                                                                        DropdownMenuItem(
                                                                            child:
                                                                                Text("9"),
                                                                            value: 9),
                                                                        DropdownMenuItem(
                                                                            child:
                                                                                Text("10"),
                                                                            value: 10),
                                                                        DropdownMenuItem(
                                                                            child:
                                                                                Text("11"),
                                                                            value: 11),
                                                                        DropdownMenuItem(
                                                                            child:
                                                                                Text("12"),
                                                                            value: 12),
                                                                      ],
                                                                      onChanged:
                                                                          (value) {
                                                                        setState(
                                                                            () {
                                                                          globals.valueOfGrade =
                                                                              value;
                                                                          addIntToSF();
                                                                        });
                                                                      },
                                                                    ),
                                                                  ))),
                                                              SizedBox(
                                                                height:
                                                                    globals.h6,
                                                              ),
                                                              Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      'Subjects:',
                                                                      style:
                                                                          TextStyle(
                                                                        fontFamily:
                                                                            'Protipo Compact',
                                                                        fontSize:
                                                                            globals.h5,
                                                                        color: const Color(
                                                                            0xff9b8fb1),
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      )),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: <
                                                                    Widget>[
                                                                  (globals.valueOfGrade ==
                                                                          11)
                                                                      ? grade11()
                                                                      : nosupport()
                                                                ],
                                                              ),
                                                            ]))),
                                                      ])))))))
                            ])
                          ])),
                  SizedBox(
                    height: globals.h6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            shadowColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                          ),
                          onPressed: () async {
                            HapticFeedback.heavyImpact();
                            if (globals.valueOfGrade == 11) {
                              if (_formKey.currentState.validate()) {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setString('B1', myController.text);
                                prefs.setString('B2', myController2.text);
                                prefs.setString('B3', myController3.text);
                                prefs.setString('B4', myController4.text);
                                prefs.setString('B5', myController5.text);
                                prefs.setString('B6', myController6.text);
                                Navigator.of(context).pushReplacement(
                                    new MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              }
                            }
                          },
                          child: Icon(
                            CupertinoIcons.checkmark_alt,
                            color: Colors.black54,
                            size: globals.h2,
                          ))
                    ],
                  ),
                ],
              ),
            ])));
  }
}
