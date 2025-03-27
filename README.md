
Yêu cầu:
1.	Hình thức:
	Sinh viên bốc thăm ngẫu nhiên 1 trong các đề tài trên
	Số lượng: 2 hoặc 3 sinh viên/1 đề tài
	Quyển báo cáo theo mẫu chung của Nhà trường, 20-30 trang
	Dựa vào tóm tắt và gợi ý thiết kế của đề tài
	Cấu trúc báo cáo gồm những nội dung sau:
Chương 1.	Mở đầu 
o	Giới thiệu tổng quan về đề tài
o	Mục đích và lý do lựa chọn đề tài
Chương 2.	Phân tích và thiết kế cơ sở dữ liệu 
o	Xác định các yêu cầu của hệ thống
o	Thiết kế mô hình dữ liệu (ERD)
o	Chuyển đổi mô hình dữ liệu sang mô hình vật lý (bảng, khóa, ràng buộc)
Chương 3.	Triển khai cơ sở dữ liệu 
o	Tạo cơ sở dữ liệu và các bảng với các định nghĩa khóa, ràng buộc và các mối quan hệ
o	Nhập dữ liệu mẫu cho các bảng trên
o	Truy vấn cơ bản (SELECT, INSERT, UPDATE, DELETE)
o	Truy vấn nâng cao (INNER JOIN, GROUP BY, HAVING, SUBQUERY)
Chương 4.	Lập trình T-SQL 
o	Tạo 7- 10 view từ cơ bản đến nâng cao
o	Tạo 7-10 index cần thiết cho các bảng
o	Xây dựng 10 Stored Procedure(không tham số, có tham số, có OUTPUT)
o	Tạo 10 function (trả về kiểu vô hướng, bảng, biến bảng)
o	Tạo 3- 5 trigger để kiểm soát dữ liệu
Chương 5.	Bảo mật và quản trị 
o	Tạo người dùng
o	Thiết lập các quyền truy cập và phân quyền người dùng
o	Quản lý sao lưu và phục hồi dữ liệu
Chương 6.	Kết luận
o	Nhận xét về quá trình thực hiện bài tập lớn
o	Đánh giá ưu và nhược điểm của hệ thống
o	Đề xuất các hướng phát triển tiếp theo

Đề tài gợi ý
Một bệnh viện cần xây dựng CSDL để quản lý y bác sỹ và bệnh nhân của bệnh viện, trong bệnh viện có một số lượng lớn các bác sĩ. 
Mỗi bác sĩ có một mã số duy nhất, họ tên, địa chỉ, số điện thoại. Mỗi bác sĩ thuộc ít nhất một chuyên khoa.
Thông tin chuyên khoa gồm mã chuyên khoa, tên chuyên khoa. Bênh viện lưu trữ tên bệnh nhân, địa chỉ, số chưng minh thư và gán cho mỗi bệnh nhân một mã số duy nhất.
Bất cứ bệnh nhân nào nhập viện phải được theo dõi bởi một bác sĩ. Một bác sĩ có thể điều trị nhiều bệnh nhân hoặc không điều trị bệnh nhân nào. 
Bất cứ khi nào bệnh nhân được điều trị bởi một bác sĩ, bệnh viện cần ghi lại ngày giờ và liệu pháp điều trị.
Mỗi bệnh nhân được nhiều y tá chăm sóc. Một y tá có thể chăm sóc cho nhiều bệnh nhân và mỗi bệnh nhân tùy vào từng ngày sẽ có y tá khác nhau.   
Bệnh viện cần lưu lại việc chăm sóc bệnh nhân của các y tá và nội dung chăm sóc (uống thuốc, tiêm, truyền,…)
