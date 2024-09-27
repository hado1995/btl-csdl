-- Liệt kê thông tin sinh viên trong KTX cùng số tiền mà họ phải trả cho tất cả các dịch vụ (bao gồm cả tiền phòng) đã sử dụng trong mỗi tháng. Thông tin này có thể in theo danh sách hoặc theo từng người.
SELECT
    sv.ma_sinh_vien,
    sv.ho_ten,
    COALESCE(SUM(hdvp.don_gia * hdvp.so_luong), 0) AS phi_dich_vu_phong,
    COALESCE(SUM(htp.gia_phong), 0) AS phi_thue_phong,
    COALESCE(SUM(lsd.don_gia * lsd.so_luong), 0) AS phi_dich_vu_tien_ich,
    COALESCE(SUM(lg.gia_tien), 0) + COALESCE(COUNT(DISTINCT(vxt.bien_so_xe)) * 100000, 0) AS phi_gui_xe,
    COALESCE(SUM(hdvp.don_gia * hdvp.so_luong), 0) +
    COALESCE(SUM(htp.gia_phong), 0) +
    COALESCE(SUM(lsd.don_gia * lsd.so_luong), 0) +
    COALESCE(SUM(lg.gia_tien), 0) AS tong_tien
FROM
    sinh_vien sv
LEFT JOIN
    hop_dong_dich_vu_phong hdvp ON sv.phong_ma_phong  = hdvp.phong_ma_phong 
LEFT JOIN
    hop_dong_thue_phong htp ON sv.ma_sinh_vien = htp.sinh_vien_ma_sinh_vien
LEFT JOIN
    lich_su_su_dung_dich_vu_tien_ich lsd ON sv.ma_sinh_vien = lsd.sinh_vien_ma_sinh_vien
LEFT JOIN
    ve_xe_thang vxt ON sv.ma_sinh_vien = vxt.sinh_vien_ma_sinh_vien 
LEFT JOIN
    lich_su_gui_xe lg ON lg.bien_so_xe = vxt.bien_so_xe 
GROUP BY
    sv.ma_sinh_vien,
    sv.ho_ten
ORDER BY
    sv.ma_sinh_vien
;



-- Liệt kê thông tin sinh viên cùng tên dịch vụ, tổng giá mỗi dịch vụ mà họ sử dụng trong khoảng thời gian từ ngày bắt đầu đến ngày kết thúc.
SELECT
	sinh_vien.ma_sinh_vien,
	sinh_vien.ho_ten,
	dich_vu_tien_ich.ten_dich_vu,
	dich_vu_tien_ich.don_gia AS don_gia_goc,
	SUM(lich_su_su_dung_dich_vu_tien_ich.so_luong) AS tong_so_luong,
	SUM(lich_su_su_dung_dich_vu_tien_ich.so_luong) * dich_vu_tien_ich.don_gia AS tong_tien
FROM
	dich_vu_tien_ich
JOIN lich_su_su_dung_dich_vu_tien_ich 
    ON
	dich_vu_tien_ich.ma_dich_vu = lich_su_su_dung_dich_vu_tien_ich.dich_vu_tien_ich_ma_dich_vu
JOIN sinh_vien ON
	lich_su_su_dung_dich_vu_tien_ich.sinh_vien_ma_sinh_vien = sinh_vien.ma_sinh_vien
WHERE STR_TO_DATE(lich_su_su_dung_dich_vu_tien_ich.ngay_su_dung, '%d/%m/%Y') BETWEEN STR_TO_DATE('01/09/2024', '%d/%m/%Y') AND STR_TO_DATE('25/09/2024', '%d/%m/%Y')
GROUP BY
	sinh_vien.ma_sinh_vien,
	dich_vu_tien_ich.ten_dich_vu,
	dich_vu_tien_ich.don_gia
;


-- Liệt kê thông tin sinh viên cùng thông tin về các khách đến thăm họ trong tuần, hoặc tháng, cùng số lần mỗi khách đến chơi.
SELECT
    sv.ma_sinh_vien,
    sv.ho_ten AS ho_ten_sv,
    k.cccd AS cccd_khach,
    k.ho_ten AS ho_ten_khach,
    COUNT(k.ma_khach) AS so_lan_den_tham
FROM
    sinh_vien sv
LEFT JOIN
    khach k ON sv.ma_sinh_vien = k.sinh_vien_ma_sinh_vien
GROUP BY
    sv.ma_sinh_vien,
    sv.ho_ten,
    k.cccd,
    k.ho_ten
ORDER BY
    sv.ma_sinh_vien
;

-- Liệt kê danh mục các dịch vụ cùng doanh thu của mỗi dịch vụ trong KTX trong mỗi tháng.
SELECT
	dich_vu_tien_ich.ma_dich_vu,
	dich_vu_tien_ich.ten_dich_vu,
	dich_vu_tien_ich.don_gia AS don_gia_goc,
	SUM(lich_su_su_dung_dich_vu_tien_ich.so_luong) AS tong_so_luong,
	SUM(lich_su_su_dung_dich_vu_tien_ich.so_luong) * dich_vu_tien_ich.don_gia AS doanh_thu,
	CONCAT(MONTH(STR_TO_DATE(lich_su_su_dung_dich_vu_tien_ich.ngay_su_dung, '%d/%m/%Y')), '-', YEAR(STR_TO_DATE(lich_su_su_dung_dich_vu_tien_ich.ngay_su_dung, '%d/%m/%Y'))) AS thang
FROM
	dich_vu_tien_ich
JOIN lich_su_su_dung_dich_vu_tien_ich 
    ON
	dich_vu_tien_ich.ma_dich_vu = lich_su_su_dung_dich_vu_tien_ich.dich_vu_tien_ich_ma_dich_vu
GROUP BY
	dich_vu_tien_ich.ma_dich_vu,
	dich_vu_tien_ich.ten_dich_vu,
	dich_vu_tien_ich.don_gia,
	CONCAT(MONTH(STR_TO_DATE(lich_su_su_dung_dich_vu_tien_ich.ngay_su_dung, '%d/%m/%Y')), '-', YEAR(STR_TO_DATE(lich_su_su_dung_dich_vu_tien_ich.ngay_su_dung, '%d/%m/%Y')))
;