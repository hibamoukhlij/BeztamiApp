class WalletItem {
  String id;
  String name;
  String address;
  String icon;
  String type;
  String network;

  WalletItem({
    required this.id,
    required this.name,
    required this.address,
    required this.icon,
    required this.type,
    required this.network,
  });

  factory WalletItem.fromJson(Map<String, dynamic> json) {
    return WalletItem(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      icon: json['icon'],
      type: json['type'],
      network: json['network'],
    );
  }
}