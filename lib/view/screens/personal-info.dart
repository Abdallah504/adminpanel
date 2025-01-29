import 'package:adminpanel/controller/main-app-provider.dart';
import 'package:adminpanel/view/widgets/text-field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController jobTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<MainAppProvider>(
      builder: (context,provider,_){
        return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Personal info",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold))),
        
                  ElevatedButton(
                    onPressed: (){
                      showDialog(context: context, builder:(context){
                        return StatefulBuilder(builder: (context,setState){
                          return Dialog(
                            child: Container(
                              height: 500,
                              width: 500,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                       const SizedBox(),
                                        IconButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, icon: Icon(Icons.exit_to_app,color: Colors.black,))
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    TextFieldShared(controller: firstNameController, hint: 'First Name', label: 'First Name'),
                                    SizedBox(height: 10,),
                                    TextFieldShared(controller: lastNameController, hint: 'Last Name', label: 'Last Name'),
                                    SizedBox(height: 10,),
                                    TextFieldShared(controller: jobTitleController, hint: 'Job Title', label: 'Job Title'),

                                    SizedBox(height: 20,),
                                    ElevatedButton(onPressed: (){
                                      
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red
                                    ),
                                     child: Text('Submit',style: GoogleFonts.cairo(color: Colors.white),))
                                  ],),
                              ),
                            ),
                          );
                        });
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red
                    ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text('Add Personal Info',style: GoogleFonts.cairo(color: Colors.white,fontSize: 20),),
                   ))
        
              ],
            ),
              
        
            
          ],
        ),
      ),
    );
      });
  }
}