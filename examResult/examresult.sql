-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 12:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examresult`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `fullName`, `email`, `telephone`, `created_at`, `updated_at`) VALUES
(1, 'Ali Kamel', 'ali@gmail.com', '021518541848', '2024-02-04 18:17:47', '2024-02-19 21:55:38'),
(3, 'Rana Mostafa', 'rana@gmail.com', '01118887272', NULL, '2024-02-19 21:56:27'),
(4, 'Karim Mostafa', 'karim@gmail.com', '0114117112', NULL, NULL),
(12, 'Samy Adel', 'samyy@gmail.com', '658960709', NULL, '2024-02-19 21:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gradeName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `gradeName`, `created_at`, `updated_at`) VALUES
(1, 'Primary 6', '2024-02-06 14:55:33', '2024-02-17 10:44:48'),
(2, 'Prep 3', '2024-02-06 14:55:41', '2024-02-17 10:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `loginName` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `role` varchar(255) NOT NULL,
  `token` text NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `userId`, `loginName`, `password`, `role`, `token`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 1, 'mmm', '$2y$12$FD3.qnMpuV23bkMF7Ct0Fe9TKh7DWjQ.PSQaD82XW625dOpQ9niT.', 'managers', '0', 1, NULL, NULL),
(2, 2, 'ttt', '$2y$12$wXWKTCx5/ZOkFHsSXoi/JO/sWEM3.OSBctXaet92SsrNxoLxaX1Y.', 'managers', '0', 1, NULL, NULL),
(3, 2, 'hhh', '$2y$12$kC.XTRvirphW73f1/vPnxuLVNE8Ws8uVn9a9YZGyAEFKuNwwYURe6', 'teachers', '0', 1, NULL, NULL),
(4, 5, 'kkk', '$2y$12$GBrC9iHNHMlp2NuFfWfWmur5FDkQOE.3tyRQuOuFZHxuQySfZWaO6', 'students', '$2y$12$OWPkOF.enh8fyVKn//PoBeMiNerMxTwvdphlFOlUY3rT7i/.BzO06', 1, NULL, '2024-02-08 17:05:14'),
(6, 2, 'h3', '$2y$12$hYayaW3FBgRG71f4w61JLe.zQg3LJVqNpRn7JnMC4iNK7ZwqeOSBi', 'admins', '$2y$12$D9F/FCEQjq1yph4o.lHYaOsXengJ9bsM3Xu3adCsCYNE9e91Zydw.', 1, NULL, '2024-02-08 17:22:45'),
(7, 3, 'rana', '$2y$12$uL3//G7l0kuWIh18fTHkuunugYcLyjVnGmybXmm2kpYwm/izDOdOu', 'admins', '0', 1, NULL, '2024-02-20 12:08:32'),
(8, 4, 'karim', '$2y$12$J4HPDZim/UihCAtMoeCGvOdiRHLH7xETD9laontRYllwecrzyYqQi', 'admins', '$2y$12$Me8sI45WP/8hnTOrKGg8y.0BzdqyXp16HsbXmyq3P8.SsKE8rXn6a', 1, NULL, '2024-02-15 15:05:13'),
(12, 7, 'menna', '$2y$12$Iur5x8TWK58h0nB4LqbeIeYY1ZFvYgkREZGHJ7we/BevaFbpN5zSu', 'students', '$2y$12$nWaXLv/5h7UjYbj0Mu5SfOZYl9xIrLFkhnxxUwnRFn7tmanh/AMSG', 1, NULL, '2024-02-15 15:21:30'),
(13, 8, 'rahma', '$2y$12$QZhsAyq52AKkJUZNPL1oVe0V0yFev4U5fLF17X.jQOddD4nL6KiEG', 'students', '$2y$12$d3YiLKX53tMDLVj90G2ps.hRZ5GBvP5hLFFtWxNXAQ3efz8ho5Wuq', 1, NULL, '2024-02-20 00:32:56'),
(14, 3, 'Ahmed', '$2y$12$xpm4VT1ep7.VRxgfeURt8eFX6Jesk3462v3x5zcc.LvvHbdY/cG7u', 'teachers', '$2y$12$RodOB0ZMfB9bN3ZNjBZbjueCzkcrAek6vz4.OIY1CIFXNbO5o3CX6', 1, NULL, '2024-02-19 11:45:56'),
(15, 3, 'Malek', '$2y$12$yPDpkvZABv.gfBuFF1c7LO9txhe4P0RKl62F8A4RPu3e7Fjw5uBSm', 'managers', '0', 1, NULL, NULL),
(21, 12, 'samy', '$2y$12$Y2PfttbimIEAfxEZpD0CyOCVbQbSoFJZJabGDvAYlReBjgglAtN7m', 'admins', '0', 1, NULL, NULL),
(22, 13, 'sara', '$2y$12$UBn.xtd8D.Dm0GXvytcpA..Dvh/rPX/ihSfG0m3y1aRJT92JxmTbW', 'admins', '0', 1, NULL, NULL),
(23, 8, 'youmna', '$2y$12$XtEDA96.J6CYDsWlWGZCo.7mdNAOA6uDd4.ka0qeYEYTmd1c9K9Sq', 'managers', '0', 1, NULL, NULL),
(24, 9, 'tamer', '$2y$12$CqzcRYemta1BIB0ZY3jmtOhYihTZz0Hli/7E44V3WEhXeaZH3.N.K', 'managers', '0', 1, NULL, NULL),
(25, 4, 'lamis', '$2y$12$PubVJDVNJHfXH/i0afxpi.brgh8YbQpE0lg63IzeEIEuruD6fTEWm', 'teachers', '0', 1, NULL, NULL),
(26, 5, 'saeed', '$2y$12$RNTsNxNBjsrUXdDayff9peOnuCcxROmYPFBdg4QE0FXPFGddVsimC', 'teachers', '0', 1, NULL, NULL),
(27, 1, 'sama', '$2y$12$V2IZ0nyT8fawNw7duSrIzun4saGJi/1i97VVWM00T7lQE0p6l6Gx6', 'student_parents', '0', 1, NULL, '2024-02-20 13:41:35'),
(28, 2, 'mona', '$2y$12$X4yUu7fJstqLpunw8L67retOts3oYbqKAhGQA8xvxD8hwGNP7cOa2', 'student_parents', '0', 1, NULL, '2024-02-20 00:56:53'),
(30, 4, 'amr', '$2y$12$sbQ14ZRXbOgnJh8bRBzD1u.WQByAflOg59h.aMyysIi1b8kzt8VSm', 'student_parents', '0', 1, NULL, NULL),
(32, 9, 'tag', '$2y$12$SYxeosd6o0x31JVmiePz7.lR3TKc4oY5BdSLoZfZINtr53BPzh6ma', 'students', '0', 1, NULL, NULL),
(33, 6, 'azza', '$2y$12$E5luPweK.jB1BFNRfNsouubj.oW54K6OWY6LMNkEQbhmBT/JlQ4OO', 'student_parents', '0', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `fullName`, `email`, `telephone`, `created_at`, `updated_at`) VALUES
(3, 'Malek Mostafa', 'malek@gmail.com', '01117587557', NULL, NULL),
(8, 'Youmna Elmowaled', 'youmna@gmail.com', '9607047747', NULL, NULL),
(9, 'Tamer Ali', 'tamer@gmail.com', '464848597', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `materialName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `studyYearId` bigint(20) UNSIGNED DEFAULT NULL,
  `gradeId` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `materialName`, `created_at`, `updated_at`, `studyYearId`, `gradeId`, `status`) VALUES
