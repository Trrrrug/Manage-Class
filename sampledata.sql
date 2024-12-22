-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.39 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table manage_student_calendar.answers: ~9 rows (approximately)
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` (`id`, `optionA`, `optionB`, `optionC`, `optionD`, `correct_option`, `answer_text`, `quizz_id`, `created_at`, `updated_at`) VALUES
	(30, 'CRUD', 'RCUD', 'URCD', 'Cả 3 đáp án trên', 'CRUD', NULL, 33, '2023-05-20 13:56:51', '2023-05-20 15:04:55'),
	(31, 'Tạo một bảng mới.', 'Chèn dữ liệu mới vào bảng.', 'Truy vấn dữ liệu từ một hoặc nhiều bảng.', 'Cập nhật dữ liệu trong bảng.', 'Tạo một bảng mới.', NULL, 34, '2023-05-20 14:04:46', '2023-05-20 15:05:05'),
	(32, 'HyperText Markup Language', 'Hyperlink and Text Markup Language', 'Home Tool Markup Language', 'High-level Text Markup Language', 'HyperText Markup Language', NULL, 35, '2023-05-20 14:54:01', '2023-05-20 15:06:37'),
	(33, 'Creative Style Sheets', 'Cascading Style Sheets', 'Computer Style Sheets', 'Colorful Style Sheets', 'Creative Style Sheets', NULL, 36, '2023-05-20 14:54:35', '2023-05-20 15:04:55'),
	(34, 'let', 'var', 'const', 'set', 'set', NULL, 37, '2023-05-20 15:08:56', '2023-05-20 15:08:56'),
	(35, 'addEventListener', 'attachEvent', 'onClick', 'click', 'click', NULL, 38, '2023-05-20 15:08:56', '2023-05-20 15:08:56'),
	(36, 'Tạo một bảng mới.', 'Chèn dữ liệu mới vào bảng.', 'Truy vấn dữ liệu từ một hoặc nhiều bảng.', 'Cập nhật dữ liệu trong bảng.', 'Cập nhật dữ liệu trong bảng.', NULL, 39, '2023-05-20 15:08:56', '2023-05-20 15:08:56'),
	(37, 'GET', 'POST', 'PUT', 'DELETE', 'PUT', NULL, 40, '2023-05-20 15:08:56', '2023-05-20 15:08:56'),
	(38, 'strlen()', 'count()', 'sizeof()', 'length()', 'count()', NULL, 41, '2023-05-20 15:08:56', '2023-05-20 15:08:56');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.attempts: ~0 rows (approximately)
/*!40000 ALTER TABLE `attempts` DISABLE KEYS */;
INSERT INTO `attempts` (`id`, `student_id`, `lessture_id`, `total_score`, `created_at`, `updated_at`) VALUES
	(3, 32, 34, 25, '2023-05-20 15:14:40', '2023-06-22 11:58:41');
/*!40000 ALTER TABLE `attempts` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.attendances: ~7 rows (approximately)
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` (`id`, `classSchedule_id`, `teacher_id`, `date`, `created_at`, `updated_at`) VALUES
	(32, 6, 2, '2023-01-13 00:00:00', '2023-06-07 21:19:52', '2023-06-07 21:19:52'),
	(33, 6, 2, '2023-01-10 00:00:00', '2023-06-16 11:41:15', '2023-06-16 11:41:15'),
	(34, 6, 2, '2023-01-06 00:00:00', '2023-06-16 11:43:00', '2023-06-16 11:43:00'),
	(35, 6, 2, '2023-01-03 00:00:00', '2023-06-16 11:46:51', '2023-06-16 11:46:51'),
	(36, 8, 2, '2022-12-21 00:00:00', '2023-06-16 13:01:52', '2023-06-16 13:01:52'),
	(42, 6, 2, '2022-12-13 00:00:00', '2023-06-22 13:52:41', '2023-06-22 13:52:41'),
	(43, 8, 2, '2022-11-16 00:00:00', '2023-06-22 13:53:49', '2023-06-22 13:53:49');
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.attendance_students: ~29 rows (approximately)
/*!40000 ALTER TABLE `attendance_students` DISABLE KEYS */;
INSERT INTO `attendance_students` (`attendance_id`, `student_id`, `status`) VALUES
	(32, 1, 2),
	(32, 7, 3),
	(32, 18, 3),
	(32, 31, 3),
	(32, 32, 2),
	(33, 1, 1),
	(33, 7, 1),
	(33, 18, 1),
	(33, 31, 3),
	(34, 1, 1),
	(34, 7, 1),
	(34, 18, 1),
	(34, 31, 1),
	(35, 1, 2),
	(35, 7, 2),
	(35, 18, 2),
	(35, 31, 2),
	(36, 1, 2),
	(36, 7, 2),
	(36, 9, 2),
	(36, 10, 2),
	(36, 13, 2),
	(36, 14, 2),
	(36, 15, 2),
	(36, 19, 2),
	(36, 20, 2),
	(36, 22, 2),
	(36, 24, 2),
	(42, 7, 3),
	(42, 18, 3),
	(42, 31, 3),
	(42, 32, 1);
