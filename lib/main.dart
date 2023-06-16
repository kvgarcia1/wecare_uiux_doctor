import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unicons/unicons.dart';
import './profile.dart';
import './messages.dart';
import './currentSession.dart';
import './journal.dart';
import './patientRecords.dart';

void main() {
  runApp(MyApp());
}

class MyAppState extends ChangeNotifier {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'WeCaRE',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFF9F9F9)),
          scaffoldBackgroundColor: Color(0xFFF9F9F9),
          fontFamily: 'ProximaNova',
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _pages = <Widget>[
  HomePage(),
  ProfilePage(),
  PatientRecordsPage(),
  MessagesPage(),
];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title: const Text('WeCaRE'),
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/AppLogo.png'
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: (){},
            )
          ],
          backgroundColor: Color(0xFFF9F9F9),
          foregroundColor: Color(0xFF7B7B7B),
          scrolledUnderElevation: 0.0,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Color(0xFFF9F9F9),
        selectedItemColor: Color(0xFF56AEFF),
        unselectedItemColor: Color(0xFF7B7B7B),
        selectedFontSize: 15,
        unselectedFontSize: 15,
        elevation: 0.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/AppLogo.png', height: 20,),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
          
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.stethoscope),
            label: "Records",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: "Messages",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _pages.elementAt(_selectedIndex),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/home.png',
                // height: 150.0,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(20.0),
                height: 205,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  // boxShadow: [BoxShadow(
                  //   color: Colors.grey.withOpacity(0.5),
                  //   spreadRadius: 1,
                  //   blurRadius: 7,
                  //   offset: Offset(0, 2),
                  // )],
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      height: 150,
                      child: Image.asset('assets/images/session.png'),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      alignment: Alignment.topLeft,
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(
                            color: Color(0xFF7B7B7B),
                            fontFamily: 'ProximaNova'
                          ),
                          children: <TextSpan>[
                            TextSpan(text: "Ongoing Session", style: TextStyle(color: Color(0xFFFF0000), fontWeight: FontWeight.w600, fontSize: 20)),
                            TextSpan(text: "\n\n", style: TextStyle(fontSize:5)),
                            TextSpan(text: "You have an ongoing session today. Click the button below to proceed to Session tab.",  style: TextStyle(fontFamily: 'OpenSans', fontSize: 15)),
                          ]
                        )
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      height:250,
                      child: ElevatedButton(
                        onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => CurrentSessionPage()));
                              },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF0000),
                          foregroundColor: Colors.white,
                          side: BorderSide.none, shape: const StadiumBorder(),
                        ),
                        child: Text('   Go to Session   ', style: TextStyle(fontFamily:'OpenSans', fontSize:15)),
                      )
                    )
                  ],
                ),
              ),
              
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(20.0),
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  // boxShadow: [BoxShadow(
                  //   color: Colors.grey.withOpacity(0.5),
                  //   spreadRadius: 1,
                  //   blurRadius: 7,
                  //   offset: Offset(0, 2),
                  // )],
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.bottomRight,
                      height: 300,
                      child: Image.asset('assets/images/calendar.png', height: 200,),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(
                            color: Color(0xFF7B7B7B),
                            fontFamily: 'ProximaNova',
                          ),
                          children: <TextSpan>[
                            TextSpan(text: "Calendar", style: TextStyle(color: Color(0xFFFF0000), fontWeight: FontWeight.w600, fontSize: 20)),
                            TextSpan(text: "\n\n", style: TextStyle(fontSize:5)),
                            TextSpan(text: "View upcoming session.",  style: TextStyle(fontFamily: 'OpenSans', fontSize: 15)),
                          ]
                        )
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}