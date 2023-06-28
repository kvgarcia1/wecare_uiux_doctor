import 'package:flutter/material.dart';
import './patientProfile.dart';
import './session.dart';
import './dashboard.dart';

class PatientRecordsPage extends StatelessWidget {
  const PatientRecordsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 16,left: 16,right: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(fontFamily:'OpenSans',color:Color(0xFF7B7B7B), fontSize: 15),
                    prefixIcon: Icon(Icons.search,color: Color(0xFF7B7B7B), size: 25,),
                    filled: true,
                    fillColor: Color(0xFFE7E9EC),
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Color(0xFFE7E9EC)
                      )
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width:15,
                  ),
                  Container(
                    width:170,
                      height:330,
                      decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30.0),bottom: Radius.circular(30.0)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.only(top:15),
                          child: Image.asset('assets/images/profile.png',scale: 5),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text('Kristine Mae Garcia',style: TextStyle(fontFamily: 'OpenSans', fontSize: 15,color: Color(0xFF4D4D4D))),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top:80),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PatientProfilePage()));
                            },
                            style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF56AEFF),
                            foregroundColor: Colors.white,
                            side: BorderSide.none, shape: const StadiumBorder(),
                            ),
                            child: Text('    Profile    ', style: TextStyle(fontFamily:'OpenSans', fontSize:15)),
                          )
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top:170),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PatientSessionListPage()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF56AEFF),
                              foregroundColor: Colors.white,
                              side: BorderSide.none, shape: const StadiumBorder(),
                            ),
                            child: Text('    Records   ', style: TextStyle(fontFamily:'OpenSans', fontSize:15)),
                          )
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top:260),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PatientDashboardPage()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF56AEFF),
                              foregroundColor: Colors.white,
                              side: BorderSide.none, shape: const StadiumBorder(),
                            ),
                            child: Text(' Dashboard ', style: TextStyle(fontFamily:'OpenSans', fontSize:15)),
                          )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width:15,
                  ),
                  Container(
                    width:170,
                    height:330,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30.0),bottom: Radius.circular(30.0)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.only(top:15),
                          child: Image.asset('assets/images/profile1.png',scale: 5),
                        ),
                        Container(
                          alignment: Alignment.center,  
                          child: Text('Colline Foralan',style: TextStyle(fontFamily: 'OpenSans', fontSize: 15,color: Color(0xFF4D4D4D))),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top:80),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PatientProfilePage()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF56AEFF),
                              foregroundColor: Colors.white,
                              side: BorderSide.none, shape: const StadiumBorder(),
                            ),
                            child: Text('    Profile    ', style: TextStyle(fontFamily:'OpenSans', fontSize:15)),
                          )
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top:170),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PatientSessionListPage()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF56AEFF),
                              foregroundColor: Colors.white,
                              side: BorderSide.none, shape: const StadiumBorder(),
                            ),
                            child: Text('    Records   ', style: TextStyle(fontFamily:'OpenSans', fontSize:15)),
                          )
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top:260),
                          child: ElevatedButton(
                            onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PatientDashboardPage()));
                              },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF56AEFF),
                              foregroundColor: Colors.white,
                              side: BorderSide.none, shape: const StadiumBorder(),
                            ),
                            child: Text(' Dashboard ', style: TextStyle(fontFamily:'OpenSans', fontSize:15)),
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width:15,
                  ),
                  Container(
                    width:170,
                    height:330,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30.0),bottom: Radius.circular(30.0)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.only(top:15),
                          child: Image.asset('assets/images/profile2.png',scale: 5),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text('Ian Rodrigo Seguano',style: TextStyle(fontFamily: 'OpenSans', fontSize: 15,color: Color(0xFF4D4D4D))),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top:80),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PatientProfilePage()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF56AEFF),
                              foregroundColor: Colors.white,
                              side: BorderSide.none, shape: const StadiumBorder(),
                            ),
                            child: Text('    Profile    ', style: TextStyle(fontFamily:'OpenSans', fontSize:15)),
                          )
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top:170),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PatientSessionListPage()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF56AEFF),
                              foregroundColor: Colors.white,
                              side: BorderSide.none, shape: const StadiumBorder(),
                            ),
                            child: Text('    Records   ', style: TextStyle(fontFamily:'OpenSans', fontSize:15)),
                          )
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top:260),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PatientDashboardPage()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF56AEFF),
                              foregroundColor: Colors.white,
                              side: BorderSide.none, shape: const StadiumBorder(),
                            ),
                            child: Text(' Dashboard ', style: TextStyle(fontFamily:'OpenSans', fontSize:15)),
                          )
                        ),
                      ],
                    ),
                  ),
                ]
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}