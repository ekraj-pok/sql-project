ALTER TABLE project.comments
ADD PRIMARY KEY (comment_id);

ALTER TABLE project.badge_id
ADD PRIMARY KEY (badge_id);

ALTER TABLE project.course_list
ADD PRIMARY KEY (course_id);	

ALTER TABLE project.badge_id
ADD PRIMARY KEY (badge_id);

ALTER TABLE project.locations
ADD PRIMARY KEY (location_id);

ALTER TABLE project.schools
ADD PRIMARY KEY (school_id);

ALTER TABLE project.badges
ADD CONSTRAINT school_id FOREIGN KEY (school_id) REFERENCES schools(school_id),
ADD CONSTRAINT badge_id FOREIGN KEY (badge_id) REFERENCES badge_id(badge_id);

ALTER TABLE comments
ADD CONSTRAINT FOREIGN KEY (school_id) REFERENCES schools(school_id);

ALTER TABLE courses
ADD CONSTRAINT FOREIGN KEY (school_id) REFERENCES schools(school_id),
ADD CONSTRAINT FOREIGN KEY (school_id) REFERENCES schools(school_id);

ALTER TABLE locations
ADD CONSTRAINT FOREIGN KEY (school_id) REFERENCES schools(school_id);

ALTER TABLE courses
ADD CONSTRAINT FOREIGN KEY (school_id) REFERENCES schools(school_id),
ADD CONSTRAINT FOREIGN KEY (course_id) REFERENCES course_list(course_id);





