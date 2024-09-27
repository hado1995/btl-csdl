INSERT INTO btlcsdlnc.dich_vu_phong (don_gia,don_vi_tinh,ghi_chu,ten_dich_vu) VALUES
	(25000.0,'m3/khối','Tiền nước sinh hoạt chung của cả phòng','Nước'),
	(3500.0,'kWh','Tiền điện sinh hoạt chung của cả phòng','Điện'),
	(100000.0,'tháng','Tiền internet một tháng / phòng','Internet');
INSERT INTO btlcsdlnc.dich_vu_tien_ich (don_gia,don_vi_tinh,ghi_chu,ten_dich_vu) VALUES
	(15000.0,'kg','Giá giặt là tính theo số cân quần áo','Giặt là'),
	(20000.0,'giờ','Tiền thuê xe máy tính theo giờ','Thuê xe máy'),
	(5000.0,'lượt','Tiền thuê xe đạp tính theo giờ','Thuê xe đạp'),
	(750000.0,'tháng','Tiền ăn trưa 1 tháng','Vé ăn trưa tháng');
INSERT INTO btlcsdlnc.loai_phong (ghi_chu,gia_co_ban_chung,ten_loai_phong) VALUES
	('Phòng khu ký túc xá B1. Giá tinh theo tháng trên mỗi sinh viên',200000.0,'Khu B1'),
	('Phòng khu ký túc xá B2. Giá tinh theo tháng trên mỗi sinh viên',250000.0,'Khu B2'),
	('Phòng khu ký túc xá B5. Giá tinh theo tháng trên mỗi sinh viên',1500000.0,'Khu B5');
INSERT INTO btlcsdlnc.phong (ma_phong,ghi_chu,gia_phong,mo_ta_phong,so_nguoi_hien_tai,so_nguoi_toi_da,loai_phong_ma_loai_phong) VALUES
	('101-B1',NULL,200000.0,'Ký túc xá trang bị cơ bản với giường, chiếu. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng',1,8,3),
	('101-B2',NULL,200000.0,'Ký túc xá trang bị cơ bản với giường, chiếu. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng',1,8,1),
	('101-B5',NULL,1200000.0,'Ký túc xá trang bị đầy đủ giường, tủ quần áo và các tiện nghi như điều hòa, Wi-Fi tốc độ cao. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng',1,4,2),
	('102-B1',NULL,200000.0,'Ký túc xá trang bị cơ bản với giường, chiếu. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng',2,8,1),
	('102-B2',NULL,200000.0,'Ký túc xá trang bị cơ bản với giường, chiếu. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng',2,8,2),
	('102-B5',NULL,1200000.0,'Ký túc xá trang bị đầy đủ giường, tủ quần áo và các tiện nghi như điều hòa, Wi-Fi tốc độ cao. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng',2,4,3),
	('103-B1',NULL,200000.0,'Ký túc xá trang bị cơ bản với giường, chiếu. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng',1,8,1),
	('103-B2',NULL,200000.0,'Ký túc xá trang bị cơ bản với giường, chiếu. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng',1,8,2),
	('103-B5',NULL,1200000.0,'Ký túc xá trang bị đầy đủ giường, tủ quần áo và các tiện nghi như điều hòa, Wi-Fi tốc độ cao. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng',1,4,3);
