class ElephantsAPI {
  String sId;
  int index;
  String name;
  String affiliation;
  String species;
  String sex;
  String fictional;
  String dob;
  String dod;
  String wikilink;
  String image;
  String note;

  ElephantsAPI(
      {this.sId,
      this.index,
      this.name,
      this.affiliation,
      this.species,
      this.sex,
      this.fictional,
      this.dob,
      this.dod,
      this.wikilink,
      this.image,
      this.note});

  ElephantsAPI.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    index = json['index'];
    name = json['name'];
    affiliation = json['affiliation'];
    species = json['species'];
    sex = json['sex'];
    fictional = json['fictional'];
    dob = json['dob'];
    dod = json['dod'];
    wikilink = json['wikilink'];
    image = json['image'];
    note = json['note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['index'] = this.index;
    data['name'] = this.name;
    data['affiliation'] = this.affiliation;
    data['species'] = this.species;
    data['sex'] = this.sex;
    data['fictional'] = this.fictional;
    data['dob'] = this.dob;
    data['dod'] = this.dod;
    data['wikilink'] = this.wikilink;
    data['image'] = this.image;
    data['note'] = this.note;
    return data;
  }
}