/*!40000 ALTER TABLE `attendance_students` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.class_lesstures: ~2 rows (approximately)
/*!40000 ALTER TABLE `class_lesstures` DISABLE KEYS */;
INSERT INTO `class_lesstures` (`lessture_id`, `classSchedule_id`) VALUES
	(34, 20),
	(35, 20);
/*!40000 ALTER TABLE `class_lesstures` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.class_schedules: ~11 rows (approximately)
/*!40000 ALTER TABLE `class_schedules` DISABLE KEYS */;
INSERT INTO `class_schedules` (`id`, `time_start`, `time_end`, `status`, `time_line`, `weekdays`, `shift`, `target`, `teacher_id`, `subject_id`, `created_at`, `updated_at`, `room_id`, `deleted_at`) VALUES
	(6, '2022-12-12 11:30:00', '2023-01-16 11:30:00', 1, 2, 1, 1, NULL, 2, 1, '2022-11-14 22:18:27', '2022-11-14 22:18:27', 1, NULL),
	(8, '2022-11-16 07:30:00', '2022-12-21 11:30:00', 1, 2, 5, 1, NULL, 2, 1, '2022-11-30 20:49:08', '2022-11-30 20:49:08', 1, NULL),
	(13, '2022-12-21 12:30:00', '2023-01-25 14:30:00', 1, 2, 5, 2, NULL, 5, 4, '2022-11-30 21:07:33', '2022-11-30 21:08:35', 1, NULL),
	(19, '2023-01-08 18:00:00', '2023-02-12 20:30:00', 1, 2, 8, 3, NULL, 6, 3, '2022-12-18 08:17:09', '2022-12-18 08:17:09', 1, NULL),
	(20, '2023-06-10 07:30:00', '2023-06-24 11:30:00', 1, 1, 1, 1, NULL, 2, 1, '2023-05-20 13:26:33', '2023-05-20 13:26:33', 1, NULL),
	(26, '2023-07-07 07:30:00', '2023-08-11 11:30:00', 0, 2, 1, 1, NULL, 8, 3, '2023-06-16 12:56:53', '2023-06-16 12:56:53', 4, NULL),
	(27, '2023-07-12 12:30:00', '2023-08-16 14:30:00', 0, 2, 1, 2, NULL, 7, 5, '2023-06-21 19:30:56', '2023-06-21 19:30:56', 1, NULL),
	(28, '2023-07-12 07:30:00', '2023-08-16 11:30:00', 0, 2, 1, 1, NULL, 9, 1, '2023-06-21 19:31:20', '2023-06-21 19:31:20', 1, NULL),
	(37, '2023-07-13 12:30:00', '2023-08-17 14:30:00', 0, 2, 1, 2, NULL, 2, 1, '2023-06-22 13:55:44', '2023-06-22 13:55:44', 2, NULL),
	(38, '2023-07-13 00:00:00', '2023-08-17 00:00:00', 0, 2, 1, 1, NULL, NULL, 4, '2023-06-22 13:56:20', '2023-06-22 13:56:20', NULL, NULL),
	(39, '2023-07-13 00:00:00', '2023-07-27 00:00:00', 0, 1, 1, 1, NULL, NULL, 1, '2023-06-22 13:56:20', '2023-06-22 13:56:20', NULL, NULL);