INSERT INTO btlcsdlnc.hop_dong_dich_vu_phong (don_gia,ghi_chu,so_luong,dich_vu_phong_ma_dich_vu,phong_ma_phong,ngay_bat_dau,ngay_ket_thuc) VALUES
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'101-B1','01/09/2024','01/10/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'101-B2','01/09/2024','01/10/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'101-B5','01/09/2024','01/10/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'102-B1','01/09/2024','01/10/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'102-B2','01/09/2024','01/10/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'102-B5','01/09/2024','01/10/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'103-B1','01/09/2024','01/10/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'103-B2','01/09/2024','01/10/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'103-B5','01/09/2024','01/10/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'101-B1','01/09/2024','01/10/2024');
INSERT INTO btlcsdlnc.hop_dong_dich_vu_phong (don_gia,ghi_chu,so_luong,dich_vu_phong_ma_dich_vu,phong_ma_phong,ngay_bat_dau,ngay_ket_thuc) VALUES
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'101-B2','01/09/2024','01/10/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'101-B5','01/09/2024','01/10/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'102-B1','01/09/2024','01/10/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'102-B2','01/09/2024','01/10/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'102-B5','01/09/2024','01/10/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'103-B1','01/09/2024','01/10/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'103-B2','01/09/2024','01/10/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'103-B5','01/09/2024','01/10/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'101-B1','01/09/2024','01/10/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'101-B2','01/09/2024','01/10/2024');
INSERT INTO btlcsdlnc.hop_dong_dich_vu_phong (don_gia,ghi_chu,so_luong,dich_vu_phong_ma_dich_vu,phong_ma_phong,ngay_bat_dau,ngay_ket_thuc) VALUES
	(100000.0,'Tiền internet một tháng / phòng',1,3,'101-B5','01/09/2024','01/10/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'102-B1','01/09/2024','01/10/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'102-B2','01/09/2024','01/10/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'102-B5','01/09/2024','01/10/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'103-B1','01/09/2024','01/10/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'103-B2','01/09/2024','01/10/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'103-B5','01/09/2024','01/10/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'101-B1','01/10/2024','01/11/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'101-B2','01/10/2024','01/11/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'101-B5','01/10/2024','01/11/2024');
INSERT INTO btlcsdlnc.hop_dong_dich_vu_phong (don_gia,ghi_chu,so_luong,dich_vu_phong_ma_dich_vu,phong_ma_phong,ngay_bat_dau,ngay_ket_thuc) VALUES
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'102-B1','01/10/2024','01/11/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'102-B2','01/10/2024','01/11/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'102-B5','01/10/2024','01/11/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'103-B1','01/10/2024','01/11/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'103-B2','01/10/2024','01/11/2024'),
	(25000.0,'Tiền nước sinh hoạt chung của cả phòng',1,1,'103-B5','01/10/2024','01/11/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'101-B1','01/10/2024','01/11/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'101-B2','01/10/2024','01/11/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'101-B5','01/10/2024','01/11/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'102-B1','01/10/2024','01/11/2024');
