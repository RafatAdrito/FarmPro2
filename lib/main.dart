import 'package:farmpro/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Welcome(),
  ));
}




class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC1DCBD),
      body: Center(
        child: Column(
          children: <Widget>[
            Image(image: AssetImage('images/mainlogo2.png')),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('সাইন আপ',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'TiroBangla-Reg')), // <-- Text
                  SizedBox(
                    width: 50,
                    height: 50,
                  ),
                  Icon(
                    // <-- Icon
                    Icons.arrow_forward,
                    size: 24.0,
                  ),
                ],
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF2CA856)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Auth()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class Auth extends StatelessWidget {
  const Auth({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          extendBodyBehindAppBar: true,
          backgroundColor: Color(0xFFC1DCBD),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
                color: Colors.black,
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 80,
                ),
                Image.asset(
                  'images/mainlogo2.png',
                  width: 200,
                  height: 200,
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.greenAccent,
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                        borderSide: BorderSide(width: 2),
                      ),
                      labelText: 'ফোন নম্বর',
                      hintText: 'আপনার ফোন নম্বর লিখুন',
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('কোড পাঠান',
                        style: TextStyle(
                            fontSize: 24, fontFamily: 'TiroBangla-Reg')),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF2CA856)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(18.0)))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Confirmation()),
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class Confirmation extends StatelessWidget {
  const Confirmation({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'images/mainlogo2.png',
                width: 200,
                height: 200,
              ),
              Text("৪ ডিজিটের কোড লিখুন যা এইমাত্র আপনার ফোনে পাঠিয়েছি",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontFamily: 'TiroBangla-Reg')),
              Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.greenAccent,
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(width: 2),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('শুরু করুন',
                        style: TextStyle(
                            fontSize: 24, fontFamily: 'TiroBangla-Reg')),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF2CA856)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(18.0)))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Menu()),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

// class Rafat extends StatefulWidget {
//   @override
//   Menu createState() => Menu();
// }

