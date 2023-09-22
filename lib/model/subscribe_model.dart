class subscribe_model {
  int? id;
  String? customerId;
  String? subsAmount;
  String? createdAt;
  String? updatedAt;

  subscribe_model(
      {this.id,
        this.customerId,
        this.subsAmount,
        this.createdAt,
        this.updatedAt});

  subscribe_model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customerId = json['customer_id'];
    subsAmount = json['subs_amount'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['customer_id'] = this.customerId;
    data['subs_amount'] = this.subsAmount;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
