package btl.csdlnc.project.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import btl.csdlnc.project.model.DichVuPhong;
import btl.csdlnc.project.model.DichVuTienIch;
import btl.csdlnc.project.model.HopDongDichVuPhong;
import btl.csdlnc.project.model.HopDongThuePhong;
import btl.csdlnc.project.model.Khach;
import btl.csdlnc.project.model.LichSuGuiXe;
import btl.csdlnc.project.model.LichSuSuDungDichVuTienIch;
import btl.csdlnc.project.model.LoaiPhong;
import btl.csdlnc.project.model.Phong;
import btl.csdlnc.project.model.SinhVien;
import btl.csdlnc.project.model.VeXeThang;
import btl.csdlnc.project.repository.DichVuPhongRepository;
import btl.csdlnc.project.repository.DichVuTienIchRepository;
import btl.csdlnc.project.repository.HopDongDichVuPhongRepository;
import btl.csdlnc.project.repository.HopDongThuePhongRepository;
import btl.csdlnc.project.repository.KhachRepository;
import btl.csdlnc.project.repository.LichSuGuiXeRepository;
import btl.csdlnc.project.repository.LichSuSuDungDichVuTienIchRepository;
import btl.csdlnc.project.repository.LoaiPhongRepository;
import btl.csdlnc.project.repository.PhongRepository;
import btl.csdlnc.project.repository.SinhVienRepository;
import btl.csdlnc.project.repository.VeXeThangRepository;;

@RestController
public class MyController {

    @Autowired
    DichVuPhongRepository dichVuPhongRepository;
    @Autowired
    DichVuTienIchRepository dichVuTienIchRepository;
    @Autowired
    HopDongDichVuPhongRepository hopDongDichVuPhongRepository;
    @Autowired
    HopDongThuePhongRepository hopDongThuePhongRepository;
    @Autowired
    KhachRepository khachRepository;
    @Autowired
    LichSuGuiXeRepository lichSuGuiXeRepository;
    @Autowired
    LichSuSuDungDichVuTienIchRepository lichSuSuDungDichVuTienIchRepository;
    @Autowired
    LoaiPhongRepository loaiPhongRepository;
    @Autowired
    PhongRepository phongRepository;
    @Autowired
    SinhVienRepository sinhVienRepository;
    @Autowired
    VeXeThangRepository veXeThangRepository;

    public static String url = "jdbc:mysql://127.0.0.1:3306/btlcsdlnc";
    public static String user = "root";
    public static String password = "mysql";

    @GetMapping("")
    public String home() {
        return new String("Welcome home!");
    }