/*!40000 ALTER TABLE `class_schedules` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.class_students: ~21 rows (approximately)
/*!40000 ALTER TABLE `class_students` DISABLE KEYS */;
INSERT INTO `class_students` (`classSchedule_id`, `student_id`, `status`, `payment`, `date`, `money`) VALUES
	(6, 7, 0, 'momo_wallet', '2023-04-17', 300000),
	(6, 18, 0, 'momo_wallet', '2023-04-13', 300000),
	(6, 31, 0, 'momo_wallet', '2023-04-15', 300000),
	(6, 32, 0, 'momo_wallet', '2023-04-17', 300000),
	(8, 1, 0, NULL, '2023-04-20', 300000),
	(8, 7, 0, NULL, '2023-04-20', 300000),
	(8, 9, 0, NULL, '2023-04-20', 300000),
	(8, 10, 0, NULL, '2023-04-20', 300000),
	(8, 13, 0, NULL, '2023-04-10', 300000),
	(8, 14, 0, NULL, '2023-05-25', 300000),
	(8, 15, 0, NULL, '2023-06-14', 300000),
	(8, 19, 0, NULL, '2023-06-14', 300000),
	(8, 20, 0, NULL, '2023-06-15', 300000),
	(8, 22, 0, NULL, '2023-06-14', 300000),
	(8, 24, 0, NULL, '2023-06-14', 300000),
	(13, 1, 0, 'momo_wallet', '2023-06-20', 300000),
	(13, 34, 0, NULL, '2023-06-20', 300000),
	(19, 33, 0, 'momo_wallet', '2023-06-20', 300000),
	(20, 32, 0, 'momo_wallet', '2023-06-20', 300000),
	(26, 32, 0, 'momo_wallet', '2023-06-22', 300000),
	(38, 35, 0, NULL, NULL, NULL),
	(39, 36, 0, NULL, NULL, NULL);
/*!40000 ALTER TABLE `class_students` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.lesstures: ~1 rows (approximately)
/*!40000 ALTER TABLE `lesstures` DISABLE KEYS */;
INSERT INTO `lesstures` (`id`, `name`, `total_quizzes`, `created_at`, `updated_at`) VALUES
	(34, 'Buổi 1 Những khái niệm cơ bản', 4, '2023-05-20 13:56:51', '2023-05-20 15:06:37'),
	(35, 'Buổi 2 Làm quen với ngôn ngữ lập trình', 0, '2023-05-20 15:08:56', '2023-05-20 15:08:56');
