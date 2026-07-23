enum Gender {
  male,
  female, 
}

extension GenderExtension on Gender {
  String get arabicName {
    switch (this) {
      case Gender.male:
        return "ذكر";
      case Gender.female:
        return "أنثى";
    }
  }

  String get englishName {
    switch (this) {
      case Gender.male:
        return "Male";
      case Gender.female:
        return "Female";
    }
  }
}