INSERT INTO btlcsdlnc.hop_dong_dich_vu_phong (don_gia,ghi_chu,so_luong,dich_vu_phong_ma_dich_vu,phong_ma_phong,ngay_bat_dau,ngay_ket_thuc) VALUES
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'102-B2','01/10/2024','01/11/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'102-B5','01/10/2024','01/11/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'103-B1','01/10/2024','01/11/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'103-B2','01/10/2024','01/11/2024'),
	(3500.0,'Tiền điện sinh hoạt chung của cả phòng',1,2,'103-B5','01/10/2024','01/11/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'101-B1','01/10/2024','01/11/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'101-B2','01/10/2024','01/11/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'101-B5','01/10/2024','01/11/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'102-B1','01/10/2024','01/11/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'102-B2','01/10/2024','01/11/2024');
INSERT INTO btlcsdlnc.hop_dong_dich_vu_phong (don_gia,ghi_chu,so_luong,dich_vu_phong_ma_dich_vu,phong_ma_phong,ngay_bat_dau,ngay_ket_thuc) VALUES
	(100000.0,'Tiền internet một tháng / phòng',1,3,'102-B5','01/10/2024','01/11/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'103-B1','01/10/2024','01/11/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'103-B2','01/10/2024','01/11/2024'),
	(100000.0,'Tiền internet một tháng / phòng',1,3,'103-B5','01/10/2024','01/11/2024');
INSERT INTO btlcsdlnc.sinh_vien (ma_sinh_vien,cccd,ghi_chu,gioi_tinh,ho_ten,lop,ngay_sinh,que_quan,so_dien_thoai,phong_ma_phong) VALUES
	('B19DCCN001','0123456789',NULL,'Nam','Nguyễn Văn A','D19CQCN01-B','01/01/2001','Hà Nội','0123456789','101-B1'),
	('B19DCCN002','0123456780',NULL,'Nữ','Nguyễn Thị B','D19CQCN02-B','01/02/2001','Nam Định','0123456780','101-B2'),
	('B19DCCN003','0123456781',NULL,'Nữ','Đỗ Thị C','D19CQCN03-B','01/03/2001','Hà Nam','0123456781','101-B2'),
	('B19DCCN004','0123456782',NULL,'Nam','Bùi Văn D','D19CQCN04-B','01/04/2001','Quảng Ninh','0123456782','101-B5'),
	('B19DCCN005','0123456783',NULL,'Nam','Nguyễn Văn E','D19CQCN01-B','01/01/2001','Sơn La','0123456783','102-B1'),
	('B19DCCN006','0123456784',NULL,'Nữ','Nguyễn Thị F','D19CQCN02-B','01/02/2001','Hà Giang','0123456784','102-B2'),
	('B19DCCN007','0123456785',NULL,'Nữ','Đỗ Thị G','D19CQCN03-B','01/03/2001','Bắc Giang','0123456785','102-B2'),
	('B19DCCN008','0123456786',NULL,'Nam','Bùi Văn H','D19CQCN04-B','01/04/2001','Cao Bằng','0123456786','102-B5'),
	('B19DCCN009','0123456787',NULL,'Nam','Nguyễn Văn I','D19CQCN01-B','01/01/2001','Bắc Kạn','0123456787','103-B1'),
	('B19DCCN010','0123456788',NULL,'Nữ','Nguyễn Thị J','D19CQCN02-B','01/02/2001','Hà Giang','0123456788','103-B2');
INSERT INTO btlcsdlnc.sinh_vien (ma_sinh_vien,cccd,ghi_chu,gioi_tinh,ho_ten,lop,ngay_sinh,que_quan,so_dien_thoai,phong_ma_phong) VALUES
	('B19DCCN011','0123456710',NULL,'Nữ','Đỗ Thị K','D19CQCN03-B','01/03/2001','Bắc Giang','0123456710','103-B2'),
	('B19DCCN012','0123456711',NULL,'Nam','Bùi Văn M','D19CQCN04-B','01/04/2001','Cao Bằng','0123456711','103-B5');
INSERT INTO btlcsdlnc.hop_dong_thue_phong (ghi_chu,gia_phong,ngay_bat_dau,ngay_ket_thuc,phong_ma_phong,sinh_vien_ma_sinh_vien) VALUES
	('Hợp đồng thuê phòng bắt đầu từ 01/12/2023 đến 01/12/2024 với giá 200000.0',200000.0,'01/12/2023','01/12/2024','101-B1','B19DCCN001'),
	('Hợp đồng thuê phòng bắt đầu từ 01/12/2023 đến 01/12/2024 với giá 200000.0',200000.0,'01/12/2023','01/12/2024','101-B2','B19DCCN002'),
	('Hợp đồng thuê phòng bắt đầu từ 01/12/2023 đến 01/12/2024 với giá 200000.0',200000.0,'01/12/2023','01/12/2024','101-B2','B19DCCN003'),
	('Hợp đồng thuê phòng bắt đầu từ 01/12/2023 đến 01/12/2024 với giá 1200000.0',1200000.0,'01/12/2023','01/12/2024','101-B5','B19DCCN004'),
	('Hợp đồng thuê phòng bắt đầu từ 01/12/2023 đến 01/12/2024 với giá 200000.0',200000.0,'01/12/2023','01/12/2024','102-B1','B19DCCN005'),
	('Hợp đồng thuê phòng bắt đầu từ 01/12/2023 đến 01/12/2024 với giá 200000.0',200000.0,'01/12/2023','01/12/2024','102-B2','B19DCCN006'),
	('Hợp đồng thuê phòng bắt đầu từ 01/12/2023 đến 01/12/2024 với giá 200000.0',200000.0,'01/12/2023','01/12/2024','102-B2','B19DCCN007'),
	('Hợp đồng thuê phòng bắt đầu từ 01/12/2023 đến 01/12/2024 với giá 1200000.0',1200000.0,'01/12/2023','01/12/2024','102-B5','B19DCCN008'),
	('Hợp đồng thuê phòng bắt đầu từ 01/12/2023 đến 01/12/2024 với giá 200000.0',200000.0,'01/12/2023','01/12/2024','103-B1','B19DCCN009'),
	('Hợp đồng thuê phòng bắt đầu từ 01/12/2023 đến 01/12/2024 với giá 200000.0',200000.0,'01/12/2023','01/12/2024','103-B2','B19DCCN010');
INSERT INTO btlcsdlnc.hop_dong_thue_phong (ghi_chu,gia_phong,ngay_bat_dau,ngay_ket_thuc,phong_ma_phong,sinh_vien_ma_sinh_vien) VALUES
	('Hợp đồng thuê phòng bắt đầu từ 01/12/2023 đến 01/12/2024 với giá 200000.0',200000.0,'01/12/2023','01/12/2024','103-B2','B19DCCN011'),
	('Hợp đồng thuê phòng bắt đầu từ 01/12/2023 đến 01/12/2024 với giá 1200000.0',1200000.0,'01/12/2023','01/12/2024','103-B5','B19DCCN012');
INSERT INTO btlcsdlnc.khach (cccd,ghi_chu,ho_ten,ngay_den,ngay_di,ngay_sinh,que_quan,sinh_vien_ma_sinh_vien) VALUES
	('001111111111','Đến thăm sinh viên Nguyễn Văn A mã sinh viên B19DCCN001 trong ngày','Trần Văn X','01/05/2024','01/05/2024','01/01/1975','Cà Mau','B19DCCN001'),
	('001111111112','Đến thăm sinh viên Nguyễn Văn A mã sinh viên B19DCCN001 trong ngày','Trần Văn Y','01/08/2024','01/08/2024','01/01/1975','Cà Mau','B19DCCN001'),
	('001111111111','Đến thăm sinh viên Nguyễn Văn A mã sinh viên B19DCCN001 trong ngày','Trần Văn X','01/09/2024','01/09/2024','01/01/1975','Cà Mau','B19DCCN001'),
	('001111111112','Đến thăm sinh viên Nguyễn Thị B mã sinh viên B19DCCN002 trong ngày','Trần Văn Y','01/05/2024','01/05/2024','01/01/1975','Cà Mau','B19DCCN002'),
	('001111111111','Đến thăm sinh viên Nguyễn Thị B mã sinh viên B19DCCN002 trong ngày','Trần Văn X','01/08/2024','01/08/2024','01/01/1975','Cà Mau','B19DCCN002'),
	('001111111112','Đến thăm sinh viên Nguyễn Thị B mã sinh viên B19DCCN002 trong ngày','Trần Văn Y','01/09/2024','01/09/2024','01/01/1975','Cà Mau','B19DCCN002'),
	('001111111111','Đến thăm sinh viên Đỗ Thị C mã sinh viên B19DCCN003 trong ngày','Trần Văn X','01/05/2024','01/05/2024','01/01/1975','Cà Mau','B19DCCN003'),
	('001111111112','Đến thăm sinh viên Đỗ Thị C mã sinh viên B19DCCN003 trong ngày','Trần Văn Y','01/08/2024','01/08/2024','01/01/1975','Cà Mau','B19DCCN003'),
	('001111111111','Đến thăm sinh viên Đỗ Thị C mã sinh viên B19DCCN003 trong ngày','Trần Văn X','01/09/2024','01/09/2024','01/01/1975','Cà Mau','B19DCCN003'),
	('001111111112','Đến thăm sinh viên Bùi Văn D mã sinh viên B19DCCN004 trong ngày','Trần Văn Y','01/05/2024','01/05/2024','01/01/1975','Cà Mau','B19DCCN004');
INSERT INTO btlcsdlnc.khach (cccd,ghi_chu,ho_ten,ngay_den,ngay_di,ngay_sinh,que_quan,sinh_vien_ma_sinh_vien) VALUES
	('001111111111','Đến thăm sinh viên Bùi Văn D mã sinh viên B19DCCN004 trong ngày','Trần Văn X','01/08/2024','01/08/2024','01/01/1975','Cà Mau','B19DCCN004'),
	('001111111112','Đến thăm sinh viên Bùi Văn D mã sinh viên B19DCCN004 trong ngày','Trần Văn Y','01/09/2024','01/09/2024','01/01/1975','Cà Mau','B19DCCN004'),
	('001111111111','Đến thăm sinh viên Nguyễn Văn E mã sinh viên B19DCCN005 trong ngày','Trần Văn X','01/05/2024','01/05/2024','01/01/1975','Cà Mau','B19DCCN005'),
	('001111111112','Đến thăm sinh viên Nguyễn Văn E mã sinh viên B19DCCN005 trong ngày','Trần Văn Y','01/08/2024','01/08/2024','01/01/1975','Cà Mau','B19DCCN005'),
	('001111111111','Đến thăm sinh viên Nguyễn Văn E mã sinh viên B19DCCN005 trong ngày','Trần Văn X','01/09/2024','01/09/2024','01/01/1975','Cà Mau','B19DCCN005'),
	('001111111112','Đến thăm sinh viên Nguyễn Thị F mã sinh viên B19DCCN006 trong ngày','Trần Văn Y','01/05/2024','01/05/2024','01/01/1975','Cà Mau','B19DCCN006'),
	('001111111111','Đến thăm sinh viên Nguyễn Thị F mã sinh viên B19DCCN006 trong ngày','Trần Văn X','01/08/2024','01/08/2024','01/01/1975','Cà Mau','B19DCCN006'),
	('001111111112','Đến thăm sinh viên Nguyễn Thị F mã sinh viên B19DCCN006 trong ngày','Trần Văn Y','01/09/2024','01/09/2024','01/01/1975','Cà Mau','B19DCCN006'),
	('001111111111','Đến thăm sinh viên Đỗ Thị G mã sinh viên B19DCCN007 trong ngày','Trần Văn X','01/05/2024','01/05/2024','01/01/1975','Cà Mau','B19DCCN007'),
	('001111111112','Đến thăm sinh viên Đỗ Thị G mã sinh viên B19DCCN007 trong ngày','Trần Văn Y','01/08/2024','01/08/2024','01/01/1975','Cà Mau','B19DCCN007');
INSERT INTO btlcsdlnc.khach (cccd,ghi_chu,ho_ten,ngay_den,ngay_di,ngay_sinh,que_quan,sinh_vien_ma_sinh_vien) VALUES
	('001111111111','Đến thăm sinh viên Đỗ Thị G mã sinh viên B19DCCN007 trong ngày','Trần Văn X','01/09/2024','01/09/2024','01/01/1975','Cà Mau','B19DCCN007'),
	('001111111112','Đến thăm sinh viên Bùi Văn H mã sinh viên B19DCCN008 trong ngày','Trần Văn Y','01/05/2024','01/05/2024','01/01/1975','Cà Mau','B19DCCN008'),
	('001111111111','Đến thăm sinh viên Bùi Văn H mã sinh viên B19DCCN008 trong ngày','Trần Văn X','01/08/2024','01/08/2024','01/01/1975','Cà Mau','B19DCCN008'),
	('001111111112','Đến thăm sinh viên Bùi Văn H mã sinh viên B19DCCN008 trong ngày','Trần Văn Y','01/09/2024','01/09/2024','01/01/1975','Cà Mau','B19DCCN008'),
	('001111111111','Đến thăm sinh viên Nguyễn Văn I mã sinh viên B19DCCN009 trong ngày','Trần Văn X','01/05/2024','01/05/2024','01/01/1975','Cà Mau','B19DCCN009'),
	('001111111112','Đến thăm sinh viên Nguyễn Văn I mã sinh viên B19DCCN009 trong ngày','Trần Văn Y','01/08/2024','01/08/2024','01/01/1975','Cà Mau','B19DCCN009'),
	('001111111111','Đến thăm sinh viên Nguyễn Văn I mã sinh viên B19DCCN009 trong ngày','Trần Văn X','01/09/2024','01/09/2024','01/01/1975','Cà Mau','B19DCCN009'),
	('001111111112','Đến thăm sinh viên Nguyễn Thị J mã sinh viên B19DCCN010 trong ngày','Trần Văn Y','01/05/2024','01/05/2024','01/01/1975','Cà Mau','B19DCCN010'),
	('001111111111','Đến thăm sinh viên Nguyễn Thị J mã sinh viên B19DCCN010 trong ngày','Trần Văn X','01/08/2024','01/08/2024','01/01/1975','Cà Mau','B19DCCN010'),
	('001111111112','Đến thăm sinh viên Nguyễn Thị J mã sinh viên B19DCCN010 trong ngày','Trần Văn Y','01/09/2024','01/09/2024','01/01/1975','Cà Mau','B19DCCN010');
INSERT INTO btlcsdlnc.khach (cccd,ghi_chu,ho_ten,ngay_den,ngay_di,ngay_sinh,que_quan,sinh_vien_ma_sinh_vien) VALUES
	('001111111111','Đến thăm sinh viên Đỗ Thị K mã sinh viên B19DCCN011 trong ngày','Trần Văn X','01/05/2024','01/05/2024','01/01/1975','Cà Mau','B19DCCN011'),
	('001111111112','Đến thăm sinh viên Đỗ Thị K mã sinh viên B19DCCN011 trong ngày','Trần Văn Y','01/08/2024','01/08/2024','01/01/1975','Cà Mau','B19DCCN011'),
	('001111111111','Đến thăm sinh viên Đỗ Thị K mã sinh viên B19DCCN011 trong ngày','Trần Văn X','01/09/2024','01/09/2024','01/01/1975','Cà Mau','B19DCCN011'),
	('001111111112','Đến thăm sinh viên Bùi Văn M mã sinh viên B19DCCN012 trong ngày','Trần Văn Y','01/05/2024','01/05/2024','01/01/1975','Cà Mau','B19DCCN012'),
	('001111111111','Đến thăm sinh viên Bùi Văn M mã sinh viên B19DCCN012 trong ngày','Trần Văn X','01/08/2024','01/08/2024','01/01/1975','Cà Mau','B19DCCN012'),
	('001111111112','Đến thăm sinh viên Bùi Văn M mã sinh viên B19DCCN012 trong ngày','Trần Văn Y','01/09/2024','01/09/2024','01/01/1975','Cà Mau','B19DCCN012');
INSERT INTO btlcsdlnc.lich_su_su_dung_dich_vu_tien_ich (don_gia,ghi_chu,so_luong,dich_vu_tien_ich_ma_dich_vu,sinh_vien_ma_sinh_vien,ngay_su_dung) VALUES
	(15000.0,NULL,1,1,'B19DCCN001','01/09/2024'),
	(20000.0,NULL,1,2,'B19DCCN001','01/09/2024'),
	(5000.0,NULL,1,3,'B19DCCN001','01/09/2024'),
	(750000.0,NULL,1,4,'B19DCCN001','01/09/2024'),
	(15000.0,NULL,1,1,'B19DCCN002','01/09/2024'),
	(20000.0,NULL,1,2,'B19DCCN002','01/09/2024'),
	(5000.0,NULL,1,3,'B19DCCN002','01/09/2024'),
	(750000.0,NULL,1,4,'B19DCCN002','01/09/2024'),
	(15000.0,NULL,1,1,'B19DCCN003','01/09/2024'),
	(20000.0,NULL,1,2,'B19DCCN003','01/09/2024');
INSERT INTO btlcsdlnc.lich_su_su_dung_dich_vu_tien_ich (don_gia,ghi_chu,so_luong,dich_vu_tien_ich_ma_dich_vu,sinh_vien_ma_sinh_vien,ngay_su_dung) VALUES
	(5000.0,NULL,1,3,'B19DCCN003','01/09/2024'),
	(750000.0,NULL,1,4,'B19DCCN003','01/09/2024'),
	(15000.0,NULL,1,1,'B19DCCN004','01/09/2024'),
	(20000.0,NULL,1,2,'B19DCCN004','01/09/2024'),
	(5000.0,NULL,1,3,'B19DCCN004','01/09/2024'),
	(750000.0,NULL,1,4,'B19DCCN004','01/09/2024'),
	(15000.0,NULL,1,1,'B19DCCN005','01/09/2024'),
	(20000.0,NULL,1,2,'B19DCCN005','01/09/2024'),
	(5000.0,NULL,1,3,'B19DCCN005','01/09/2024'),
	(750000.0,NULL,1,4,'B19DCCN005','01/09/2024');
INSERT INTO btlcsdlnc.lich_su_su_dung_dich_vu_tien_ich (don_gia,ghi_chu,so_luong,dich_vu_tien_ich_ma_dich_vu,sinh_vien_ma_sinh_vien,ngay_su_dung) VALUES
	(15000.0,NULL,1,1,'B19DCCN006','01/09/2024'),
	(20000.0,NULL,1,2,'B19DCCN006','01/09/2024'),
	(5000.0,NULL,1,3,'B19DCCN006','01/09/2024'),
	(750000.0,NULL,1,4,'B19DCCN006','01/09/2024'),
	(15000.0,NULL,1,1,'B19DCCN007','01/09/2024'),
	(20000.0,NULL,1,2,'B19DCCN007','01/09/2024'),
	(5000.0,NULL,1,3,'B19DCCN007','01/09/2024'),
	(750000.0,NULL,1,4,'B19DCCN007','01/09/2024'),
	(15000.0,NULL,1,1,'B19DCCN008','01/09/2024'),
	(20000.0,NULL,1,2,'B19DCCN008','01/09/2024');
INSERT INTO btlcsdlnc.lich_su_su_dung_dich_vu_tien_ich (don_gia,ghi_chu,so_luong,dich_vu_tien_ich_ma_dich_vu,sinh_vien_ma_sinh_vien,ngay_su_dung) VALUES
	(5000.0,NULL,1,3,'B19DCCN008','01/09/2024'),
	(750000.0,NULL,1,4,'B19DCCN008','01/09/2024'),
	(15000.0,NULL,1,1,'B19DCCN009','01/09/2024'),
	(20000.0,NULL,1,2,'B19DCCN009','01/09/2024'),
	(5000.0,NULL,1,3,'B19DCCN009','01/09/2024'),
	(750000.0,NULL,1,4,'B19DCCN009','01/09/2024'),
	(15000.0,NULL,1,1,'B19DCCN010','01/09/2024'),
	(20000.0,NULL,1,2,'B19DCCN010','01/09/2024'),
	(5000.0,NULL,1,3,'B19DCCN010','01/09/2024'),
	(750000.0,NULL,1,4,'B19DCCN010','01/09/2024');
INSERT INTO btlcsdlnc.lich_su_su_dung_dich_vu_tien_ich (don_gia,ghi_chu,so_luong,dich_vu_tien_ich_ma_dich_vu,sinh_vien_ma_sinh_vien,ngay_su_dung) VALUES
	(15000.0,NULL,1,1,'B19DCCN011','01/09/2024'),
	(20000.0,NULL,1,2,'B19DCCN011','01/09/2024'),
	(5000.0,NULL,1,3,'B19DCCN011','01/09/2024'),
	(750000.0,NULL,1,4,'B19DCCN011','01/09/2024'),
	(15000.0,NULL,1,1,'B19DCCN012','01/09/2024'),
	(20000.0,NULL,1,2,'B19DCCN012','01/09/2024'),
	(5000.0,NULL,1,3,'B19DCCN012','01/09/2024'),
	(750000.0,NULL,1,4,'B19DCCN012','01/09/2024'),
	(15000.0,NULL,1,1,'B19DCCN001','01/10/2024'),
	(20000.0,NULL,1,2,'B19DCCN001','01/10/2024');
INSERT INTO btlcsdlnc.lich_su_su_dung_dich_vu_tien_ich (don_gia,ghi_chu,so_luong,dich_vu_tien_ich_ma_dich_vu,sinh_vien_ma_sinh_vien,ngay_su_dung) VALUES
	(5000.0,NULL,1,3,'B19DCCN001','01/10/2024'),
	(750000.0,NULL,1,4,'B19DCCN001','01/10/2024'),
	(15000.0,NULL,1,1,'B19DCCN002','01/10/2024'),
	(20000.0,NULL,1,2,'B19DCCN002','01/10/2024'),
	(5000.0,NULL,1,3,'B19DCCN002','01/10/2024'),
	(750000.0,NULL,1,4,'B19DCCN002','01/10/2024'),
	(15000.0,NULL,1,1,'B19DCCN003','01/10/2024'),
	(20000.0,NULL,1,2,'B19DCCN003','01/10/2024'),
	(5000.0,NULL,1,3,'B19DCCN003','01/10/2024'),
	(750000.0,NULL,1,4,'B19DCCN003','01/10/2024');
INSERT INTO btlcsdlnc.lich_su_su_dung_dich_vu_tien_ich (don_gia,ghi_chu,so_luong,dich_vu_tien_ich_ma_dich_vu,sinh_vien_ma_sinh_vien,ngay_su_dung) VALUES
	(15000.0,NULL,1,1,'B19DCCN004','01/10/2024'),
	(20000.0,NULL,1,2,'B19DCCN004','01/10/2024'),
	(5000.0,NULL,1,3,'B19DCCN004','01/10/2024'),
	(750000.0,NULL,1,4,'B19DCCN004','01/10/2024'),
	(15000.0,NULL,1,1,'B19DCCN005','01/10/2024'),
	(20000.0,NULL,1,2,'B19DCCN005','01/10/2024'),
	(5000.0,NULL,1,3,'B19DCCN005','01/10/2024'),
	(750000.0,NULL,1,4,'B19DCCN005','01/10/2024'),
	(15000.0,NULL,1,1,'B19DCCN006','01/10/2024'),
	(20000.0,NULL,1,2,'B19DCCN006','01/10/2024');
INSERT INTO btlcsdlnc.lich_su_su_dung_dich_vu_tien_ich (don_gia,ghi_chu,so_luong,dich_vu_tien_ich_ma_dich_vu,sinh_vien_ma_sinh_vien,ngay_su_dung) VALUES
	(5000.0,NULL,1,3,'B19DCCN006','01/10/2024'),
	(750000.0,NULL,1,4,'B19DCCN006','01/10/2024'),
	(15000.0,NULL,1,1,'B19DCCN007','01/10/2024'),
	(20000.0,NULL,1,2,'B19DCCN007','01/10/2024'),
	(5000.0,NULL,1,3,'B19DCCN007','01/10/2024'),
	(750000.0,NULL,1,4,'B19DCCN007','01/10/2024'),
	(15000.0,NULL,1,1,'B19DCCN008','01/10/2024'),
	(20000.0,NULL,1,2,'B19DCCN008','01/10/2024'),
	(5000.0,NULL,1,3,'B19DCCN008','01/10/2024'),
	(750000.0,NULL,1,4,'B19DCCN008','01/10/2024');
INSERT INTO btlcsdlnc.lich_su_su_dung_dich_vu_tien_ich (don_gia,ghi_chu,so_luong,dich_vu_tien_ich_ma_dich_vu,sinh_vien_ma_sinh_vien,ngay_su_dung) VALUES
	(15000.0,NULL,1,1,'B19DCCN009','01/10/2024'),
	(20000.0,NULL,1,2,'B19DCCN009','01/10/2024'),
	(5000.0,NULL,1,3,'B19DCCN009','01/10/2024'),
	(750000.0,NULL,1,4,'B19DCCN009','01/10/2024'),
	(15000.0,NULL,1,1,'B19DCCN010','01/10/2024'),
	(20000.0,NULL,1,2,'B19DCCN010','01/10/2024'),
	(5000.0,NULL,1,3,'B19DCCN010','01/10/2024'),
	(750000.0,NULL,1,4,'B19DCCN010','01/10/2024'),
	(15000.0,NULL,1,1,'B19DCCN011','01/10/2024'),
	(20000.0,NULL,1,2,'B19DCCN011','01/10/2024');
INSERT INTO btlcsdlnc.lich_su_su_dung_dich_vu_tien_ich (don_gia,ghi_chu,so_luong,dich_vu_tien_ich_ma_dich_vu,sinh_vien_ma_sinh_vien,ngay_su_dung) VALUES
	(5000.0,NULL,1,3,'B19DCCN011','01/10/2024'),
	(750000.0,NULL,1,4,'B19DCCN011','01/10/2024'),
	(15000.0,NULL,1,1,'B19DCCN012','01/10/2024'),
	(20000.0,NULL,1,2,'B19DCCN012','01/10/2024'),
	(5000.0,NULL,1,3,'B19DCCN012','01/10/2024'),
	(750000.0,NULL,1,4,'B19DCCN012','01/10/2024');
INSERT INTO btlcsdlnc.ve_xe_thang (bien_so_xe,so_may,ghi_chu,loai_xe,mau_son,nhan_hieu,so_khung,sinh_vien_ma_sinh_vien) VALUES
	('B19DCCN001','11223344',NULL,'Wave Alpha','Trắng','Honda','55667788','B19DCCN001'),
	('B19DCCN002','11223344',NULL,'Wave Alpha','Trắng','Honda','55667788','B19DCCN002'),
	('B19DCCN003','11223344',NULL,'Wave Alpha','Trắng','Honda','55667788','B19DCCN003'),
	('B19DCCN004','11223344',NULL,'Wave Alpha','Trắng','Honda','55667788','B19DCCN004'),
	('B19DCCN005','11223344',NULL,'Wave Alpha','Trắng','Honda','55667788','B19DCCN005'),
	('B19DCCN006','11223344',NULL,'Wave Alpha','Trắng','Honda','55667788','B19DCCN006'),
	('B19DCCN007','11223344',NULL,'Wave Alpha','Trắng','Honda','55667788','B19DCCN007'),
	('B19DCCN008','11223344',NULL,'Wave Alpha','Trắng','Honda','55667788','B19DCCN008'),
	('B19DCCN009','11223344',NULL,'Wave Alpha','Trắng','Honda','55667788','B19DCCN009'),
	('B19DCCN010','11223344',NULL,'Wave Alpha','Trắng','Honda','55667788','B19DCCN010');
INSERT INTO btlcsdlnc.ve_xe_thang (bien_so_xe,so_may,ghi_chu,loai_xe,mau_son,nhan_hieu,so_khung,sinh_vien_ma_sinh_vien) VALUES
	('B19DCCN011','11223344',NULL,'Wave Alpha','Trắng','Honda','55667788','B19DCCN011'),
	('B19DCCN012','11223344',NULL,'Wave Alpha','Trắng','Honda','55667788','B19DCCN012');
INSERT INTO btlcsdlnc.lich_su_gui_xe (bien_so_xe,ghi_chu,gia_tien,gio_gui,gio_lay,mien_phi,ve_xe_thang_bien_so_xe) VALUES
	('B19DCCN001','Lượt gửi miễn phí của vé xe tháng',0.0,'01/09/2024 07:00:00','01/09/2024 19:00:00',1,'B19DCCN001'),
	('B19DCCN002','Lượt gửi miễn phí của vé xe tháng',0.0,'01/09/2024 07:00:00','01/09/2024 19:00:00',1,'B19DCCN002'),
	('B19DCCN003','Lượt gửi miễn phí của vé xe tháng',0.0,'01/09/2024 07:00:00','01/09/2024 19:00:00',1,'B19DCCN003'),
	('B19DCCN004','Lượt gửi miễn phí của vé xe tháng',0.0,'01/09/2024 07:00:00','01/09/2024 19:00:00',1,'B19DCCN004'),
	('B19DCCN005','Lượt gửi miễn phí của vé xe tháng',0.0,'01/09/2024 07:00:00','01/09/2024 19:00:00',1,'B19DCCN005'),
	('B19DCCN006','Lượt gửi miễn phí của vé xe tháng',0.0,'01/09/2024 07:00:00','01/09/2024 19:00:00',1,'B19DCCN006'),
	('B19DCCN007','Lượt gửi miễn phí của vé xe tháng',0.0,'01/09/2024 07:00:00','01/09/2024 19:00:00',1,'B19DCCN007'),
	('B19DCCN008','Lượt gửi miễn phí của vé xe tháng',0.0,'01/09/2024 07:00:00','01/09/2024 19:00:00',1,'B19DCCN008'),
	('B19DCCN009','Lượt gửi miễn phí của vé xe tháng',0.0,'01/09/2024 07:00:00','01/09/2024 19:00:00',1,'B19DCCN009'),
	('B19DCCN010','Lượt gửi miễn phí của vé xe tháng',0.0,'01/09/2024 07:00:00','01/09/2024 19:00:00',1,'B19DCCN010');
INSERT INTO btlcsdlnc.lich_su_gui_xe (bien_so_xe,ghi_chu,gia_tien,gio_gui,gio_lay,mien_phi,ve_xe_thang_bien_so_xe) VALUES
	('B19DCCN011','Lượt gửi miễn phí của vé xe tháng',0.0,'01/09/2024 07:00:00','01/09/2024 19:00:00',1,'B19DCCN011'),
	('B19DCCN012','Lượt gửi miễn phí của vé xe tháng',0.0,'01/09/2024 07:00:00','01/09/2024 19:00:00',1,'B19DCCN012');