/*!40000 ALTER TABLE `lesstures` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.migrations: ~27 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(2, '2022_08_09_181620_create_rooms_table', 1),
	(3, '2022_09_17_111550_create_students_table', 1),
	(4, '2022_09_17_111604_create_teachers_table', 1),
	(5, '2022_09_17_112023_create_subjects_table', 1),
	(6, '2022_09_17_114709_create_class_schedules_table', 1),
	(7, '2022_09_17_114727_create_class_students_table', 1),
	(8, '2022_09_17_114817_create_attendances_table', 1),
	(9, '2022_09_17_114826_create_attendance_students_table', 1),
	(10, '2022_10_07_202722_create_register_teaches_table', 1),
	(11, '2022_10_09_181908_alter_table_class_schedule_add_foregion_room_id', 1),
	(12, '2022_11_04_111536_add_soft_delete_to_class_table', 1),
	(13, '2022_11_13_214338_alter_table_class_schedule_change_on_delete_set_null', 1),
	(14, '2022_11_16_145909_create_posts_table', 2),
	(16, '2022_11_16_165404_alter_table_post_change_column_content', 3),
	(17, '2016_06_01_000001_create_oauth_auth_codes_table', 4),
	(18, '2016_06_01_000002_create_oauth_access_tokens_table', 4),
	(19, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4),
	(20, '2016_06_01_000004_create_oauth_clients_table', 4),
	(21, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4),
	(22, '2023_04_13_163323_alter_table_user_add_column_img', 4),
	(23, '2023_04_22_211404_create_lesstures_table', 5),
	(24, '2023_04_22_211428_create_class_lesstures_table', 5),
	(25, '2023_04_22_211443_create_quizzs_table', 5),
	(26, '2023_04_22_211509_create_answers_table', 6),
	(27, '2023_04_22_211521_create_attempts_table', 6),
	(29, '2023_04_24_205220_create_class_lesstures_table', 7),
	(30, '2023_04_24_214417_alter_table_class_lessture', 8),
	(32, '2023_06_20_144238_alter_table_add_two_column_for_statistic', 9),
	(33, '2023_06_21_170505_add_social_id_and_social_type_field_to_users_table', 10);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.oauth_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.oauth_auth_codes: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.oauth_clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.oauth_personal_access_clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.oauth_refresh_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.posts: ~1 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `content`, `level`, `created_at`, `updated_at`) VALUES
	(1, '📣📣📣 THÔNG BÁO ĐÃ CÓ CHỨNG NHẬN / CHỨNG CHỈ CỦA CÁC KỲ THI SAU', '📌Khi đến nhận Chứng nhận/ Chứng chỉ sinh viên mang theo một trong các giấy tờ sau: Thẻ CMND, Thẻ CCCD, Bằng lái xe, Passport (tất cả là bản gốc).\r\n📌 Sinh viên truy cập vào link này để tra cứu thông tin chứng chỉ/ chứng nhận: https://tracuu.hutech.edu.vn/tra-cuu-thong-tin-chung-chi\r\n⏰Thời gian nhận:\r\n+ Buổi sáng: 07h30 đến 11h30 (thứ 2 đến thứ 7)\r\n+ Buổi chiều: 13h30 đến 16h30 (thứ 2 đến thứ 7)\r\n+ Buổi tối ngoài giờ: 17h00 đến 19h30 (thứ 2 đến thứ 7)', 1, '2022-11-16 16:55:39', '2022-11-16 16:55:39');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.quizzs: ~9 rows (approximately)
/*!40000 ALTER TABLE `quizzs` DISABLE KEYS */;
INSERT INTO `quizzs` (`id`, `question`, `lessture_id`, `created_at`, `updated_at`) VALUES
	(33, 'Xem thêm sửa xoá viết tắt và thứ tự đúng là gì?', 34, '2023-05-20 13:56:51', '2023-05-20 13:56:51'),
	(34, 'Câu hỏi: Trong SQL, SELECT dùng để làm gì?', 34, '2023-05-20 14:04:35', '2023-05-20 14:04:35'),
	(35, 'Câu hỏi: HTML là viết tắt của gì?', 34, '2023-05-20 14:54:01', '2023-05-20 14:54:01'),
	(36, 'Câu hỏi: CSS là viết tắt của gì?', 34, '2023-05-20 14:54:35', '2023-05-20 14:54:35'),
	(37, 'Câu hỏi: Để tạo một biến trong JavaScript, ta sử dụng từ khóa nào?', 35, '2023-05-20 15:08:56', '2023-05-20 15:08:56'),
	(38, 'Câu hỏi: Để xử lý một sự kiện click trong JavaScript, ta sử dụng phương thức nào?', 35, '2023-05-20 15:08:56', '2023-05-20 15:08:56'),
	(39, 'Câu hỏi: Trong SQL, câu lệnh SELECT được sử dụng để làm gì?', 35, '2023-05-20 15:08:56', '2023-05-20 15:08:56'),
	(40, 'Câu hỏi: Để gửi dữ liệu từ một trang web lên máy chủ, phương thức HTTP nào được sử dụng?', 35, '2023-05-20 15:08:56', '2023-05-20 15:08:56'),
	(41, 'Câu hỏi: Trong PHP, hàm để lấy độ dài của một chuỗi là gì?', 35, '2023-05-20 15:08:56', '2023-05-20 15:08:56');
