class ContactModel {
  ContactModel({
    required this.phoneNumber,
    required this.name,
    this.memo,
    this.id,
  });

  final String phoneNumber;
  final String name;
  final String? memo;
  final int? id;
}
