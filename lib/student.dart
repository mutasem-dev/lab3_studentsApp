class Student {
  String name, id, phone, address;
  Student(
      {required this.name,
      required this.id,
      required this.phone,
      required this.address});

  @override
  String toString() {
    return '''
            Name: $name
            ID: $id
            Adrees: $address
            phone: $phone
           ''';
  }
}
