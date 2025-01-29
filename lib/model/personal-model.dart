class Personal{

  int? id;
  String? firstName;
  String? lastName;
  String?job;


  Personal({this.id,this.firstName,this.lastName,this.job});


//map => note
  factory Personal.fromMap(Map<String,dynamic> map){
    return Personal(
      id: map['id'] as int,
      firstName: map['first-name'] as String,
      lastName: map['last-name'] as String,
      job: map['job'] as String
    );
  }


  //note => map


  Map<String, dynamic>toMap(){
    return{
      'first-name':firstName,
      'last-name':lastName,
      'job':job
    };
  }
}