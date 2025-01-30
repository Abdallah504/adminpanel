import 'package:adminpanel/model/personal-model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MainAppProvider extends ChangeNotifier{
  final personal = Supabase.instance.client.from('personal');

  // Create
  Future<void>createPersonal(Personal newPersonal,context)async{
    try{
      await personal.insert(newPersonal.toMap());
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar( SnackBar(
        backgroundColor: Colors.black,
        content: Text('Failed to upload the data : $e',style: GoogleFonts.cairo(color: Colors.white),)));
    }
  }


// read

final stream =  Supabase.instance.client.from('personal').stream(primaryKey: ['id']).map(
  (data)=>data.map((noteMap)=> Personal.fromMap(noteMap)).toList()
);


// update


Future updatePersonal(Personal oldPersonal, String newfirst,String newlast,String newjob)async{
  await personal.update({'first-name':newfirst,'last-name':newlast,'job':newjob}).eq('id', oldPersonal.id!);
}


//delete

Future deleteNote(Personal deletePersonal)async{
  await personal.delete().eq('id', deletePersonal.id!);
}

}