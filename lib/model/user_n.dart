class user_n {
  String? cusId;
  String? name;
  String? email;
  String? phone;
  String? country;
  String? avatar;

  user_n(
      {this.cusId,
        this.name,
        this.email,
        this.phone,
        this.country,
        this.avatar});

  user_n.fromJson(Map<String, dynamic> json) {
    cusId = json['cus_id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    country = json['country'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cus_id'] = this.cusId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['country'] = this.country;
    data['avatar'] = this.avatar;
    return data;
  }
}