    @PostMapping("init-data")
    public String initData() {

        // DichVuPhong
        List<DichVuPhong> dichVuPhongList = new ArrayList<>();
        dichVuPhongList.add(DichVuPhong.builder()
                .tenDichVu("Nước")
                .donViTinh("m3/khối")
                .donGia(25000.0)
                .ghiChu("Tiền nước sinh hoạt chung của cả phòng")
                .build());
        dichVuPhongList.add(DichVuPhong.builder()
                .tenDichVu("Điện")
                .donViTinh("kWh")
                .donGia(3500.0)
                .ghiChu("Tiền điện sinh hoạt chung của cả phòng")
                .build());
        dichVuPhongList.add(DichVuPhong.builder()
                .tenDichVu("Internet")
                .donViTinh("tháng")
                .donGia(100000.0)
                .ghiChu("Tiền internet một tháng / phòng")
                .build());
        dichVuPhongRepository.saveAll(dichVuPhongList);

        // DichVuTienIch
        List<DichVuTienIch> dichVuTienIchList = new ArrayList<>();
        dichVuTienIchList.add(DichVuTienIch.builder()
                .tenDichVu("Giặt là")
                .donViTinh("kg")
                .donGia(15000.0)
                .ghiChu("Giá giặt là tính theo số cân quần áo")
                .build());
        dichVuTienIchList.add(DichVuTienIch.builder()
                .tenDichVu("Thuê xe máy")
                .donViTinh("giờ")
                .donGia(20000.0)
                .ghiChu("Tiền thuê xe máy tính theo giờ")
                .build());
        dichVuTienIchList.add(DichVuTienIch.builder()
                .tenDichVu("Thuê xe đạp")
                .donViTinh("lượt")
                .donGia(5000.0)
                .ghiChu("Tiền thuê xe đạp tính theo giờ")
                .build());
        dichVuTienIchList.add(DichVuTienIch.builder()
                .tenDichVu("Vé ăn trưa tháng")
                .donViTinh("tháng")
                .donGia(750000.0)
                .ghiChu("Tiền ăn trưa 1 tháng")
                .build());
        dichVuTienIchRepository.saveAll(dichVuTienIchList);

        // LoaiPhong
        List<LoaiPhong> loaiPhongList = new ArrayList<>();
        loaiPhongList.add(LoaiPhong.builder()
                .tenLoaiPhong("Khu B1")
                .giaCoBanChung(200000.0)
                .ghiChu("Phòng khu ký túc xá B1. Giá tinh theo tháng trên mỗi sinh viên")
                .build());
        loaiPhongList.add(LoaiPhong.builder()
                .tenLoaiPhong("Khu B2")
                .giaCoBanChung(250000.0)
                .ghiChu("Phòng khu ký túc xá B2. Giá tinh theo tháng trên mỗi sinh viên")
                .build());
        loaiPhongList.add(LoaiPhong.builder()
                .tenLoaiPhong("Khu B5")
                .giaCoBanChung(1500000.0)
                .ghiChu("Phòng khu ký túc xá B5. Giá tinh theo tháng trên mỗi sinh viên")
                .build());
        loaiPhongRepository.saveAll(loaiPhongList);

        // Phong
        List<Phong> phongList = new ArrayList<>();
        phongList.add(Phong.builder()
                .maPhong("101-B1")
                .loaiPhong(loaiPhongRepository.findById(3L).get())
                .soNguoiToiDa(8L)
                .soNguoiHienTai(1L)
                .giaPhong(200000.0)
                .moTaPhong(
                        "Ký túc xá trang bị cơ bản với giường, chiếu. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng")
                .build());
        phongList.add(Phong.builder()
                .maPhong("102-B1")
                .loaiPhong(loaiPhongRepository.findById(1L).get())
                .soNguoiToiDa(8L)
                .soNguoiHienTai(2L)
                .giaPhong(200000.0)
                .moTaPhong(
                        "Ký túc xá trang bị cơ bản với giường, chiếu. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng")
                .build());
        phongList.add(Phong.builder()
                .maPhong("103-B1")
                .loaiPhong(loaiPhongRepository.findById(1L).get())
                .soNguoiToiDa(8L)
                .soNguoiHienTai(1L)
                .giaPhong(200000.0)
                .moTaPhong(
                        "Ký túc xá trang bị cơ bản với giường, chiếu. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng")
                .build());
        phongList.add(Phong.builder()
                .maPhong("101-B2")
                .loaiPhong(loaiPhongRepository.findById(1L).get())
                .soNguoiToiDa(8L)
                .soNguoiHienTai(1L)
                .giaPhong(200000.0)
                .moTaPhong(
                        "Ký túc xá trang bị cơ bản với giường, chiếu. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng")
                .build());
        phongList.add(Phong.builder()
                .maPhong("102-B2")
                .loaiPhong(loaiPhongRepository.findById(2L).get())
                .soNguoiToiDa(8L)
                .soNguoiHienTai(2L)
                .giaPhong(200000.0)
                .moTaPhong(
                        "Ký túc xá trang bị cơ bản với giường, chiếu. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng")
                .build());
        phongList.add(Phong.builder()
                .maPhong("103-B2")
                .loaiPhong(loaiPhongRepository.findById(2L).get())
                .soNguoiToiDa(8L)
                .soNguoiHienTai(1L)
                .giaPhong(200000.0)
                .moTaPhong(
                        "Ký túc xá trang bị cơ bản với giường, chiếu. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng")
                .build());
        phongList.add(Phong.builder()
                .maPhong("101-B5")
                .loaiPhong(loaiPhongRepository.findById(2L).get())
                .soNguoiToiDa(4L)
                .soNguoiHienTai(1L)
                .giaPhong(1200000.0)
                .moTaPhong(
                        "Ký túc xá trang bị đầy đủ giường, tủ quần áo và các tiện nghi như điều hòa, Wi-Fi tốc độ cao. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng")
                .build());
        phongList.add(Phong.builder()
                .maPhong("102-B5")
                .loaiPhong(loaiPhongRepository.findById(3L).get())
                .soNguoiToiDa(4L)
                .soNguoiHienTai(2L)
                .giaPhong(1200000.0)
                .moTaPhong(
                        "Ký túc xá trang bị đầy đủ giường, tủ quần áo và các tiện nghi như điều hòa, Wi-Fi tốc độ cao. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng")
                .build());
        phongList.add(Phong.builder()
                .maPhong("103-B5")
                .loaiPhong(loaiPhongRepository.findById(3L).get())
                .soNguoiToiDa(4L)
                .soNguoiHienTai(1L)
                .giaPhong(1200000.0)
                .moTaPhong(
                        "Ký túc xá trang bị đầy đủ giường, tủ quần áo và các tiện nghi như điều hòa, Wi-Fi tốc độ cao. Có nhà vệ sinh riêng trong phòng, hoặc sử dụng chung nhà vệ sinh cho cả tầng")
                .build());
        phongRepository.saveAll(phongList);

        // HopDongDichVuPhong
        List<DichVuPhong> dichVuPhongs = dichVuPhongRepository.findAll();
        List<Phong> phongs = phongRepository.findAll();
        List<HopDongDichVuPhong> hopDongDichVuPhongList = new ArrayList<>();
        for (DichVuPhong dichVuPhong : dichVuPhongs) {
            for (Phong phong : phongs) {
                hopDongDichVuPhongList.add(HopDongDichVuPhong.builder()
                        .phong(phong)
                        .dichVuPhong(dichVuPhong)
                        .donGia(dichVuPhong.getDonGia())
                        .soLuong(1L)
                        .ghiChu(dichVuPhong.getGhiChu())
                        .build());
            }
        }
        hopDongDichVuPhongRepository.saveAll(hopDongDichVuPhongList);

        // SinhVien
        List<SinhVien> sinhVienList = new ArrayList<>();
        sinhVienList.add(SinhVien.builder()
                .maSinhVien("B19DCCN001")
                .hoTen("Nguyễn Văn A")
                .lop("D19CQCN01-B")
                .ngaySinh("01/01/2001")
                .queQuan("Hà Nội")
                .soDienThoai("0123456789")
                .gioiTinh("Nam")
                .cccd("0123456789")
                .phong(phongs.get(0))
                .build());
        sinhVienList.add(SinhVien.builder()
                .maSinhVien("B19DCCN002")
                .hoTen("Nguyễn Thị B")
                .lop("D19CQCN02-B")
                .ngaySinh("01/02/2001")
                .queQuan("Nam Định")
                .soDienThoai("0123456780")
                .gioiTinh("Nữ")
                .cccd("0123456780")
                .phong(phongs.get(1))
                .build());
        sinhVienList.add(SinhVien.builder()
                .maSinhVien("B19DCCN003")
                .hoTen("Đỗ Thị C")
                .lop("D19CQCN03-B")
                .ngaySinh("01/03/2001")
                .queQuan("Hà Nam")
                .soDienThoai("0123456781")
                .gioiTinh("Nữ")
                .cccd("0123456781")
                .phong(phongs.get(1))
                .build());
        sinhVienList.add(SinhVien.builder()
                .maSinhVien("B19DCCN004")
                .hoTen("Bùi Văn D")
                .lop("D19CQCN04-B")
                .ngaySinh("01/04/2001")
                .queQuan("Quảng Ninh")
                .soDienThoai("0123456782")
                .gioiTinh("Nam")
                .cccd("0123456782")
                .phong(phongs.get(2))
                .build());
        sinhVienList.add(SinhVien.builder()
                .maSinhVien("B19DCCN005")
                .hoTen("Nguyễn Văn E")
                .lop("D19CQCN01-B")
                .ngaySinh("01/01/2001")
                .queQuan("Sơn La")
                .soDienThoai("0123456783")
                .gioiTinh("Nam")
                .cccd("0123456783")
                .phong(phongs.get(3))
                .build());
        sinhVienList.add(SinhVien.builder()
                .maSinhVien("B19DCCN006")
                .hoTen("Nguyễn Thị F")
                .lop("D19CQCN02-B")
                .ngaySinh("01/02/2001")
                .queQuan("Hà Giang")
                .soDienThoai("0123456784")
                .gioiTinh("Nữ")
                .cccd("0123456784")
                .phong(phongs.get(4))
                .build());
        sinhVienList.add(SinhVien.builder()
                .maSinhVien("B19DCCN007")
                .hoTen("Đỗ Thị G")
                .lop("D19CQCN03-B")
                .ngaySinh("01/03/2001")
                .queQuan("Bắc Giang")
                .soDienThoai("0123456785")
                .gioiTinh("Nữ")
                .cccd("0123456785")
                .phong(phongs.get(4))
                .build());
        sinhVienList.add(SinhVien.builder()
                .maSinhVien("B19DCCN008")
                .hoTen("Bùi Văn H")
                .lop("D19CQCN04-B")
                .ngaySinh("01/04/2001")
                .queQuan("Cao Bằng")
                .soDienThoai("0123456786")
                .gioiTinh("Nam")
                .cccd("0123456786")
                .phong(phongs.get(5))
                .build());
        sinhVienList.add(SinhVien.builder()
                .maSinhVien("B19DCCN009")
                .hoTen("Nguyễn Văn I")
                .lop("D19CQCN01-B")
                .ngaySinh("01/01/2001")
                .queQuan("Bắc Kạn")
                .soDienThoai("0123456787")
                .gioiTinh("Nam")
                .cccd("0123456787")
                .phong(phongs.get(6))
                .build());
        sinhVienList.add(SinhVien.builder()
                .maSinhVien("B19DCCN010")
                .hoTen("Nguyễn Thị J")
                .lop("D19CQCN02-B")
                .ngaySinh("01/02/2001")
                .queQuan("Hà Giang")
                .soDienThoai("0123456788")
                .gioiTinh("Nữ")
                .cccd("0123456788")
                .phong(phongs.get(7))
                .build());
        sinhVienList.add(SinhVien.builder()
                .maSinhVien("B19DCCN011")
                .hoTen("Đỗ Thị K")
                .lop("D19CQCN03-B")
                .ngaySinh("01/03/2001")
                .queQuan("Bắc Giang")
                .soDienThoai("0123456710")
                .gioiTinh("Nữ")
                .cccd("0123456710")
                .phong(phongs.get(7))
                .build());
        sinhVienList.add(SinhVien.builder()
                .maSinhVien("B19DCCN012")
                .hoTen("Bùi Văn M")
                .lop("D19CQCN04-B")
                .ngaySinh("01/04/2001")
                .queQuan("Cao Bằng")
                .soDienThoai("0123456711")
                .gioiTinh("Nam")
                .cccd("0123456711")
                .phong(phongs.get(8))
                .build());
        sinhVienRepository.saveAll(sinhVienList);

        // HopDongThuePhong
        List<SinhVien> sinhViens = sinhVienRepository.findAll();
        List<HopDongThuePhong> hopDongThuePhongList = new ArrayList<>();
        for (SinhVien sinhVien : sinhViens) {
            hopDongThuePhongList.add(HopDongThuePhong.builder()
                    .phong(sinhVien.getPhong())
                    .sinhVien(sinhVien)
                    .ngayBatDau("01/12/2023")
                    .ngayKetThuc("01/12/2024")
                    .giaPhong(sinhVien.getPhong().getGiaPhong())
                    .ghiChu("Hợp đồng thuê phòng bắt đầu từ 01/12/2023 đến 01/12/2024 với giá "
                            + sinhVien.getPhong().getGiaPhong())
                    .build());
        }
        hopDongThuePhongRepository.saveAll(hopDongThuePhongList);

        // Khach
        List<Khach> khachList = new ArrayList<>();
        for (SinhVien sinhVien : sinhViens) {
            khachList.add(Khach.builder()
                    .sinhVien(sinhVien)
                    .hoTen("Trần Văn X")
                    .queQuan("Cà Mau")
                    .ngaySinh("01/01/1975")
                    .cccd("001111111111")
                    .ngayDen("01/05/2024")
                    .ngayDi("01/05/2024")
                    .ghiChu("Đến thăm sinh viên " + sinhVien.getHoTen() + " mã sinh viên " + sinhVien.getMaSinhVien()
                            + " trong ngày")
                    .build());
            khachList.add(Khach.builder()
                    .sinhVien(sinhVien)
                    .hoTen("Trần Văn X")
                    .queQuan("Cà Mau")
                    .ngaySinh("01/01/1975")
                    .cccd("001111111111")
                    .ngayDen("01/08/2024")
                    .ngayDi("01/08/2024")
                    .ghiChu("Đến thăm sinh viên " + sinhVien.getHoTen() + " mã sinh viên " + sinhVien.getMaSinhVien()
                            + " trong ngày")
                    .build());
            khachList.add(Khach.builder()
                    .sinhVien(sinhVien)
                    .hoTen("Trần Văn X")
                    .queQuan("Cà Mau")
                    .ngaySinh("01/01/1975")
                    .cccd("001111111111")
                    .ngayDen("01/09/2024")
                    .ngayDi("01/09/2024")
                    .ghiChu("Đến thăm sinh viên " + sinhVien.getHoTen() + " mã sinh viên " + sinhVien.getMaSinhVien()
                            + " trong ngày")
                    .build());
        }
        khachRepository.saveAll(khachList);

        // LichSuSuDungDichVuTienIch
        List<DichVuTienIch> dichVuTienIchs = dichVuTienIchRepository.findAll();
        List<LichSuSuDungDichVuTienIch> lichSuSuDungDichVuTienIchList = new ArrayList<>();
        for (SinhVien sinhVien : sinhViens) {
            for (DichVuTienIch dichVuTienIch : dichVuTienIchs) {
                lichSuSuDungDichVuTienIchList.add(LichSuSuDungDichVuTienIch.builder()
                        .sinhVien(sinhVien)
                        .dichVuTienIch(dichVuTienIch)
                        .donGia(dichVuTienIch.getDonGia())
                        .soLuong(1L)
                        .build());
            }
        }
        lichSuSuDungDichVuTienIchRepository.saveAll(lichSuSuDungDichVuTienIchList);

        // VeXeThang
        List<VeXeThang> veXeThangList = new ArrayList<>();
        for (SinhVien sinhVien : sinhViens) {
            veXeThangList.add(VeXeThang.builder()
                    .bienSoXe(sinhVien.getMaSinhVien())
                    .sinhVien(sinhVien)
                    .loaiXe("Wave Alpha")
                    .mauSon("Trắng")
                    .nhanHieu("Honda")
                    .SoMay("11223344")
                    .soKhung("55667788")
                    .build());
        }
        veXeThangRepository.saveAll(veXeThangList);

        // LichSuGuiXe
        List<VeXeThang> veXeThangs = veXeThangRepository.findAll();
        List<LichSuGuiXe> lichSuGuiXeList = new ArrayList<>();
        for (VeXeThang veXeThang : veXeThangs) {
            lichSuGuiXeList.add(LichSuGuiXe.builder()
                    .veXeThang(veXeThang)
                    .bienSoXe(veXeThang.getBienSoXe())
                    .gioGui("01/09/2024 07:00:00")
                    .gioLay("01/09/2024 19:00:00")
                    .mienPhi(true)
                    .giaTien(0.0)
                    .ghiChu("Lượt gửi miễn phí của vé xe tháng")
                    .build());
        }
        lichSuGuiXeRepository.saveAll(lichSuGuiXeList);

        return new String("Insert Data Done");
    }