class Menu extends StatelessWidget{
  const Menu({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        drawer: Drawer(
          child: Text('Rafat')
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              }),
        ),
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            direction: Axis.horizontal,
            runSpacing: 5.0,
            spacing: 5.0,
            children: <Widget>[
              SizedBox(
                width: 170,
                height: 200,
                child: ElevatedButton(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Tab(
                        icon: Image.asset('images/croprec.png'),
                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                      ),
                      Text('জমির জন্য ভালো ফসল',
                          style: TextStyle(
                              fontSize: 20, fontFamily: 'TiroBangla-Reg'),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF2CA856)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => crop()),
                    );
                  },
                ),
              ),
              SizedBox(
                width: 170,
                height: 200,
                child: ElevatedButton(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Tab(
                        icon: Image.asset('images/fertilizer.png'),
                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                      ),
                      Text('ফসলের জন্য ভালো সার',
                          style: TextStyle(
                              fontSize: 20, fontFamily: 'TiroBangla-Reg'),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF2CA856)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => fertilizer()),
                    );
                  },
                ),
              ),
              SizedBox(
                width: 170,
                height: 200,
                child: ElevatedButton(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Tab(
                        icon: Image.asset('images/disease.png'),
                        height: 70,
                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                      ),
                      Text('ফসলের রোগ সনাক্তকরণ',
                          style: TextStyle(
                              fontSize: 20, fontFamily: 'TiroBangla-Reg'),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF2CA856)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => camera()),
                    );
                  },
                ),
              ),
              SizedBox(
                width: 170,
                height: 200,
                child: ElevatedButton(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Tab(
                        icon: Image.asset('images/weed.png'),
                        height: 70,
                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                      ),
                      Text('আগাছা সনাক্তকরণ',
                          style: TextStyle(
                              fontSize: 20, fontFamily: 'TiroBangla-Reg'),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF2CA856)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => camera2()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class crop extends StatelessWidget {
  const crop({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              Image.asset(
                'images/croprec.png',
                width: 100,
                height: 100,
              ),
              Text("জমির জন্য ভালো ফসল",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'TiroBangla-Reg')),
              SizedBox(
                height: 80.0,
              ),
              SizedBox(
                //<-- SEE HERE
                width: 250,
                height: 250,
                child: FittedBox(
                  //<-- SEE HERE
                  child: FloatingActionButton(
                    //<-- SEE HERE
                    backgroundColor: Colors.grey,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => dc()));
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/hardware.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'ডিভাইস সংযুক্ত করুন',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiroBangla-Reg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class dc extends StatelessWidget {
  const dc({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              Image.asset(
                'images/croprec.png',
                width: 60,
                height: 60,
              ),
              Text(
                "জমির জন্য ভালো ফসল",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiroBangla-Reg'),
              ),
              SizedBox(
                height: 80.0,
              ),
              SizedBox(
                //<-- SEE HERE
                width: 250,
                height: 250,
                child: FittedBox(
                  //<-- SEE HERE
                  child: FloatingActionButton(
                    //<-- SEE HERE
                    backgroundColor: Colors.green,
                    onPressed: () {},
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/hardware.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'ডিভাইস সংযুক্ত হয়েছে',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiroBangla-Reg'),
              ),
              SizedBox(
                height: 50.0,
              ),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('পরীক্ষা শুরু করুন',
                        style: TextStyle(
                            fontSize: 24, fontFamily: 'TiroBangla-Reg')),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF2CA856)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(18.0)))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => testcomplete()),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class testcomplete extends StatelessWidget {
  const testcomplete({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              Image.asset(
                'images/croprec.png',
                width: 60,
                height: 60,
              ),
              Text(
                "জমির জন্য ভালো ফসল",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiroBangla-Reg'),
              ),
              SizedBox(
                height: 80.0,
              ),
              SizedBox(
                //<-- SEE HERE
                width: 250,
                height: 250,
                child: FittedBox(
                  //<-- SEE HERE

                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/testcomplete.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'পরীক্ষা সম্পন্ন হয়েছে',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiroBangla-Reg'),
              ),
              SizedBox(
                height: 50.0,
              ),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('ফলাফল দেখান',
                        style: TextStyle(
                            fontSize: 24, fontFamily: 'TiroBangla-Reg')),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF2CA856)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(18.0)))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => cropresult()),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class cropresult extends StatelessWidget {
  const cropresult({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 90,
                ),
                Image.asset(
                  'images/croprec.png',
                  width: 60,
                  height: 60,
                ),
                Text(
                  "জমির জন্য ভালো ফসল",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'TiroBangla-Reg'),
                ),
                SizedBox(
                  height: 40.0,
                ),
                // SizedBox(
                //   //<-- SEE HERE
                //   width: 250,
                //   height: 250,
                //
                // // ),
                // SizedBox(
                //   height: 5.0,
                // ),

                SizedBox(
                  width: 350,
                  height: 500,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(15.0),
                        width: 340.0,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'মাটির তথ্য',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'নাইট্রোজেন :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'ফসফরাস :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'পটাসিয়াম :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'PH :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'আর্দ্রতা :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              height: 1.0,
                              width: 320.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'প্রস্তাবিত ফসলের নাম :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                          ],
                        ),
                      ),
                    ],
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

class fertilizer extends StatelessWidget {
  const fertilizer({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              Image.asset(
                'images/fertilizer.png',
                width: 100,
                height: 100,
              ),
              Text("ফসলের জন্য ভালো সার",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'TiroBangla-Reg')),
              SizedBox(
                height: 80.0,
              ),
              SizedBox(
                //<-- SEE HERE
                width: 250,
                height: 250,
                child: FittedBox(
                  //<-- SEE HERE
                  child: FloatingActionButton(
                    //<-- SEE HERE
                    backgroundColor: Colors.grey,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => dc1()));
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/hardware.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'ডিভাইস সংযুক্ত করুন',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiroBangla-Reg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class dc1 extends StatelessWidget {
  const dc1({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              Image.asset(
                'images/fertilizer.png',
                width: 60,
                height: 60,
              ),
              Text(
                "ফসলের জন্য ভালো সার ",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiroBangla-Reg'),
              ),
              SizedBox(
                height: 80.0,
              ),
              SizedBox(
                //<-- SEE HERE
                width: 250,
                height: 250,
                child: FittedBox(
                  //<-- SEE HERE
                  child: FloatingActionButton(
                    //<-- SEE HERE
                    backgroundColor: Colors.green,
                    onPressed: () {},
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/hardware.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'ডিভাইস সংযুক্ত হয়েছে',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiroBangla-Reg'),
              ),
              SizedBox(
                height: 50.0,
              ),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('পরীক্ষা শুরু করুন',
                        style: TextStyle(
                            fontSize: 24, fontFamily: 'TiroBangla-Reg')),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF2CA856)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(18.0)))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => testcomplete1()),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class testcomplete1 extends StatelessWidget {
  const testcomplete1({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              Image.asset(
                'images/fertilizer.png',
                width: 60,
                height: 60,
              ),
              Text(
                "ফসলের জন্য ভালো সার",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiroBangla-Reg'),
              ),
              SizedBox(
                height: 30.0,
              ),
              SizedBox(
                //<-- SEE HERE
                width: 150,
                height: 150,
                child: FittedBox(
                  //<-- SEE HERE

                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/testcomplete.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'পরীক্ষা সম্পন্ন হয়েছে',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiroBangla-Reg'),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.greenAccent,
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(20.0),
                      ),
                      borderSide: BorderSide(width: 2),
                    ),
                    labelText: 'ফসলের নাম',
                    hintText: 'ফসলের নাম লিখুন',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.greenAccent,
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(20.0),
                      ),
                      borderSide: BorderSide(width: 2),
                    ),
                    labelText: 'ক্ষেত্র(একর)',
                    hintText: 'আকার লিখুন',
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  child: Text('ফলাফল দেখান',
                      style: TextStyle(
                          fontSize: 24, fontFamily: 'TiroBangla-Reg')),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF2CA856)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => fertilizerresult()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class fertilizerresult extends StatelessWidget {
  const fertilizerresult({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 90,
                ),
                Image.asset(
                  'images/fertilizer.png',
                  width: 60,
                  height: 60,
                ),
                Text(
                  "ফসলের জন্য ভালো সার",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'TiroBangla-Reg'),
                ),
                SizedBox(
                  height: 40.0,
                ),
                // SizedBox(
                //   //<-- SEE HERE
                //   width: 250,
                //   height: 250,
                //
                // // ),
                // SizedBox(
                //   height: 5.0,
                // ),
                SizedBox(
                  width: 350,
                  height: 500,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(15.0),
                        width: 340.0,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'সারের নাম',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'X :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'সারের পরিমাণ',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'A :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'B :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'C :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                          ],
                        ),
                      ),
                    ],
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

class camera extends StatefulWidget {
  @override
  disease createState() => disease();
}

class disease extends State<camera> {
  File? image;
  File? image1;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;
      final imageTemporary = File(image.path);

      this.image = imageTemporary;

      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image :$e');
    }
  }

  Future pickImage1(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;
      final imageTemporary = File(image.path);

      this.image = imageTemporary;

      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image :$e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: Column(
              children: <Widget>[
            SizedBox(
              height: 90,
            ),

            Image.asset(
              'images/disease.png',
              width: 100,
              height: 100,
            ),
            Text("ফসলের রোগ সনাক্তকরণ",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiroBangla-Reg')),
            SizedBox(
              height: 15.0,
            ),

            SizedBox(
              height: 50.0,
              width: 350.0,
              child: ElevatedButton(
                onPressed: () => pickImage(ImageSource.gallery),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFFFFFFF)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        )
                    )
                ),

                // color: Colors.white,
                // margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'ছবি আপলোড করুন',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                  trailing: Icon(
                    Icons.folder,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 50.0,
              width: 350.0,
              child: ElevatedButton(
                onPressed: () => pickImage1(ImageSource.camera),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFFFFFFF)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)))),

                // color: Colors.white,
                // margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'ক্যামেরা খুলুন',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                  trailing: Icon(
                    Icons.camera_alt,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
                Container(
                  height: 140,
                  width: 180,
                  color: Colors.black12,
                  child: image == null
                      ? Icon(
                    Icons.image,
                    size: 50,
                  )
                      : Image.file(
                    image!,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  child: Text('রোগ সনাক্ত করুন',
                      style: TextStyle(
                          fontSize: 24, fontFamily: 'TiroBangla-Reg')),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF2CA856)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => testcomplete2()),
                    );
                  },
                )),
            // _image==null? Container() : Image.file(_image)],
          ]),
        ),
      ),
    );
  }
}