/*!40000 ALTER TABLE `quizzs` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.register_teaches: ~1 rows (approximately)
/*!40000 ALTER TABLE `register_teaches` DISABLE KEYS */;
INSERT INTO `register_teaches` (`id`, `weekdays`, `shift`, `status`, `teacher_id`, `subject_id`, `classSchedule_id`, `created_at`, `updated_at`) VALUES
	(3, 1, 2, 1, 2, 1, 37, '2023-06-22 13:54:49', '2023-06-22 13:55:44');
/*!40000 ALTER TABLE `register_teaches` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.rooms: ~10 rows (approximately)
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, '10/24', '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(2, '03/25', '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(4, '07/25', '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(5, '01/24', '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(6, '10/23', '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(7, '02/24', '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(8, '06/24', '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(9, '11/23', '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(10, '01/23', '2022-11-14 22:11:53', '2022-11-14 22:11:53');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.students: ~36 rows (approximately)
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`id`, `name`, `password`, `phone`, `email`, `created_at`, `updated_at`, `img`, `social_id`, `social_type`) VALUES
	(1, 'Nghĩa Nguyễn', '456', '+84-4-1077-722', '269.tdsadasdasdasdd@gmail.com', '2022-11-14 22:11:53', '2023-04-15 12:42:02', '1.jpg', NULL, NULL),
	(2, 'Chú. Thôi Điền', '456', '+84-4-1077-7303', 'tuyen71@example.net', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(3, 'Cô. Châu Thục', '456', '(025) 929 5056', 'xa.nghi@example.org', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(4, 'La Quyên', '456', '0186-574-3958', 'nam34@example.com', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(5, 'Em. Phạm Giác', '456', '(0128)800-8735', 'hiep.an@example.com', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(6, 'Chú. Cự Kiên Bào', '456', '(84)(126)989-5082', 'duyen.khuat@example.com', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(7, 'Trình Oanh Thủy', '456', '84-781-437-3830', 'ngan.phi@example.com', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(8, 'Liễu Phụng Lân', '456', '84-231-178-9474', 'phuoc51@example.org', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(9, 'Hồ Thùy Tuệ', '456', '(0199)616-7698', 'dao.mach@example.com', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(10, 'Bà. Giả Vàng Khôi', '456', '(092) 796 3627', 'trang.loi@example.net', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(11, 'Cụ. Ngô Hành', '456', '(0350)762-9492', 'wcao@example.org', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(12, 'Cô. Sơn Nguyệt', '456', '091-881-2412', 'da.nhan@example.org', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(13, 'Chị. Ngô Phương', '456', '0169 289 5411', 'athinh@example.org', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(14, 'Bác. Trương Kiều', '456', '(0321)401-1735', 'lkhau@example.org', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(15, 'Bác. Lưu Đình Lễ', '456', '84-79-743-4573', 'ong.thanh@example.net', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(16, 'Cụ. Nhữ Oanh Uyên', '456', '026 473 2037', 'ma.liem@example.org', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(17, 'Chị. Trưng Cát Bảo', '456', '(84)(92)008-1224', 'vy.doan@example.com', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(18, 'Em. Chế Kỳ Quân', '456', '(0219)276-6506', 'sinh.thap@example.org', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(19, 'Cầm Đình Tài', '456', '(84)(72)659-1119', 'hop41@example.com', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(20, 'Cụ. Bùi Tuyến', '456', '0241 681 8877', 'nuong25@example.com', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(21, 'Giáp Chiến Văn', '456', '(84)(55)196-0913', 'vinh.pho@example.com', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(22, 'Bế Uyên', '456', '+84-218-670-7790', 'qmai@example.net', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(23, 'Lê Công Quyền', '456', '84-30-792-1554', 'nhien05@example.net', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(24, 'Cụ. Hàn Lam Phương', '456', '+84-320-832-8252', 'thy.nham@example.net', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(25, 'Phạm Hán Tiển', '456', '0127-708-2214', 'han.thuan@example.net', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(26, 'Anh. Lỳ Điền', '456', '84-710-246-4313', 'rkhoa@example.net', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(27, 'Bà. Ông Phước Sinh', '456', '(0162) 129 3604', 'lan59@example.com', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(28, 'Bác. Nghiêm Hữu Pháp', '456', '(027) 737 4686', 'thuan69@example.com', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(29, 'Ông. Phí Phú Minh', '456', '031 711 4963', 'dai.quoc@example.com', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(30, 'Chú. Nguyễn Lương', '456', '037 426 5571', 'tdai@example.net', '2022-11-14 22:11:53', '2022-11-14 22:11:53', NULL, NULL, NULL),
	(31, 'Hữu Tráng', '123123123', NULL, '1231231212aaa@gmail.com', '2022-11-15 18:14:07', '2022-11-15 18:14:07', NULL, NULL, NULL),
	(32, 'Trung Thiện', '7P6zBAPHQL7B.u', NULL, '269.tdd@gmail.com', '2022-11-15 18:15:15', '2023-04-13 18:47:27', '32.jpg', '113888558623459666038', NULL),
	(33, 'Nguyễn Văn Toàn', '456', '917512621', '121aza3@gmail.com', '2022-11-30 20:58:08', '2022-11-30 20:58:08', NULL, NULL, NULL),
	(34, 'Trần Xuân Khang', '456', '91273621', '21312aa@gmail.com', '2022-11-30 21:05:04', '2022-11-30 21:05:04', NULL, NULL, NULL),
	(35, 'Trung Nha', 'Aa123123', '9283123', 'trungkun@gmail.com', '2023-06-19 20:16:06', '2023-06-19 20:16:06', NULL, NULL, NULL),
	(36, 'Sy Thien', 'Aa123123', '1231233', 'thienk@gmail.com', '2023-06-19 20:18:34', '2023-06-19 20:18:34', NULL, NULL, NULL),
	(37, 'Thien Nguyen', '$2y$10$EUKZixKpbRfy8nEN9FHuFe1EmVjSLBEmz8uC7mHd5bxms1RM2Ph1m', NULL, '269sdsadasdasdas.tdd@gmail.com', '2023-06-21 19:14:44', '2023-06-21 19:14:44', NULL, '113888558623459666038', 'google');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.subjects: ~9 rows (approximately)
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
	(1, 'Lập trình website', 300000, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(2, 'Tin học văn phòng', 300000, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(3, 'Tiếng Trung', 300000, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(4, 'Tiếng Anh B1', 300000, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(5, 'Tiếng Anh giao tiếp', 300000, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(6, 'Tin học M1', 300000, NULL, NULL),
	(7, 'Bằng lái xe hạng B', 300000, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(8, 'Kiểm thử phần mềm', 300000, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(9, 'Kỹ năng giao tiếp và làm việc nhóm', 300000, '2022-11-14 22:11:53', '2022-11-14 22:11:53');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;

-- Dumping data for table manage_student_calendar.teachers: ~10 rows (approximately)
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` (`id`, `name`, `phone`, `password`, `level`, `created_at`, `updated_at`) VALUES
	(1, 'Nguyễn Thiện Thiện', '(0351) 038 6348', '123', 2, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(2, 'Phan Trung', '+84-4-2829-2338', '123', 1, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(3, 'Diệp Lâm Mâu', '0164-659-2568', '123', 1, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(4, 'Liễu Khôi Khu', '(0510) 095 4018', '123', 1, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(5, 'Tuyền Trưởng Hàng', '84-4-0715-7170', '123', 1, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(6, 'Nương Phương Hình', '(026)009-1628', '123', 1, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(7, 'Hân Hợp Thập', '(052) 096 1645', '123', 1, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(8, 'Khôi Viên Nghiêm', '093-858-4695', '123', 1, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(9, 'Phong Việt Mang', '0120 542 5936', '123', 1, '2022-11-14 22:11:53', '2022-11-14 22:11:53'),
	(10, 'Ngôn Nhiên Triệu', '(0500)701-3606', '123', 1, '2022-11-14 22:11:53', '2022-11-14 22:11:53');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