    @GetMapping("sql/1")
    public List<Object> ex1() {
        String sqlCmd = "SELECT"
                + "\n    sv.ma_sinh_vien,"
                + "\n    sv.ho_ten,"
                + "\n    COALESCE(SUM(hdvp.don_gia * hdvp.so_luong), 0) AS phi_dich_vu_phong,"
                + "\n    COALESCE(SUM(htp.gia_phong), 0) AS phi_thue_phong,"
                + "\n    COALESCE(SUM(lsd.don_gia * lsd.so_luong), 0) AS phi_dich_vu_tien_ich,"
                + "\n    COALESCE(SUM(lg.gia_tien), 0) + COALESCE(COUNT(DISTINCT(vxt.bien_so_xe)) * 100000, 0) AS phi_gui_xe,"
                + "\n    COALESCE(SUM(hdvp.don_gia * hdvp.so_luong), 0) +"
                + "\n    COALESCE(SUM(htp.gia_phong), 0) +"
                + "\n    COALESCE(SUM(lsd.don_gia * lsd.so_luong), 0) +"
                + "\n    COALESCE(SUM(lg.gia_tien), 0) AS tong_tien"
                + "\nFROM"
                + "\n    sinh_vien sv"
                + "\nLEFT JOIN"
                + "\n    hop_dong_dich_vu_phong hdvp ON sv.phong_ma_phong  = hdvp.phong_ma_phong "
                + "\nLEFT JOIN"
                + "\n    hop_dong_thue_phong htp ON sv.ma_sinh_vien = htp.sinh_vien_ma_sinh_vien"
                + "\nLEFT JOIN"
                + "\n    lich_su_su_dung_dich_vu_tien_ich lsd ON sv.ma_sinh_vien = lsd.sinh_vien_ma_sinh_vien"
                + "\nLEFT JOIN"
                + "\n    ve_xe_thang vxt ON sv.ma_sinh_vien = vxt.sinh_vien_ma_sinh_vien "
                + "\nLEFT JOIN"
                + "\n    lich_su_gui_xe lg ON lg.bien_so_xe = vxt.bien_so_xe "
                + "\nGROUP BY"
                + "\n    sv.ma_sinh_vien,"
                + "\n    sv.ho_ten"
                + "\nORDER BY"
                + "\n    sv.ma_sinh_vien";
        try {
            JSONArray jsonArray = new JSONArray();
            Connection connection = DriverManager.getConnection(url, user, password);
            Statement sta = connection.createStatement();
            ResultSet re = sta.executeQuery(sqlCmd);
            while (re.next()) {
                String ma_sinh_vien = re.getString("ma_sinh_vien");
                String ho_ten = re.getString("ho_ten");
                Double phi_dich_vu_phong = re.getDouble("phi_dich_vu_phong");
                Double phi_thue_phong = re.getDouble("phi_thue_phong");
                Double phi_dich_vu_tien_ich = re.getDouble("phi_dich_vu_tien_ich");
                Double phi_gui_xe = re.getDouble("phi_gui_xe");
                Double tong_tien = re.getDouble("tong_tien");
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("ma_sinh_vien", ma_sinh_vien);
                jsonObject.put("ho_ten", ho_ten);
                jsonObject.put("phi_dich_vu_phong", phi_dich_vu_phong);
                jsonObject.put("phi_thue_phong", phi_thue_phong);
                jsonObject.put("phi_dich_vu_tien_ich", phi_dich_vu_tien_ich);
                jsonObject.put("phi_gui_xe", phi_gui_xe);
                jsonObject.put("tong_tien", tong_tien);
                jsonArray.put(jsonObject);
            }
            return jsonArray.toList();
        } catch (SQLException e) {
            System.out.println(e);
            return new ArrayList<>();
        }
    }

