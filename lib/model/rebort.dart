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
  late String mission_number;
  late int id;
  late String url;
  late String mission_name;
  late bool is_watched;
  late String touchstone;
  Videos();


  @override
  String toString() {
    return 'Videos{mission_number: $mission_number, id: $id, url: $url, mission_name: $mission_name, is_watched: $is_watched, touchstone: $touchstone}';
  }

  Videos.fromJson(Map<String, dynamic> json) {
    mission_number = json['mission_number'];
    id = json['id'];
    url = json['url'];
    is_watched = json['is_watched'].runtimeType == List ? false:json['is_watched'];
    mission_name = json['mission_name'];
    touchstone = json['touchstone'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mission_number'] = this.mission_number;
    data['id'] = this.id;
    data['is_watched'] = this.is_watched;
    data['url'] = this.url;
    data['mission_name'] = this.mission_name;
    data['touchstone'] = this.touchstone;
    return data;
  }
}