(1, 'Primary 6-math', '2024-02-06 14:56:23', '2024-02-19 21:53:43', 1, 1, 0),
(2, 'Prep 3-math', '2024-02-06 14:56:23', '2024-02-17 10:48:55', 1, 2, 0),
(3, 'Primary 6-arabic', '2024-02-06 14:56:23', '2024-02-17 10:49:22', 1, 1, 0),
(4, 'Prep 3-arabic', '2024-02-06 14:56:23', '2024-02-17 10:49:42', 1, 2, 0),
(5, 'Primary 6-english', '2024-02-06 14:56:23', '2024-02-17 10:49:57', 1, 1, 0),
(6, 'Prep 3-english', '2024-02-06 14:56:23', '2024-02-17 10:50:10', 1, 2, 0),
(7, 'Primary 6-ICT', '2024-02-06 16:56:47', '2024-02-17 10:50:53', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `materialtoteachers`
--

CREATE TABLE `materialtoteachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacherId` bigint(20) UNSIGNED DEFAULT NULL,
  `materialId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materialtoteachers`
--

INSERT INTO `materialtoteachers` (`id`, `teacherId`, `materialId`, `created_at`, `updated_at`) VALUES
(1, 4, 7, NULL, NULL),
(2, 4, 1, NULL, NULL),
(3, 4, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_04_164047_create_admins_table', 1),
(6, '2024_02_04_164237_create_managers_table', 1),
(7, '2024_02_04_164247_create_teachers_table', 1),
(8, '2024_02_04_164319_create_student_parents_table', 1),
(9, '2024_02_04_164325_create_students_table', 1),
(10, '2024_02_04_165413_create_study_years_table', 1),
(11, '2024_02_04_165426_create_grades_table', 1),
(12, '2024_02_04_165437_create_materials_table', 1),
(13, '2024_02_06_175451_materialsrelations', 2),
(14, '2024_02_06_182023_materials_with_relation', 3),
(15, '2024_02_06_194727_create_results_table', 4),
(16, '2024_02_06_194830_create_materialtoteachers_table', 4),
(17, '2024_02_08_165023_create_logins_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacherId` bigint(20) UNSIGNED DEFAULT NULL,
  `studentId` bigint(20) UNSIGNED DEFAULT NULL,
  `materialId` bigint(20) UNSIGNED DEFAULT NULL,
  `degree` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `teacherId`, `studentId`, `materialId`, `degree`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 7, 95.00, NULL, NULL),
(2, 4, 2, 7, 95.00, NULL, NULL),
(3, 4, 3, 7, 85.00, NULL, NULL),
(4, 3, 4, 4, 59.00, NULL, NULL),
(5, 3, 4, 6, NULL, NULL, NULL),
(6, 5, 1, 1, 80.00, NULL, NULL),
(7, 5, 3, 1, 90.00, NULL, NULL),
(8, 5, 2, 1, 95.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gradeId` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fullName`, `email`, `telephone`, `created_at`, `updated_at`, `gradeId`) VALUES
(1, 'Ahmed reda', 'ahmed@gmail.com', '06758585', NULL, '2024-02-20 00:10:44', 1),
(2, 'Waled mohamed', 'waleed@gmail.com', '0122576969', NULL, '2024-02-20 00:11:09', 1),
(3, 'Fathy Farouk', 'fathy@gmail.com', '0115896896', NULL, '2024-02-20 00:12:18', 1),
(4, 'Wael Ismael', 'wael@gmail.com', '0112869696', NULL, '2024-02-20 00:12:44', 2),
(5, 'Karem Galal', 'sdd@sdsd.ddd', '2213123', NULL, NULL, NULL),
(8, 'Rahma Emira', 'rahma@gmail.com', '0111575899', NULL, '2024-02-20 00:13:04', NULL),
(9, 'Ahmed Tag', 'tag@gmail.com', '070699557', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_parents`
--

CREATE TABLE `student_parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_parents`
--

INSERT INTO `student_parents` (`id`, `fullName`, `email`, `telephone`, `created_at`, `updated_at`) VALUES
(1, 'Sama Haitham', 'sama@gmail.com', '01275789989', NULL, NULL),
(2, 'Mona Alaa', 'mona@gmail.com', '0111876679', NULL, NULL),
(4, 'Amr Selim', 'amr@gmail.com', '0111285859', NULL, '2024-02-19 23:51:38'),
(6, 'Azza Sadek', 'azza@gmail.com', '01114475474', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `studyyears`
--

CREATE TABLE `studyyears` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `yearName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studyyears`
--

INSERT INTO `studyyears` (`id`, `yearName`, `created_at`, `updated_at`) VALUES
(1, '2023-2024', '2024-02-06 14:17:12', '2024-02-06 14:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `fullName`, `email`, `telephone`, `created_at`, `updated_at`) VALUES
(3, 'Ahmed Mohammed', 'ahmedd@gmail.com', '01118866900', NULL, '2024-02-19 22:50:31'),
(4, 'Lamis Atef', 'lamis@gmail.com', '758595959', NULL, NULL),
(5, 'Saeed Wahba', 'wahba@gmail.com', '7676066008', NULL, '2024-02-19 22:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materials_studyyearid_foreign` (`studyYearId`),
  ADD KEY `materials_gradeid_foreign` (`gradeId`);

--
-- Indexes for table `materialtoteachers`
--
ALTER TABLE `materialtoteachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materialtoteachers_teacherid_foreign` (`teacherId`),
  ADD KEY `materialtoteachers_materialid_foreign` (`materialId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_teacherid_foreign` (`teacherId`),
  ADD KEY `results_studentid_foreign` (`studentId`),
  ADD KEY `results_materialid_foreign` (`materialId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_parents`
--
ALTER TABLE `student_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studyyears`
--
ALTER TABLE `studyyears`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `materialtoteachers`
--
ALTER TABLE `materialtoteachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student_parents`
--
ALTER TABLE `student_parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `studyyears`
--
ALTER TABLE `studyyears`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `materials_gradeid_foreign` FOREIGN KEY (`gradeId`) REFERENCES `grades` (`id`),
  ADD CONSTRAINT `materials_studyyearid_foreign` FOREIGN KEY (`studyYearId`) REFERENCES `studyyears` (`id`);

--
-- Constraints for table `materialtoteachers`
--
ALTER TABLE `materialtoteachers`
  ADD CONSTRAINT `materialtoteachers_materialid_foreign` FOREIGN KEY (`materialId`) REFERENCES `materials` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `materialtoteachers_teacherid_foreign` FOREIGN KEY (`teacherId`) REFERENCES `teachers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_materialid_foreign` FOREIGN KEY (`materialId`) REFERENCES `materials` (`id`),
  ADD CONSTRAINT `results_studentid_foreign` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `results_teacherid_foreign` FOREIGN KEY (`teacherId`) REFERENCES `teachers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
