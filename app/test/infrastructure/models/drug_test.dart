import 'package:app/infrastructure/models/drug/drug.dart';
import 'package:app/infrastructure/models/profile_substance/profile_substance.dart';
import 'package:app/infrastructure/models/substance/substance.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Map<String, dynamic> drugResponse = {
    "id": 1,
    "shortName": "Cal",
    "producerId": 1.102,
    "producerName": "Calcicum",
    "compositionDescription": "This is a drug",
    "activityDescription": "Drug will kill virus",
    "indicationDescription": "BLALALA",
    "constraintIndicationDescription": "hello everyone",
    "warningDescription": "asdfkjasdklfj",
    "drugSubstance": [
      {
        "id": 1,
        "drugId": 1002,
        "profileDetailId": 1003,
        "substanceId": 21,
        "substance": {
          "id": 30,
          "name": "Thuoc A",
          "description": "Day la mot loai thuoc",
          "isActive": true,
        }
      },
      {
        "id": 1,
        "drugId": 1002,
        "profileDetailId": 1003,
        "substanceId": 21,
        "substance": {
          "id": 30,
          "name": "Thuoc A",
          "description": "Day la mot loai thuoc",
          "isActive": true,
        }
      }
    ]
  };

  Drug expectedDrug = const Drug(
    id: 1,
    shortName: "Cal",
    producerId: 1.102,
    producerName: "Calcicum",
    compositionDescription: "This is a drug",
    activityDescription: "Drug will kill virus",
    indicationDescription: "BLALALA",
    constraintIndicationDescription: "hello everyone",
    warningDescription: "asdfkjasdklfj",
    drugSubstance: [
      ProfileSubstance(
        id: 1,
        drugId: 1002,
        profileDetailId: 1003,
        substanceId: 21,
        substance: Substance(
          id: 30,
          name: "Thuoc A",
          description: "Day la mot loai thuoc",
          isActive: true,
        ),
      ),
      ProfileSubstance(
        id: 1,
        drugId: 1002,
        profileDetailId: 1003,
        substanceId: 21,
        substance: Substance(
          id: 30,
          name: "Thuoc A",
          description: "Day la mot loai thuoc",
          isActive: true,
        ),
      ),
    ],
  );

  test(
    'check format of drug test model',
    () => {
      expect(Drug.fromJson(drugResponse), expectedDrug),
    },
  );
}
