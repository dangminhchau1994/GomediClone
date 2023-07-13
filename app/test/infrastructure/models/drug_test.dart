import 'package:app/infrastructure/models/drug/drug.dart';
import 'package:app/infrastructure/models/drug/drug_eans.dart';
import 'package:app/infrastructure/models/lactations/lactations.dart';
import 'package:app/infrastructure/models/pregnancy/prenancy.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Map<String, dynamic> drugResponse = {
    "id": 495,
    "shortName": "Calcium effervescens",
    "producerId": 260.00,
    "producerName": "Synteza",
    "compositionDescription":
        "5 g granulatu o smaku malinowym zawiera 200 mg wapnia w postaci węglanu.",
    "activityDescription":
        "Wapń jest podstawowym składnikiem mineralnym, wpływającym na utrzymanie równowagi elektrolitowej organizmu oraz prawidłowe funkcjonowanie wielu mechanizmów regulacyjnych. Jest niezbędny w wielu procesach, m.in. przewodnictwie nerwowo-mięśniowym, czynności mięśni, prawidłowym rozwoju układu kostnego, procesach krzepnięcia krwi, aktywacji niektórych enzymów, przepuszczalności błon komórkowych i naczyń. Podanie preparatu uzupełnia niedobory wapnia w organizmie oraz prowadzi do zmniejszenia obrzęków i odczynów alergicznych.",
    "indicationDescription":
        "Stany zwiększonego zapotrzebowania na wapń (ciąża, laktacja, okresy intensywnego wzrostu u dzieci, rekonwalescencja, złamania kości), wspomagająco w leczeniu chorób alergicznych, stanów zapalnych, zapobieganie osteoporozie.",
    "constraintIndicationDescription":
        "Hiperkalcemia (hiperparatyreoidyzm, hiperwitaminoza D), ciężka hiperkalciuria, niewydolność nerek znacznego stopnia.Ostrożnie stosować u pacjentów z kamicą nerkową lub leczonych preparatami naparstnicy.",
    "warningDescription": "",
    "pregnancyDescription": "",
    "sideEffectDescription":
        "Po dużych dawkach mogą wystąpić zaburzenia żołądkowo-jelitowe (zaparcia), hiperkalcemia.",
    "interactionDescription":
        "Zmniejsza wchłanianie tetracykliny i związków fluoru (m.in. fluorochinolonów) z przewodu pokarmowego oraz stężenie fosforanów we krwi. Nasila toksyczne działanie glikozydów naparstnicy. Z moczopędnymi lekami tiazydowymi zwiększa się ryzyko hiperkalcemii. Glikokortykosteroidy, kalcytonina, kwas szczawiowy, fitynowy i fosforany hamują wchłanianie soli wapnia, natomiast kwas cytrynowy, witamina D, parathormon ułatwiają je.",
    "dosageDescription":
        "Dorośli i dzieci od 4 rż. doustnie 2-3 razy dziennie po 5 g granulatu (1 saszetka) rozpuszczone w 1/3 szklanki wody.",
    "noteDescription": "",
    "therapeuticClass": "Antiallergicum, Remineralisans",
    "isActive": false,
    "drugSubstance": [],
    "drugEans": [
      {
        "id": 13,
        "ean": "590999026912P",
        "drugId": 495,
      }
    ],
    "pregnancies": [
      {
        "id": 1,
        "name": "Stosowanie dopuszczone",
        "description": "Stosowanie dopuszczone",
        "enumKey": "1",
        "isActive": true
      },
      {
        "id": 100,
        "name": "Brak danych",
        "description": "Brak danych",
        "enumKey": "7",
        "isActive": true
      }
    ],
    "lactations": [
      {
        "id": 100,
        "name": "Brak danych",
        "description": "Brak danych",
        "enumKey": "7",
        "isActive": true
      }
    ]
  };

  Drug expectedDrug = const Drug(
    id: 495,
    shortName: "Calcium effervescens",
    producerId: 260.00,
    producerName: "Synteza",
    compositionDescription:
        "5 g granulatu o smaku malinowym zawiera 200 mg wapnia w postaci węglanu.",
    activityDescription:
        "Wapń jest podstawowym składnikiem mineralnym, wpływającym na utrzymanie równowagi elektrolitowej organizmu oraz prawidłowe funkcjonowanie wielu mechanizmów regulacyjnych. Jest niezbędny w wielu procesach, m.in. przewodnictwie nerwowo-mięśniowym, czynności mięśni, prawidłowym rozwoju układu kostnego, procesach krzepnięcia krwi, aktywacji niektórych enzymów, przepuszczalności błon komórkowych i naczyń. Podanie preparatu uzupełnia niedobory wapnia w organizmie oraz prowadzi do zmniejszenia obrzęków i odczynów alergicznych.",
    indicationDescription:
        "Stany zwiększonego zapotrzebowania na wapń (ciąża, laktacja, okresy intensywnego wzrostu u dzieci, rekonwalescencja, złamania kości), wspomagająco w leczeniu chorób alergicznych, stanów zapalnych, zapobieganie osteoporozie.",
    constraintIndicationDescription:
        "Hiperkalcemia (hiperparatyreoidyzm, hiperwitaminoza D), ciężka hiperkalciuria, niewydolność nerek znacznego stopnia.Ostrożnie stosować u pacjentów z kamicą nerkową lub leczonych preparatami naparstnicy.",
    warningDescription: "",
    pregnancyDescription: "",
    sideEffectDescription:
        "Po dużych dawkach mogą wystąpić zaburzenia żołądkowo-jelitowe (zaparcia), hiperkalcemia.",
    interactionDescription:
        "Zmniejsza wchłanianie tetracykliny i związków fluoru (m.in. fluorochinolonów) z przewodu pokarmowego oraz stężenie fosforanów we krwi. Nasila toksyczne działanie glikozydów naparstnicy. Z moczopędnymi lekami tiazydowymi zwiększa się ryzyko hiperkalcemii. Glikokortykosteroidy, kalcytonina, kwas szczawiowy, fitynowy i fosforany hamują wchłanianie soli wapnia, natomiast kwas cytrynowy, witamina D, parathormon ułatwiają je.",
    dosageDescription:
        "Dorośli i dzieci od 4 rż. doustnie 2-3 razy dziennie po 5 g granulatu (1 saszetka) rozpuszczone w 1/3 szklanki wody.",
    noteDescription: "",
    therapeuticClass: "Antiallergicum, Remineralisans",
    isActive: false,
    drugSubstance: [],
    drugEans: [
      DrugEans(
        id: 13,
        ean: "590999026912P",
        drugId: 495,
      )
    ],
    pregnancies: [
      Pregnancy(
        id: 1,
        name: "Stosowanie dopuszczone",
        description: "Stosowanie dopuszczone",
        enumKey: "1",
        isActive: true,
      ),
      Pregnancy(
        id: 100,
        name: "Brak danych",
        description: "Brak danych",
        enumKey: "7",
        isActive: true,
      )
    ],
    lactations: [
      Lactations(
        id: 100,
        name: "Brak danych",
        description: "Brak danych",
        enumKey: "7",
        isActive: true,
      )
    ],
  );

  test(
    'check format data of drug model',
    () => {
      expect(Drug.fromJson(drugResponse), expectedDrug),
    },
  );
}
