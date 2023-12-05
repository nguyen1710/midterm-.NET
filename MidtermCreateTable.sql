-- Tạo bảng User
CREATE TABLE Users (
    UserID varchar(10) primary KEY,
    Username NVARCHAR(50) UNIQUE,
    Password NVARCHAR(255), -- Lưu ý: Nên sử dụng độ dài đủ lớn cho mật khẩu đã được mã hóa
    Name NVARCHAR(100),
    Age INT,
    PhoneNumber NVARCHAR(15),
    Status NVARCHAR(20),
    ProfilePicture NVARCHAR(255)
);

-- Tạo bảng LoginHistory
CREATE TABLE LoginHistory (
    LogID varchar(10) PRIMARY KEY,
    UserID varchar(10) FOREIGN KEY REFERENCES Users(UserID),
    LoginTime DATETIME
);

-- Tạo bảng Student
CREATE TABLE Students (
    StudentID varchar(10) PRIMARY KEY,
    Name NVARCHAR(100),
    Age INT,
    PhoneNumber NVARCHAR(15)
);

-- Tạo bảng Certificate
CREATE TABLE Certificates (
    CertificateID varchar(10) PRIMARY KEY,
    StudentID varchar(10) FOREIGN KEY REFERENCES Students(StudentID),
    CertificateName NVARCHAR(100),
    CertificateDetails NVARCHAR(MAX)
);

-- Tạo bảng AcademicQualification
CREATE TABLE AcademicQualifications (
    QualificationID varchar(10) PRIMARY KEY,
    StudentID varchar(10) FOREIGN KEY REFERENCES Students(StudentID),
    QualificationName NVARCHAR(100),
    QualificationDetails NVARCHAR(MAX)
);
