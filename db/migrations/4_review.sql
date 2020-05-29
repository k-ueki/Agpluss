-- +goose Up
CREATE TABLE IF NOT EXISTS review (
  id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT(11) UNSIGNED ,
  class_id INT(10) UNSIGNED NOT NULL,
  understanding INT(1) UNSIGNED NOT NULL,
  motivation INT(1) UNSIGNED NOT NULL,
  attendance INT(1) UNSIGNED NOT NULL,
  tests_difficulty INT(1) UNSIGNED NOT NULL,
  easiness INT(1) UNSIGNED NOT NULL,
  comment TEXT DEFAULT NULL,
  ctime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES user(id),
  FOREIGN KEY (class_id) REFERENCES class(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- +goose Down
DROP TABLE review;
