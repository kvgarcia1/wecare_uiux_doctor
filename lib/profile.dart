import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unicons/unicons.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('assets/images/profiledoc.png')) //change code to profile pic from dtbs
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.yellow),
                      child: const Icon(
                        Icons.home,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),              
              Text("Dr. Angelica Shalene Estera", style: TextStyle(color: Colors.black,fontSize: 25, fontFamily: 'ProximaNova',fontWeight: FontWeight.w600)),
              Text("angelicashaleneestera@gmail.com", style: TextStyle(color: Colors.black,fontSize: 15, fontFamily: 'OpenSans')),
              const SizedBox(height: 20),


              // Edit Profile
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE56AEFF),
                    side: BorderSide.none, shape: const StadiumBorder()
                  ),
                  child: const Text("Edit Profile",
                  style: TextStyle(color: Colors.white,fontSize: 15, fontFamily: 'OpenSans')),
                ),
              ),
              const SizedBox(height: 15),
              const Divider(
               
                thickness: 0.5,
                color: Color(0xFF7B7B7B),
                indent: 0.0,
                endIndent: 0.0,


              ),
              const SizedBox(height: 20),


             
             


         




              Row(
                children: [
                  Container(
                    width:150,
                    alignment: Alignment.topLeft,
                            child: RichText(
                              //textAlign: TextAlign.center,
                             
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xFF7B7B7B),
                                  fontFamily: 'ProximaNova'
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: "Specialty", style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18)),
                                  TextSpan(text: "\n"),
                                  TextSpan(text: "General Medicine", style: TextStyle( fontFamily:'OpenSans', fontSize: 15)),
                                 
                                ]
                              )
                            ),
                   


                  ),


                 


                  Container(
                     width:170,


                    alignment: Alignment.topLeft,
                            child: RichText(
                              //textAlign: TextAlign.center,
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xFF7B7B7B),
                                  fontFamily: 'ProximaNova'
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: "Experience", style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18)),
                                  TextSpan(text: "\n"),
                                  TextSpan(text: "2 years", style: TextStyle( fontFamily:'OpenSans', fontSize: 15)),
                                 


                               
                                ]
                              )
                            ),


                  ),




                 
                ],




              ),


              const SizedBox(height: 20),








              Row(
                children: [
                  Container(
                    width:150,
                    alignment: Alignment.topLeft,
                            child: RichText(
                              //textAlign: TextAlign.center,
                             
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xFF7B7B7B),
                                  fontFamily: 'ProximaNova'
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: "Subspecialty", style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18)),
                                  TextSpan(text: "\n"),
                                  TextSpan(text: "General Physician", style: TextStyle( fontFamily:'OpenSans', fontSize: 15)),
                                 
                                ]
                              )
                            ),
                   


                  ),


                 


                  Container(
                     width:170,


                    alignment: Alignment.topLeft,
                            child: RichText(
                              //textAlign: TextAlign.center,
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xFF7B7B7B),
                                  fontFamily: 'ProximaNova'
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: "Consultation Availability", style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18)),
                                  TextSpan(text: "\n"),
                                  TextSpan(text: "Online & In-Person", style: TextStyle( fontFamily:'OpenSans', fontSize: 15)),
                                 


                               
                                ]
                              )
                            ),


                  ),




                 
                ],




              ),


              const SizedBox(height: 20),


              Container(
                   


                    alignment: Alignment.topLeft,
                            child: RichText(
                              //textAlign: TextAlign.center,
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xFF7B7B7B),
                                  fontFamily: 'ProximaNova'
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: "Online Clinic", style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18)),
                                  TextSpan(text: "\n"),
                                  TextSpan(text: "Mon-Wed-Fri, 10:00AM - 5:00PM", style: TextStyle( fontFamily:'OpenSans', fontSize: 15)),
                                 


                               
                                ]
                              )
                            ),


                  ),


                  const SizedBox(height: 20),


                   const Divider(
               
                thickness: 0.5,
                color: Color(0xFF7B7B7B),
                indent: 0.0,
                endIndent: 0.0,


              ),
              const SizedBox(height: 20),




              Container(
                   


                    alignment: Alignment.topLeft,
                            child: RichText(
                              //textAlign: TextAlign.center,
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xFF7B7B7B),
                                  fontFamily: 'ProximaNova'
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: "Certifications", style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18)),
                                  TextSpan(text: "\n\n\n\n\n\n\n"),
                                 
                                 


                               
                                ]
                              )
                            ),


                  ),




                  const SizedBox(height: 20),


                   const Divider(
               
                thickness: 0.5,
                color: Color(0xFF7B7B7B),
                indent: 0.0,
                endIndent: 0.0,


              ),
              const SizedBox(height: 20),




              Container(
                   


                    alignment: Alignment.topLeft,
                            child: RichText(
                              //textAlign: TextAlign.center,
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xFF7B7B7B),
                                  fontFamily: 'ProximaNova'
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: "Education", style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18)),
                                  TextSpan(text: "\n"),
                                  TextSpan(text: "University of the Philippines Diliman", style: TextStyle( fontFamily:'OpenSans', fontSize: 15)),
                                  TextSpan(text: "\n"),
                                  TextSpan(text: "University of the Philippines College of Medicine", style: TextStyle( fontFamily:'OpenSans', fontSize: 15)),
                                 
                                 
                                 


                               
                                ]
                              )
                            ),


                  ),








             




             


             
            ],
           
          ),
        ),


       


        // MENU


       








      ),
    );
  }
}