    @GetMapping("sql/2")
    public List<Object> ex2() {
        String sqlCmd = "SELECT"
                + "\n	sinh_vien.ma_sinh_vien,"
                + "\n	sinh_vien.ho_ten,"
                + "\n	dich_vu_tien_ich.ten_dich_vu,"
                + "\n	dich_vu_tien_ich.don_gia AS don_gia_goc,"
                + "\n	SUM(lich_su_su_dung_dich_vu_tien_ich.so_luong) AS tong_so_luong,"
                + "\n	SUM(lich_su_su_dung_dich_vu_tien_ich.so_luong) * dich_vu_tien_ich.don_gia AS tong_tien"
                + "\nFROM"
                + "\n	dich_vu_tien_ich"
                + "\nJOIN lich_su_su_dung_dich_vu_tien_ich "
                + "\n    ON"
                + "\n	dich_vu_tien_ich.ma_dich_vu = lich_su_su_dung_dich_vu_tien_ich.dich_vu_tien_ich_ma_dich_vu"
                + "\nJOIN sinh_vien ON"
                + "\n	lich_su_su_dung_dich_vu_tien_ich.sinh_vien_ma_sinh_vien = sinh_vien.ma_sinh_vien"
                + "\nWHERE STR_TO_DATE(lich_su_su_dung_dich_vu_tien_ich.ngay_su_dung, '%d/%m/%Y') BETWEEN STR_TO_DATE('01/09/2024', '%d/%m/%Y') AND STR_TO_DATE('25/09/2024', '%d/%m/%Y')"
                + "\nGROUP BY"
                + "\n	sinh_vien.ma_sinh_vien,"
                + "\n	dich_vu_tien_ich.ten_dich_vu,"
                + "\n	dich_vu_tien_ich.don_gia";
        try {
            JSONArray jsonArray = new JSONArray();
            Connection connection = DriverManager.getConnection(url, user, password);
            Statement sta = connection.createStatement();
            ResultSet re = sta.executeQuery(sqlCmd);
            while (re.next()) {
                String ma_sinh_vien = re.getString("ma_sinh_vien");
                String ho_ten = re.getString("ho_ten");
                String ten_dich_vu = re.getString("ten_dich_vu");
                Double don_gia_goc = re.getDouble("don_gia_goc");
                int tong_so_luong = re.getInt("tong_so_luong");
                Double tong_tien = re.getDouble("tong_tien");
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("ma_sinh_vien", ma_sinh_vien);
                jsonObject.put("ho_ten", ho_ten);
                jsonObject.put("ten_dich_vu", ten_dich_vu);
                jsonObject.put("don_gia_goc", don_gia_goc);
                jsonObject.put("tong_so_luong", tong_so_luong);
                jsonObject.put("tong_tien", tong_tien);
                jsonArray.put(jsonObject);
            }
            return jsonArray.toList();
        } catch (SQLException e) {
            System.out.println(e);
            return new ArrayList<>();
        }
    }