class testcomplete2 extends StatelessWidget {
  const testcomplete2({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              Image.asset(
                'images/disease.png',
                width: 60,
                height: 60,
              ),
              Text(
                "ফসলের রোগ সনাক্তকরণ",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiroBangla-Reg'),
              ),
              SizedBox(
                height: 80.0,
              ),
              SizedBox(
                //<-- SEE HERE
                width: 250,
                height: 250,
                child: FittedBox(
                  //<-- SEE HERE

                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/testcomplete.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'পরীক্ষা সম্পন্ন হয়েছে',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiroBangla-Reg'),
              ),
              SizedBox(
                height: 50.0,
              ),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('ফলাফল দেখান',
                        style: TextStyle(
                            fontSize: 24, fontFamily: 'TiroBangla-Reg')),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Color(0xFF2CA856)),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(18.0)))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => diseaseresult()),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}


class diseaseresult extends StatelessWidget {
  const diseaseresult({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 90,
                ),
                Image.asset(
                  'images/disease.png',
                  width: 60,
                  height: 60,
                ),
                Text(
                  "ফসলের রোগ শ্নাক্তকরণ",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'TiroBangla-Reg'),
                ),
                SizedBox(
                  height: 40.0,
                ),
                // SizedBox(
                //   //<-- SEE HERE
                //   width: 250,
                //   height: 250,
                //
                // // ),
                // SizedBox(
                //   height: 5.0,
                // ),

