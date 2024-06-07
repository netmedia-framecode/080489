-- Active: 1711937588478@@127.0.0.1@3306@pemetaan_toko_roti
CREATE TABLE auth(
  id INT AUTO_INCREMENT PRIMARY KEY,
  image VARCHAR(50),
  bg VARCHAR(35)
);

CREATE TABLE user_role(
  id_role INT AUTO_INCREMENT PRIMARY KEY,
  role VARCHAR(35)
);

INSERT INTO
  user_role(role)
VALUES
  ('Administrator'),
  ('Owner'),
  ('Member');

CREATE TABLE user_status(
  id_status INT AUTO_INCREMENT PRIMARY KEY,
  status VARCHAR(35)
);

INSERT INTO
  user_status(status)
VALUES
  ('Active'),
  ('No Active');

CREATE TABLE users(
  id_user INT AUTO_INCREMENT PRIMARY KEY,
  id_role INT,
  id_active INT,
  en_user VARCHAR(75),
  token CHAR(6),
  name VARCHAR(100),
  image VARCHAR(100),
  email VARCHAR(75),
  password VARCHAR(100),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (id_role) REFERENCES user_role(id_role) ON UPDATE NO ACTION ON DELETE NO ACTION,
  FOREIGN KEY (id_active) REFERENCES user_status(id_active) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE user_menu(
  id_menu INT AUTO_INCREMENT PRIMARY KEY,
  menu VARCHAR(50)
);

CREATE TABLE user_sub_menu(
  id_sub_menu INT AUTO_INCREMENT PRIMARY KEY,
  id_menu INT,
  id_active INT,
  title VARCHAR(50),
  url VARCHAR(50),
  icon VARCHAR(50),
  FOREIGN KEY (id_menu) REFERENCES user_menu(id_menu) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_active) REFERENCES user_status(id_active) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE user_access_menu(
  id_access_menu INT AUTO_INCREMENT PRIMARY KEY,
  id_role INT,
  id_menu INT,
  FOREIGN KEY (id_role) REFERENCES user_role(id_role) ON UPDATE NO ACTION ON DELETE NO ACTION,
  FOREIGN KEY (id_menu) REFERENCES user_menu(id_menu) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE user_access_sub_menu(
  id_access_sub_menu INT AUTO_INCREMENT PRIMARY KEY,
  id_role INT,
  id_sub_menu INT,
  FOREIGN KEY (id_role) REFERENCES user_role(id_role) ON UPDATE NO ACTION ON DELETE NO ACTION,
  FOREIGN KEY (id_sub_menu) REFERENCES user_sub_menu(id_sub_menu) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE toko(
  id_toko INT AUTO_INCREMENT PRIMARY KEY,
  nama_toko VARCHAR(50),
  image_toko VARCHAR(75),
  alamat VARCHAR(100),
  deskripsi text,
  jam_kerja_buka TIME,
  jam_kerja_tutup TIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE roti(
  id_roti INT AUTO_INCREMENT PRIMARY KEY,
  id_toko INT,
  jenis_roti TEXT,
  harga INT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (id_toko) REFERENCES toko(id_toko) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE galeri(
  id_galeri INT AUTO_INCREMENT PRIMARY KEY,
  id_toko INT,
  image_galeri VARCHAR(75),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (id_toko) REFERENCES toko(id_toko) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE maps(
  id_map INT AUTO_INCREMENT PRIMARY KEY,
  id_toko INT,
  longitude VARCHAR(35),
  latitude VARCHAR(35),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (id_toko) REFERENCES toko(id_toko) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE kontak (
  id_kontak INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(75),
  email VARCHAR(50),
  phone CHAR(12),
  pesan TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE tentang(
  id_tentang INT AUTO_INCREMENT PRIMARY KEY,
  deskripsi TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);