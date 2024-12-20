-- CREATE DATABASE IF NOT EXISTS `mosque` CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mosque`;

-- إنشاء جدول الأجزاء (sections) مع اسم الجزء فقط

-- حذف البيانات الحالية من الجدول إذا وجدت
DELETE FROM sections;

-- إدراج البيانات في جدول الأجزاء (sections)
INSERT INTO sections (name)
VALUES
    ('الم'),
    ('سيقول'),
    ('تلك الرسل'),
    ('لن تنالوا'),
    ('والمحصنات'),
    ('لا يحب الله'),
    ('وإذا سمعوا'),
    ('ولو أننا'),
    ('قد أفلح'),
    ('واعلموا'),
    ('يا أيها الذين آمنوا'),
    ('وما من دابة'),
    ('وما أبريء'),
    ('ربما'),
    ('سبحان الذي أسرى'),
    ('قال ألم'),
    ('اقترب للناس'),
    ('قد أفلح'),
    ('وقال الذين لا يرجون'),
    ('أفمن يخلق'),
    ('اتل ما أوحي'),
    ('ومن يقنت'),
    ('ومالي لا أعبد'),
    ('فمن أظلم'),
    ('إليه يرد'),
    ('حم'),
    ('قال فما خطبكم'),
    ('قد أفلح'),
    ('تبارك'),
    ('عمَّ');