                SizedBox(
                  width: 350,
                  height: 500,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(15.0),
                        width: 340.0,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'রোগ সম্পর্কিত তথ্য',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'রোগের নাম :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'সঠিক(শতকরা) :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'বর্ণনা :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'প্রতিকার :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'প্রতিরোধ :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                          ],
                        ),
                      ),
                    ],
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

class camera2 extends StatefulWidget {
  @override
  weed createState() => weed();
}

class weed extends State<camera2> {
  File? image;
  File? image1;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;
      final imageTemporary = File(image.path);

      this.image = imageTemporary;

      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image :$e');
    }
  }

  Future pickImage1(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;
      final imageTemporary = File(image.path);

      this.image = imageTemporary;

      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image :$e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: Column(
              children: <Widget>[
                SizedBox(
                  height: 90,
                ),

                Image.asset(
                  'images/weed.png',
                  width: 100,
                  height: 100,
                ),
                Text("আগাছা সনাক্তকরণ",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'TiroBangla-Reg')),
                SizedBox(
                  height: 15.0,
                ),

                SizedBox(
                  height: 50.0,
                  width: 350.0,
                  child: ElevatedButton(
                    onPressed: () => pickImage(ImageSource.gallery),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Color(0xFFFFFFFF)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            )
                        )
                    ),

                    // color: Colors.white,
                    // margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      title: Text(
                        'ছবি আপলোড করুন',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                        ),
                      ),
                      trailing: Icon(
                        Icons.folder,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 50.0,
                  width: 350.0,
                  child: ElevatedButton(
                    onPressed: () => pickImage1(ImageSource.camera),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Color(0xFFFFFFFF)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)))),

                    // color: Colors.white,
                    // margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      title: Text(
                        'ক্যামেরা খুলুন',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                        ),
                      ),
                      trailing: Icon(
                        Icons.camera_alt,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 140,
                  width: 180,
                  color: Colors.black12,
                  child: image == null
                      ? Icon(
                    Icons.image,
                    size: 50,
                  )
                      : Image.file(
                    image!,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      child: Text('আগাছা সনাক্ত করুন',
                          style: TextStyle(
                              fontSize: 20, fontFamily: 'TiroBangla-Reg')),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Color(0xFF2CA856)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => testcomplete3()),
                        );
                      },
                    )),
                // _image==null? Container() : Image.file(_image)],
              ]),
        ),
      ),
    );
  }
}

class testcomplete3 extends StatelessWidget {
  const testcomplete3({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              Image.asset(
                'images/weed.png',
                width: 60,
                height: 60,
              ),
              Text(
                "আগাছা সনাক্তকরণ",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiroBangla-Reg'),
              ),
              SizedBox(
                height: 40.0,
              ),
              SizedBox(
                //<-- SEE HERE
                width: 250,
                height: 250,
                child: FittedBox(
                  //<-- SEE HERE

                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/testcomplete.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'পরীক্ষা সম্পন্ন হয়েছে',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiroBangla-Reg'),
              ),
              SizedBox(
                height: 50.0,
              ),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('ফলাফল দেখান',
                        style: TextStyle(
                            fontSize: 24, fontFamily: 'TiroBangla-Reg')),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Color(0xFF2CA856)),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(18.0)))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => weedresult()),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class weedresult extends StatelessWidget {
  const weedresult({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFC1DCBD),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 90,
                ),
                Image.asset(
                  'images/weed.png',
                  width: 60,
                  height: 60,
                ),
                Text(
                  "আগাছা সনাক্তকরণ",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'TiroBangla-Reg'),
                ),
                SizedBox(
                  height: 40.0,
                ),
                // SizedBox(
                //   //<-- SEE HERE
                //   width: 250,
                //   height: 250,
                //
                // // ),
                // SizedBox(
                //   height: 5.0,
                // ),

                SizedBox(
                  width: 350,
                  height: 500,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(15.0),
                        width: 340.0,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'আগাছা সম্পর্কিত তথ্য',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'ফলাফল(হ্যা/না) :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'সঠিক(শতকরা) :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'প্রতিকার :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'প্রতিরোধ :',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TiroBangla-Reg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                          ],
                        ),
                      ),
                    ],
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