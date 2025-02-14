

// import 'package:cloud_firestore/cloud_firestore.dart';

// class Professional {
//   final String? id;
//   final String? name;
//   final String? email;
//   final String? phone;
//   final String role;
//   final List<String> technicalSkills;
//   final List<String> regulatoryExpertise;
//   final List<String> financialStandards;
//   final List<String> industryFocus;
//   final String jurisdiction;
//   final int yearsExperience;
//   final String? photoUrl;

//   const Professional({
//     this.id,
//     required this.name,
//      this.email,
//      this.phone,
//     this.role = "Professional",
//     this.technicalSkills = const [],
//     this.regulatoryExpertise = const [],
//     this.financialStandards = const [],
//     this.industryFocus = const [],
//     required this.jurisdiction,
//     required this.yearsExperience,
//     this.photoUrl,
//   });

//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'name': name,
//         'email': email,
//         'phone': phone,
//         'role': role,
//         'technicalSkills': technicalSkills,
//         'regulatoryExpertise': regulatoryExpertise,
//         'financialStandards': financialStandards,
//         'industryFocus': industryFocus,
//         'jurisdiction': jurisdiction,
//         'yearsExperience': yearsExperience,
//         'photoUrl': photoUrl,
//       };

//   static Professional fromSnap(DocumentSnapshot snap) {
//     var snapshot = snap.data() as Map<String, dynamic>;

//     return Professional(
//       id: snap.id,
//       name: snapshot['name'],
//       email: snapshot['email'],
//       phone: snapshot['phone'],
//       role: snapshot['role'] ?? "Professional",
//       technicalSkills: List<String>.from(snapshot['technicalSkills'] ?? []),
//       regulatoryExpertise: List<String>.from(snapshot['regulatoryExpertise'] ?? []),
//       financialStandards: List<String>.from(snapshot['financialStandards'] ?? []),
//       industryFocus: List<String>.from(snapshot['industryFocus'] ?? []),
//       jurisdiction: snapshot['jurisdiction'],
//       yearsExperience: snapshot['yearsExperience'],
//       photoUrl: snapshot['photoUrl'],
//     );
//   }

//   Professional copyWithSkills(List<String> newTechnicalSkills) {
//     return Professional(
//       id: id,
//       name: name,
//       email: email,
//       phone: phone,
//       role: role,
//       technicalSkills: newTechnicalSkills,
//       regulatoryExpertise: regulatoryExpertise,
//       financialStandards: financialStandards,
//       industryFocus: industryFocus,
//       jurisdiction: jurisdiction,
//       yearsExperience: yearsExperience,
//       photoUrl: photoUrl,
//     );
//   }

//   String get skillsPreview => technicalSkills.take(3).join(', ');
// }

import 'package:cloud_firestore/cloud_firestore.dart';

class Doctor {
  final String? id;
  final String? name;
  final String? email;
  final String? phone;
  final String role;
  final List<String> specializations;
  final List<String> certifications;
  final List<String> procedures;
  final List<String> conditions;
  final String region;
  final int yearsExperience;
  final String? photoUrl;

  const Doctor({
    this.id,
    required this.name,
    this.email,
    this.phone,
    this.role = "Doctor",
    this.specializations = const [],
    this.certifications = const [],
    this.procedures = const [],
    this.conditions = const [],
    required this.region,
    required this.yearsExperience,
    this.photoUrl,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'phone': phone,
        'role': role,
        'specializations': specializations,
        'certifications': certifications,
        'procedures': procedures,
        'conditions': conditions,
        'region': region,
        'yearsExperience': yearsExperience,
        'photoUrl': photoUrl,
      };

  static Doctor fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Doctor(
      id: snap.id,
      name: snapshot['name'],
      email: snapshot['email'],
      phone: snapshot['phone'],
      role: snapshot['role'] ?? "Doctor",
      specializations: List<String>.from(snapshot['specializations'] ?? []),
      certifications: List<String>.from(snapshot['certifications'] ?? []),
      procedures: List<String>.from(snapshot['procedures'] ?? []),
      conditions: List<String>.from(snapshot['conditions'] ?? []),
      region: snapshot['region'],
      yearsExperience: snapshot['yearsExperience'],
      photoUrl: snapshot['photoUrl'],
    );
  }
}