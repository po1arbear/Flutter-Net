class FilmEntity {
	int total;
	List<FilmSubject> subjects;
	int count;
	int start;
	String title;

	FilmEntity({this.total, this.subjects, this.count, this.start, this.title});

	FilmEntity.fromJson(Map<String, dynamic> json) {
		total = json['total'];
		if (json['subjects'] != null) {
			subjects = new List<FilmSubject>();(json['subjects'] as List).forEach((v) { subjects.add(new FilmSubject.fromJson(v)); });
		}
		count = json['count'];
		start = json['start'];
		title = json['title'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['total'] = this.total;
		if (this.subjects != null) {
      data['subjects'] =  this.subjects.map((v) => v.toJson()).toList();
    }
		data['count'] = this.count;
		data['start'] = this.start;
		data['title'] = this.title;
		return data;
	}
}

class FilmSubject {
	FilmSubjectsImages images;
	String originalTitle;
	String year;
	List<FilmSubjectsDirector> directors;
	FilmSubjectsRating rating;
	String alt;
	String title;
	int collectCount;
	bool hasVideo;
	List<String> pubdates;
	List<FilmSubjectsCast> casts;
	String subtype;
	List<String> genres;
	List<String> durations;
	String mainlandPubdate;
	String id;

	FilmSubject({this.images, this.originalTitle, this.year, this.directors, this.rating, this.alt, this.title, this.collectCount, this.hasVideo, this.pubdates, this.casts, this.subtype, this.genres, this.durations, this.mainlandPubdate, this.id});

	FilmSubject.fromJson(Map<String, dynamic> json) {
		images = json['images'] != null ? new FilmSubjectsImages.fromJson(json['images']) : null;
		originalTitle = json['original_title'];
		year = json['year'];
		if (json['directors'] != null) {
			directors = new List<FilmSubjectsDirector>();(json['directors'] as List).forEach((v) { directors.add(new FilmSubjectsDirector.fromJson(v)); });
		}
		rating = json['rating'] != null ? new FilmSubjectsRating.fromJson(json['rating']) : null;
		alt = json['alt'];
		title = json['title'];
		collectCount = json['collect_count'];
		hasVideo = json['has_video'];
		pubdates = json['pubdates']?.cast<String>();
		if (json['casts'] != null) {
			casts = new List<FilmSubjectsCast>();(json['casts'] as List).forEach((v) { casts.add(new FilmSubjectsCast.fromJson(v)); });
		}
		subtype = json['subtype'];
		genres = json['genres']?.cast<String>();
		durations = json['durations']?.cast<String>();
		mainlandPubdate = json['mainland_pubdate'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.images != null) {
      data['images'] = this.images.toJson();
    }
		data['original_title'] = this.originalTitle;
		data['year'] = this.year;
		if (this.directors != null) {
      data['directors'] =  this.directors.map((v) => v.toJson()).toList();
    }
		if (this.rating != null) {
      data['rating'] = this.rating.toJson();
    }
		data['alt'] = this.alt;
		data['title'] = this.title;
		data['collect_count'] = this.collectCount;
		data['has_video'] = this.hasVideo;
		data['pubdates'] = this.pubdates;
		if (this.casts != null) {
      data['casts'] =  this.casts.map((v) => v.toJson()).toList();
    }
		data['subtype'] = this.subtype;
		data['genres'] = this.genres;
		data['durations'] = this.durations;
		data['mainland_pubdate'] = this.mainlandPubdate;
		data['id'] = this.id;
		return data;
	}
}

class FilmSubjectsImages {
	String small;
	String large;
	String medium;

	FilmSubjectsImages({this.small, this.large, this.medium});

	FilmSubjectsImages.fromJson(Map<String, dynamic> json) {
		small = json['small'];
		large = json['large'];
		medium = json['medium'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['small'] = this.small;
		data['large'] = this.large;
		data['medium'] = this.medium;
		return data;
	}
}

class FilmSubjectsDirector {
	String name;
	String alt;
	String id;
	FilmSubjectsDirectorsAvatars avatars;
	String nameEn;

	FilmSubjectsDirector({this.name, this.alt, this.id, this.avatars, this.nameEn});

	FilmSubjectsDirector.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		alt = json['alt'];
		id = json['id'];
		avatars = json['avatars'] != null ? new FilmSubjectsDirectorsAvatars.fromJson(json['avatars']) : null;
		nameEn = json['name_en'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['alt'] = this.alt;
		data['id'] = this.id;
		if (this.avatars != null) {
      data['avatars'] = this.avatars.toJson();
    }
		data['name_en'] = this.nameEn;
		return data;
	}
}

class FilmSubjectsDirectorsAvatars {
	String small;
	String large;
	String medium;

	FilmSubjectsDirectorsAvatars({this.small, this.large, this.medium});

	FilmSubjectsDirectorsAvatars.fromJson(Map<String, dynamic> json) {
		small = json['small'];
		large = json['large'];
		medium = json['medium'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['small'] = this.small;
		data['large'] = this.large;
		data['medium'] = this.medium;
		return data;
	}
}

class FilmSubjectsRating {
	dynamic average;
	int min;
	int max;
	String stars;

	FilmSubjectsRating({this.average, this.min, this.max, this.stars});

	FilmSubjectsRating.fromJson(Map<String, dynamic> json) {
		average = json['average'];
		min = json['min'];
		max = json['max'];
		stars = json['stars'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['average'] = this.average;
		data['min'] = this.min;
		data['max'] = this.max;
		data['stars'] = this.stars;
		return data;
	}
}


class FilmSubjectsCast {
	String name;
	String alt;
	String id;
	FilmSubjectsCastsAvatars avatars;
	String nameEn;

	FilmSubjectsCast({this.name, this.alt, this.id, this.avatars, this.nameEn});

	FilmSubjectsCast.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		alt = json['alt'];
		id = json['id'];
		avatars = json['avatars'] != null ? new FilmSubjectsCastsAvatars.fromJson(json['avatars']) : null;
		nameEn = json['name_en'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['alt'] = this.alt;
		data['id'] = this.id;
		if (this.avatars != null) {
      data['avatars'] = this.avatars.toJson();
    }
		data['name_en'] = this.nameEn;
		return data;
	}
}

class FilmSubjectsCastsAvatars {
	String small;
	String large;
	String medium;

	FilmSubjectsCastsAvatars({this.small, this.large, this.medium});

	FilmSubjectsCastsAvatars.fromJson(Map<String, dynamic> json) {
		small = json['small'];
		large = json['large'];
		medium = json['medium'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['small'] = this.small;
		data['large'] = this.large;
		data['medium'] = this.medium;
		return data;
	}
}
