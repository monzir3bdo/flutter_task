class AllProblem {
  late List<Problem>? problems;

  AllProblem({this.problems});
  AllProblem.fromJson(Map<dynamic, dynamic> json) {
    if (json['problems'] != null) {
      problems = <Problem>[];
      json['problems'].forEach((v) {
        problems!.add(Problem.fromJson(v));
      });
    }
  }
}

class Problem {
  late List<Diabete> diabetes;
  late List<Asthma> asthma;

  Problem.fromJson(Map<dynamic, dynamic> json) {
    if (json['Diabetes'] != null) {
      diabetes = <Diabete>[];
      json['Diabetes'].forEach((v) {
        diabetes.add(Diabete.fromJson(v));
      });
    }
    if (json['Asthma'] != null) {
      asthma = <Asthma>[];
      json['Asthma'].forEach((v) {
        asthma.add(Asthma.fromJson(v));
      });
    }
  }
}

class Diabete {
  late List<Medication> medications;
  late List<Labs> labs;

  Diabete.fromJson(Map<dynamic, dynamic> json) {
    if (json['medications'] != null) {
      medications = <Medication>[];
      json['medications'].forEach((v) {
        medications.add(Medication.fromJson(v));
      });
    }
    if (json['labs'] != null) {
      labs = <Labs>[];
      json['labs'].forEach((v) {
        labs.add(Labs.fromJson(v));
      });
    }
  }
}

class Medication {
  late List<MedicationsClass> medicationsClasses;

  Medication.fromJson(Map<dynamic, dynamic> json) {
    if (json['medicationsClasses'] != null) {
      medicationsClasses = <MedicationsClass>[];
      json['medicationsClasses'].forEach((v) {
        medicationsClasses.add(MedicationsClass.fromJson(v));
      });
    }
  }
}

class MedicationsClass {
  late List<ClassName> className;
  late List<ClassName> className2;

  MedicationsClass.fromJson(Map<dynamic, dynamic> json) {
    if (json['className'] != null) {
      className = <ClassName>[];
      json['className'].forEach((v) {
        className.add(ClassName.fromJson(v));
      });
    }
    if (json['className2'] != null) {
      className2 = <ClassName>[];
      json['className2'].forEach((v) {
        className2.add(ClassName.fromJson(v));
      });
    }
  }
}

class ClassName {
  late List<AssociatedDrug> associatedDrug;
  late List<AssociatedDrug> associatedDrug2;

  ClassName.fromJson(Map<dynamic, dynamic> json) {
    if (json['associatedDrug'] != null) {
      associatedDrug = <AssociatedDrug>[];
      json['associatedDrug'].forEach((v) {
        associatedDrug.add(AssociatedDrug.fromJson(v));
      });
    }
    if (json['associatedDrug#2'] != null) {
      associatedDrug2 = <AssociatedDrug>[];
      json['associatedDrug#2'].forEach((v) {
        associatedDrug2.add(AssociatedDrug.fromJson(v));
      });
    }
  }
}

class AssociatedDrug {
  late String name;
  String? dose;
  late String strength;

  AssociatedDrug.fromJson(Map<dynamic, dynamic> json) {
    name = json['name'];
    dose = json['dose'];
    strength = json['strength'];
  }
}

class Labs {
  late String missingField;

  Labs.fromJson(Map<dynamic, dynamic> json) {
    missingField = json['missing_field'];
  }
}

class Asthma {
  Asthma();
  Asthma.fromJson(Map<dynamic, dynamic> json) {}

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    return data;
  }
}
