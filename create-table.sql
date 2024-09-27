-- Khoi tao bang btlcsdlnc.dich_vu_phong
CREATE TABLE `dich_vu_phong` (
	`ma_dich_vu` bigint NOT NULL AUTO_INCREMENT,
	`don_gia` double DEFAULT NULL,
	`don_vi_tinh` varchar(255) DEFAULT NULL,
	`ghi_chu` varchar(255) DEFAULT NULL,
	`ten_dich_vu` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`ma_dich_vu`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Khoi tao bang btlcsdlnc.dich_vu_tien_ich
CREATE TABLE `dich_vu_tien_ich` (
	`ma_dich_vu` bigint NOT NULL AUTO_INCREMENT,
	`don_gia` double DEFAULT NULL,
	`don_vi_tinh` varchar(255) DEFAULT NULL,
	`ghi_chu` varchar(255) DEFAULT NULL,
	`ten_dich_vu` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`ma_dich_vu`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Khoi tao bang btlcsdlnc.loai_phong
CREATE TABLE `loai_phong` (
	`ma_loai_phong` bigint NOT NULL AUTO_INCREMENT,
	`ghi_chu` varchar(255) DEFAULT NULL,
	`gia_co_ban_chung` double DEFAULT NULL,
	`ten_loai_phong` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`ma_loai_phong`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Khoi tao bang btlcsdlnc.phong
CREATE TABLE `phong` (
	`ma_phong` varchar(255) NOT NULL,
	`ghi_chu` varchar(255) DEFAULT NULL,
	`gia_phong` double DEFAULT NULL,
	`mo_ta_phong` varchar(255) DEFAULT NULL,
	`so_nguoi_hien_tai` bigint DEFAULT NULL,
	`so_nguoi_toi_da` bigint DEFAULT NULL,
	`loai_phong_ma_loai_phong` bigint DEFAULT NULL,
	PRIMARY KEY (`ma_phong`),
	KEY `FKol9mwgwt3bmwhnxj8qgr1vs5b` (`loai_phong_ma_loai_phong`),
	CONSTRAINT `FKol9mwgwt3bmwhnxj8qgr1vs5b` FOREIGN KEY (`loai_phong_ma_loai_phong`) REFERENCES `loai_phong` (`ma_loai_phong`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Khoi tao bang btlcsdlnc.hop_dong_dich_vu_phong
CREATE TABLE `hop_dong_dich_vu_phong` (
	`ma_hop_dong` bigint NOT NULL AUTO_INCREMENT,
	`don_gia` double DEFAULT NULL,
	`ghi_chu` varchar(255) DEFAULT NULL,
	`so_luong` bigint DEFAULT NULL,
	`dich_vu_phong_ma_dich_vu` bigint DEFAULT NULL,
	`phong_ma_phong` varchar(255) DEFAULT NULL,
	`ngay_bat_dau` varchar(255) DEFAULT NULL,
	`ngay_ket_thuc` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`ma_hop_dong`),
	KEY `FK1nnu7jt4qmukybxiq1wtl4x8a` (`dich_vu_phong_ma_dich_vu`),
	KEY `FKjk9ktrexablnk6m6y01qusdqc` (`phong_ma_phong`),
	CONSTRAINT `FK1nnu7jt4qmukybxiq1wtl4x8a` FOREIGN KEY (`dich_vu_phong_ma_dich_vu`) REFERENCES `dich_vu_phong` (`ma_dich_vu`),
	CONSTRAINT `FKjk9ktrexablnk6m6y01qusdqc` FOREIGN KEY (`phong_ma_phong`) REFERENCES `phong` (`ma_phong`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Khoi tao bang btlcsdlnc.sinh_vien
CREATE TABLE `sinh_vien` (
	`ma_sinh_vien` varchar(255) NOT NULL,
	`cccd` varchar(255) DEFAULT NULL,
	`ghi_chu` varchar(255) DEFAULT NULL,
	`gioi_tinh` varchar(255) DEFAULT NULL,
	`ho_ten` varchar(255) DEFAULT NULL,
	`lop` varchar(255) DEFAULT NULL,
	`ngay_sinh` varchar(255) DEFAULT NULL,
	`que_quan` varchar(255) DEFAULT NULL,
	`so_dien_thoai` varchar(255) DEFAULT NULL,
	`phong_ma_phong` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`ma_sinh_vien`),
	KEY `FKfuwml0y44sivb3btxn3un99y1` (`phong_ma_phong`),
	CONSTRAINT `FKfuwml0y44sivb3btxn3un99y1` FOREIGN KEY (`phong_ma_phong`) REFERENCES `phong` (`ma_phong`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Khoi tao bang btlcsdlnc.hop_dong_thue_phong
CREATE TABLE `hop_dong_thue_phong` (
	`ma_hop_dong` bigint NOT NULL AUTO_INCREMENT,
	`ghi_chu` varchar(255) DEFAULT NULL,
	`gia_phong` double DEFAULT NULL,
	`ngay_bat_dau` varchar(255) DEFAULT NULL,
	`ngay_ket_thuc` varchar(255) DEFAULT NULL,
	`phong_ma_phong` varchar(255) DEFAULT NULL,
	`sinh_vien_ma_sinh_vien` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`ma_hop_dong`),
	KEY `FKhsjc9i8nq9y0hsa1sfdf6k7hk` (`phong_ma_phong`),
	KEY `FKnvdfrgxj64ye1qikapwtlfc17` (`sinh_vien_ma_sinh_vien`),
	CONSTRAINT `FKhsjc9i8nq9y0hsa1sfdf6k7hk` FOREIGN KEY (`phong_ma_phong`) REFERENCES `phong` (`ma_phong`),
	CONSTRAINT `FKnvdfrgxj64ye1qikapwtlfc17` FOREIGN KEY (`sinh_vien_ma_sinh_vien`) REFERENCES `sinh_vien` (`ma_sinh_vien`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Khoi tao bang btlcsdlnc.khach
CREATE TABLE `khach` (
	`ma_khach` bigint NOT NULL AUTO_INCREMENT,
	`cccd` varchar(255) DEFAULT NULL,
	`ghi_chu` varchar(255) DEFAULT NULL,
	`ho_ten` varchar(255) DEFAULT NULL,
	`ngay_den` varchar(255) DEFAULT NULL,
	`ngay_di` varchar(255) DEFAULT NULL,
	`ngay_sinh` varchar(255) DEFAULT NULL,
	`que_quan` varchar(255) DEFAULT NULL,
	`sinh_vien_ma_sinh_vien` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`ma_khach`),
	KEY `FKib1diw5whjmlau6a42j1fbu66` (`sinh_vien_ma_sinh_vien`),
	CONSTRAINT `FKib1diw5whjmlau6a42j1fbu66` FOREIGN KEY (`sinh_vien_ma_sinh_vien`) REFERENCES `sinh_vien` (`ma_sinh_vien`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Khoi tao bang btlcsdlnc.lich_su_su_dung_dich_vu_tien_ich
CREATE TABLE `lich_su_su_dung_dich_vu_tien_ich` (
	`ma_lich_su` bigint NOT NULL AUTO_INCREMENT,
	`don_gia` double DEFAULT NULL,
	`ghi_chu` varchar(255) DEFAULT NULL,
	`so_luong` bigint DEFAULT NULL,
	`dich_vu_tien_ich_ma_dich_vu` bigint DEFAULT NULL,
	`sinh_vien_ma_sinh_vien` varchar(255) DEFAULT NULL,
	`ngay_su_dung` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`ma_lich_su`),
	KEY `FK8g9n9sun9c97x56dx69ppg49w` (`dich_vu_tien_ich_ma_dich_vu`),
	KEY `FK55j5vgjip6cf06s23h3h7mq6c` (`sinh_vien_ma_sinh_vien`),
	CONSTRAINT `FK55j5vgjip6cf06s23h3h7mq6c` FOREIGN KEY (`sinh_vien_ma_sinh_vien`) REFERENCES `sinh_vien` (`ma_sinh_vien`),
	CONSTRAINT `FK8g9n9sun9c97x56dx69ppg49w` FOREIGN KEY (`dich_vu_tien_ich_ma_dich_vu`) REFERENCES `dich_vu_tien_ich` (`ma_dich_vu`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Khoi tao bang btlcsdlnc.ve_xe_thang
CREATE TABLE `ve_xe_thang` (
	`bien_so_xe` varchar(255) NOT NULL,
	`so_may` varchar(255) DEFAULT NULL,
	`ghi_chu` varchar(255) DEFAULT NULL,
	`loai_xe` varchar(255) DEFAULT NULL,
	`mau_son` varchar(255) DEFAULT NULL,
	`nhan_hieu` varchar(255) DEFAULT NULL,
	`so_khung` varchar(255) DEFAULT NULL,
	`sinh_vien_ma_sinh_vien` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`bien_so_xe`),
	KEY `FKcdvra4kx3dmrejrm7ayhwii8o` (`sinh_vien_ma_sinh_vien`),
	CONSTRAINT `FKcdvra4kx3dmrejrm7ayhwii8o` FOREIGN KEY (`sinh_vien_ma_sinh_vien`) REFERENCES `sinh_vien` (`ma_sinh_vien`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Khoi tao bang btlcsdlnc.lich_su_gui_xe
CREATE TABLE `lich_su_gui_xe` (
	`ma_luot_gui` bigint NOT NULL AUTO_INCREMENT,
	`bien_so_xe` varchar(255) DEFAULT NULL,
	`ghi_chu` varchar(255) DEFAULT NULL,
	`gia_tien` double DEFAULT NULL,
	`gio_gui` varchar(255) DEFAULT NULL,
	`gio_lay` varchar(255) DEFAULT NULL,
	`mien_phi` bit(1) DEFAULT NULL,
	`ve_xe_thang_bien_so_xe` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`ma_luot_gui`),
	KEY `FK80gd6dpeo1q61f40pt3b1vjcw` (`ve_xe_thang_bien_so_xe`),
	CONSTRAINT `FK80gd6dpeo1q61f40pt3b1vjcw` FOREIGN KEY (`ve_xe_thang_bien_so_xe`) REFERENCES `ve_xe_thang` (`bien_so_xe`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;