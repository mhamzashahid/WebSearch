class Account{
  final String title;
  final String number;
  final String stateCode;
  final String state;
  final String image;

  const Account({
    required this.title,
    required this.number,
    required this.stateCode,
    required this.state,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'number': this.number,
      'stateCode': this.stateCode,
      'state': this.state,
      'image': this.image,
    };
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      title: map['title'] as String,
      number: map['number'] as String,
      stateCode: map['stateCode'] as String,
      state: map['state'] as String,
      image: map['image'] as String,
    );
  }

  @override
  String toString() {
    return 'Account{title: $title, number: $number, stateCode: $stateCode, state: $state, image: $image}';
  }
}