# BÀI LÀM – HACKATHON 01

- **Mã đề:** 13
- **Họ tên:** Trần Mạnh Hoa
- **Lớp:** CNTT1
- **Link repository:** https://github.com/accountstool/HN-KS26-CNTT1_Nhap-mon-CNTT_Hackathon01
- **Hệ điều hành (Windows/macOS):** macOS

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
# Ghi lần lượt các lệnh đã chạy, mỗi lệnh một dòng
pwd
ls -a
mv thoi_khoa_bieu.txt docs/
mv logo_trung_tam_ngoai_ngu.png media/
cp media/logo_trung_tam_ngoai_ngu.png backup/
rm temp_213.tmp
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
.		.DS_Store	backup		data		logs
..		.env		bai_lam.md	docs		media

./backup:
.				logo_trung_tam_ngoai_ngu.png
..

./data:
.				dang_ky_hoc_thang_3.xlsx
..

./docs:
.			..			thoi_khoa_bieu.txt

./logs:
.		..		course.log

./media:
.				logo_trung_tam_ngoai_ngu.png
..

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
cat ./logs/course.log | grep -E "ERROR" > logs/daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2026-03-28 08:24:28 [ERROR] Het thoi gian cho (timeout)
2026-03-28 08:30:28 [ERROR] Het thoi gian cho (timeout)
```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [ ] Heading 1: tên dự án
- [ ] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [ ] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [ ] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [ ] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [ ] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
bash auto_report.sh
```

### Kết quả hiển thị

```text
Dang loc log...
Hoan thanh

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
cat ./logs/course.log | grep -E -c "ERROR"      
```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
6
```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
echo "===TONG HOP LOG===" > logs/tong_hop.txt
cat ./logs/course.log | grep -E "WARNING" >> logs/tong_hop.txt 
grep -E -c "ERROR" logs/course.log | >> logs/tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
===TONG HOP LOG===
2026-03-28 08:51:28 [WARNING] Thoi gian tai trang cham
2026-03-28 08:54:28 [WARNING] Video bai giang dung luong lon
2026-03-28 08:57:28 [WARNING] Thoi gian tai trang cham
Tong so dong ERROR: 6 

```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/dang_ky_hoc_thang_3.xlsx`, không cần ghi vào đây.