    @GetMapping("sql/3")
    public List<Object> ex3() {
        String sqlCmd = "SELECT"
                + "\n    sv.ma_sinh_vien,"
                + "\n    sv.ho_ten AS ho_ten_sv,"
                + "\n    k.cccd AS cccd_khach,"
                + "\n    k.ho_ten AS ho_ten_khach,"
                + "\n    COUNT(k.ma_khach) AS so_lan_den_tham"
                + "\nFROM"
                + "\n    sinh_vien sv"
                + "\nLEFT JOIN"
                + "\n    khach k ON sv.ma_sinh_vien = k.sinh_vien_ma_sinh_vien"
                + "\nGROUP BY"
                + "\n    sv.ma_sinh_vien,"
                + "\n    sv.ho_ten,"
                + "\n    k.cccd,"
                + "\n    k.ho_ten"
                + "\nORDER BY"
                + "\n    sv.ma_sinh_vien";
        try {
            JSONArray jsonArray = new JSONArray();
            Connection connection = DriverManager.getConnection(url, user, password);
            Statement sta = connection.createStatement();
            ResultSet re = sta.executeQuery(sqlCmd);
            while (re.next()) {
                String ma_sinh_vien = re.getString("ma_sinh_vien");
                String ho_ten_sv = re.getString("ho_ten_sv");
                String cccd_khach = re.getString("cccd_khach");
                String ho_ten_khach = re.getString("ho_ten_khach");
                int so_lan_den_tham = re.getInt("so_lan_den_tham");
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("ma_sinh_vien", ma_sinh_vien);
                jsonObject.put("ho_ten_sv", ho_ten_sv);
                jsonObject.put("cccd_khach", cccd_khach);
                jsonObject.put("ho_ten_khach", ho_ten_khach);
                jsonObject.put("so_lan_den_tham", so_lan_den_tham);
                jsonArray.put(jsonObject);
            }
            return jsonArray.toList();
        } catch (SQLException e) {
            System.out.println(e);
            return new ArrayList<>();
        }
    }

