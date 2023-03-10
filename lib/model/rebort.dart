class rebort {
  Level? level;

  rebort({this.level});

  rebort.fromJson(Map<String, dynamic> json) {
    level = json['level'] != null ? new Level.fromJson(json['level']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.level != null) {
      data['level'] = this.level!.toJson();
    }
    return data;
  }
}
class rebort_cust {
  List<Level>? Leveles;

  rebort_cust({this.Leveles});

  rebort_cust.fromJson(Map<String, dynamic> json) {
    if (json['levels'] != null) {
      Leveles = <Level>[];
      json['levels'].forEach((v) {
        Leveles!.add(new Level.fromJson(v));
      });
    }  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.Leveles != null) {
      data['levels'] = this.Leveles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
class Level {
  int? id;
  String? name;
  List<Categories>? categories;

  Level({this.id, this.name, this.categories});

  Level.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  int? id;
  int? levelId;
  String? name;
  String? letter;
  List<Videos>? videos;

  Categories({this.id, this.levelId, this.name, this.videos});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    levelId = json['level_id'];
    name = json['name'];
    letter = json['letter'];
    if (json['videos'] != null) {
      videos = <Videos>[];
      json['videos'].forEach((v) {
        videos!.add(new Videos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['level_id'] = this.levelId;
    data['letter'] = this.letter;
    data['name'] = this.name;
    if (this.videos != null) {
      data['videos'] = this.videos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Videos {
  int? id;
  String? url;
  String? title;
  String? image;
  String? target;
  String? result;
  String? answer;
  bool? isWatched;
  Videos();


  Videos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    title = json['title'];
    image = json['image'];
    target = json['target'];
    result = json['result'];
    answer = json['answer'];
    isWatched = json['is_watched'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['title'] = this.title;
    data['image'] = this.image;
    data['target'] = this.target;
    data['result'] = this.result;
    data['answer'] = this.answer;
    data['is_watched'] = this.isWatched;
    return data;
  }
}


