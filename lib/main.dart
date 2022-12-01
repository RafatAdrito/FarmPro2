import 'package:farmpro/main.dart';
import 'package:flutter/material.dart';

void main() {
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
                      style: TextStyle(fontSize: 24, fontFamily: 'TiroBangla-Reg')), // <-- Text
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
                    child: Text('কোড পাঠান', style: TextStyle(fontSize: 24, fontFamily: 'TiroBangla-Reg')),
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
                      child:
                          Text('শুরু করুন', style: TextStyle(fontSize: 24, fontFamily: 'TiroBangla-Reg')),
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

class Menu extends StatelessWidget {
  const Menu({super.key});
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
                  width: 200,
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
                            style: TextStyle(fontSize: 20, fontFamily: 'TiroBangla-Reg'),
                            textAlign: TextAlign.center),
                      ],
                    ),
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
                        MaterialPageRoute(builder: (context) => crop()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
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
                        Text('জমির জন্য ভালো সার',
                            style: TextStyle(fontSize: 20, fontFamily: 'TiroBangla-Reg'),
                            textAlign: TextAlign.center),
                      ],
                    ),
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
                        MaterialPageRoute(builder: (context) => fertilizer()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
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
                            style: TextStyle(fontSize: 20, fontFamily: 'TiroBangla-Reg'),
                            textAlign: TextAlign.center),
                      ],
                    ),
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
                        MaterialPageRoute(builder: (context) => disease()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
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
                            style: TextStyle(fontSize: 20, fontFamily: 'TiroBangla-Reg'),
                            textAlign: TextAlign.center),
                      ],
                    ),
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
                        MaterialPageRoute(builder: (context) => weed()),
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
              }
              ),
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
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'TiroBangla-Reg')),
            ],
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
              Text("জমির জন্য ভালো সার",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'TiroBangla-Reg')),
            ],
          ),
        ),
      ),
    );
  }
}

class disease extends StatelessWidget {
  const disease({super.key});
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
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'TiroBangla-Reg')),
            ],
          ),
        ),
      ),
    );
  }
}

class weed extends StatelessWidget {
  const weed({super.key});
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
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'TiroBangla-Reg')),
            ],
          ),
        ),
      ),
    );
  }
}