    @GetMapping("sql/4")
    public List<Object> ex4() {
        String sqlCmd = "SELECT"
                + "\n    dich_vu_tien_ich.ma_dich_vu,"
                + "\n    dich_vu_tien_ich.ten_dich_vu,"
                + "\n    dich_vu_tien_ich.don_gia AS don_gia_goc,"
                + "\n    SUM(lich_su_su_dung_dich_vu_tien_ich.so_luong) AS tong_so_luong,"
                + "\n    SUM(lich_su_su_dung_dich_vu_tien_ich.so_luong) * dich_vu_tien_ich.don_gia AS doanh_thu,"
                + "\n    CONCAT(MONTH(STR_TO_DATE(lich_su_su_dung_dich_vu_tien_ich.ngay_su_dung, '%d/%m/%Y')), '-', YEAR(STR_TO_DATE(lich_su_su_dung_dich_vu_tien_ich.ngay_su_dung, '%d/%m/%Y'))) AS thang"
                + "\nFROM"
                + "\n    dich_vu_tien_ich"
                + "\nJOIN lich_su_su_dung_dich_vu_tien_ich "
                + "\n    ON"
                + "\n    dich_vu_tien_ich.ma_dich_vu = lich_su_su_dung_dich_vu_tien_ich.dich_vu_tien_ich_ma_dich_vu"
                + "\nGROUP BY"
                + "\n    dich_vu_tien_ich.ma_dich_vu,"
                + "\n    dich_vu_tien_ich.ten_dich_vu,"
                + "\n    dich_vu_tien_ich.don_gia,"
                + "\n    CONCAT(MONTH(STR_TO_DATE(lich_su_su_dung_dich_vu_tien_ich.ngay_su_dung, '%d/%m/%Y')), '-', YEAR(STR_TO_DATE(lich_su_su_dung_dich_vu_tien_ich.ngay_su_dung, '%d/%m/%Y')))";
        try {
            JSONArray jsonArray = new JSONArray();
            Connection connection = DriverManager.getConnection(url, user, password);
            Statement sta = connection.createStatement();
            ResultSet re = sta.executeQuery(sqlCmd);
            while (re.next()) {
                int ma_dich_vu = re.getInt("ma_dich_vu");
                String ten_dich_vu = re.getString("ten_dich_vu");
                Double don_gia_goc = re.getDouble("don_gia_goc");
                int tong_so_luong = re.getInt("tong_so_luong");
                Double doanh_thu = re.getDouble("doanh_thu");
                String thang = re.getString("thang");
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("ma_dich_vu", ma_dich_vu);
                jsonObject.put("ten_dich_vu", ten_dich_vu);
                jsonObject.put("don_gia_goc", don_gia_goc);
                jsonObject.put("tong_so_luong", tong_so_luong);
                jsonObject.put("doanh_thu", doanh_thu);
                jsonObject.put("thang", thang);
                jsonArray.put(jsonObject);
            }
            return jsonArray.toList();
        } catch (SQLException e) {
            System.out.println(e);
            return new ArrayList<>();
        }
    }

}
