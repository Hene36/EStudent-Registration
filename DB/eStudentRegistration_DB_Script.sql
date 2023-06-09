
USE [eStudentRegistration]
GO
/****** Object:  Table [dbo].[country_master]    Script Date: 11-04-2019 22:43:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[country_master](
	[country_id] [varchar](3) NOT NULL,
	[country_name] [varchar](50) NULL,
 CONSTRAINT [PK_country_master] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[course_master]    Script Date: 11-04-2019 22:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[course_master](
	[course_id] [int] NOT NULL,
	[course_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cource_master] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[document_master]    Script Date: 11-04-2019 22:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[document_master](
	[doc_id] [int] IDENTITY(1,1) NOT NULL,
	[doc_student_id] [int] NOT NULL,
	[doc_type] [varchar](50) NOT NULL,
	[doc_title] [varchar](50) NOT NULL,
	[doc_file_name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_document_master] PRIMARY KEY CLUSTERED 
(
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee_master]    Script Date: 11-04-2019 22:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee_master](
	[emp_id] [varchar](50) NOT NULL,
	[emp_login_name] [varchar](50) NOT NULL,
	[emp_login_password] [varchar](50) NOT NULL,
	[emp_full_name] [varchar](50) NOT NULL,
	[emp_department] [varchar](50) NOT NULL,
	[emp_lastlogin] [datetime] NULL,
 CONSTRAINT [PK_employee_master] PRIMARY KEY CLUSTERED 
(
	[emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[student_master]    Script Date: 11-04-2019 22:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student_master](
	[student_id] [int] NOT NULL,
	[student_course_id] [int] NOT NULL,
	[student_full_name] [varchar](50) NOT NULL,
	[student_gender] [varchar](50) NULL,
	[student_dob] [datetime] NOT NULL,
	[student_address] [varchar](250) NULL,
	[student_city] [varchar](50) NULL,
	[student_country_id] [varchar](3) NOT NULL,
	[student_postal_code] [varchar](50) NOT NULL,
	[student_email_id] [varchar](50) NOT NULL,
	[student_contact_no] [varchar](50) NOT NULL,
	[student_reg_status] [varchar](50) NOT NULL,
	[student_reg_date] [datetime] NOT NULL,
	[student_approve_date] [datetime] NULL,
	[student_approve_by] [varchar](50) NULL,
	[student_password] [varchar](50) NULL,
	[student_lastlogin] [datetime] NULL,
 CONSTRAINT [PK_student_master] PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AD', N'Andorra')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AE', N'United Arab Emirates')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AF', N'Afghanistan')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AG', N'Antigua and Barbuda')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AI', N'Anguilla')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AL', N'Albania')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AM', N'Armenia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AN', N'Netherlands Antilles')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AO', N'Angola')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AQ', N'Antarctica')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AR', N'Argentina')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AS', N'American Samoa')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AT', N'Austria')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AU', N'Australia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AW', N'Aruba')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AX', N'Åland Islands')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'AZ', N'Azerbaijan')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BA', N'Bosnia and Herzegovina')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BB', N'Barbados')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BD', N'Bangladesh')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BE', N'Belgium')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BF', N'Burkina Faso')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BG', N'Bulgaria')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BH', N'Bahrain')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BI', N'Burundi')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BJ', N'Benin')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BL', N'Saint Barthélemy')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BM', N'Bermuda')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BN', N'Brunei Darussalam')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BO', N'Bolivia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BR', N'Brazil')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BS', N'Bahamas')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BT', N'Bhutan')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BV', N'Bouvet Island')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BW', N'Botswana')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BY', N'Belarus')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'BZ', N'Belize')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CA', N'Canada')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CC', N'Cocos (Keeling) Islands')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CD', N'Congo, the Democratic Republic of the')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CF', N'Central African Republic')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CG', N'Congo')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CH', N'Switzerland')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CI', N'Côte d''Ivoire')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CK', N'Cook Islands')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CL', N'Chile')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CM', N'Cameroon')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CN', N'China')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CO', N'Colombia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CR', N'Costa Rica')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CU', N'Cuba')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CV', N'Cape Verde')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CX', N'Christmas Island')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CY', N'Cyprus')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'CZ', N'Czech Republic')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'DE', N'Germany')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'DJ', N'Djibouti')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'DK', N'Denmark')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'DM', N'Dominica')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'DO', N'Dominican Republic')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'DZ', N'Algeria')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'EC', N'Ecuador')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'EE', N'Estonia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'EG', N'Egypt')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'EH', N'Western Sahara')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'ER', N'Eritrea')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'ES', N'Spain')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'ET', N'Ethiopia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'FI', N'Finland')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'FJ', N'Fiji')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'FK', N'Falkland Islands (Malvinas)')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'FM', N'Micronesia, Federated States of')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'FO', N'Faroe Islands')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'FR', N'France')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GA', N'Gabon')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GB', N'United Kingdom')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GD', N'Grenada')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GE', N'Georgia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GF', N'French Guiana')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GG', N'Guernsey')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GH', N'Ghana')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GI', N'Gibraltar')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GL', N'Greenland')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GM', N'Gambia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GN', N'Guinea')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GP', N'Guadeloupe')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GQ', N'Equatorial Guinea')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GR', N'Greece')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GS', N'South Georgia and the South Sandwich Islands')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GT', N'Guatemala')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GU', N'Guam')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GW', N'Guinea-Bissau')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'GY', N'Guyana')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'HK', N'Hong Kong')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'HM', N'Heard Island and McDonald Islands')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'HN', N'Honduras')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'HR', N'Croatia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'HT', N'Haiti')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'HU', N'Hungary')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'ID', N'Indonesia')
GO
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'IE', N'Ireland')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'IL', N'Israel')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'IM', N'Isle of Man')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'IN', N'India')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'IO', N'British Indian Ocean Territory')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'IQ', N'Iraq')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'IR', N'Iran, Islamic Republic of')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'IS', N'Iceland')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'IT', N'Italy')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'JE', N'Jersey')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'JM', N'Jamaica')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'JO', N'Jordan')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'JP', N'Japan')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'KE', N'Kenya')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'KG', N'Kyrgyzstan')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'KH', N'Cambodia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'KI', N'Kiribati')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'KM', N'Comoros')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'KN', N'Saint Kitts and Nevis')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'KP', N'Korea, Democratic People''s Republic of')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'KR', N'Korea, Republic of')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'KW', N'Kuwait')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'KY', N'Cayman Islands')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'KZ', N'Kazakhstan')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'LA', N'Lao People''s Democratic Republic')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'LB', N'Lebanon')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'LC', N'Saint Lucia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'LI', N'Liechtenstein')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'LK', N'Sri Lanka')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'LR', N'Liberia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'LS', N'Lesotho')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'LT', N'Lithuania')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'LU', N'Luxembourg')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'LV', N'Latvia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'LY', N'Libyan Arab Jamahiriya')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MA', N'Morocco')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MC', N'Monaco')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MD', N'Moldova, Republic of')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'ME', N'Montenegro')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MF', N'Saint Martin (French part)')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MG', N'Madagascar')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MH', N'Marshall Islands')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MK', N'Macedonia, the former Yugoslav Republic of')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'ML', N'Mali')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MM', N'Myanmar')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MN', N'Mongolia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MO', N'Macao')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MP', N'Northern Mariana Islands')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MQ', N'Martinique')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MR', N'Mauritania')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MS', N'Montserrat')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MT', N'Malta')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MU', N'Mauritius')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MV', N'Maldives')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MW', N'Malawi')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MX', N'Mexico')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MY', N'Malaysia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'MZ', N'Mozambique')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'NA', N'Namibia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'NC', N'New Caledonia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'NE', N'Niger')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'NF', N'Norfolk Island')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'NG', N'Nigeria')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'NI', N'Nicaragua')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'NL', N'Netherlands')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'NO', N'Norway')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'NP', N'Nepal')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'NR', N'Nauru')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'NU', N'Niue')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'NZ', N'New Zealand')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'OM', N'Oman')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'PA', N'Panama')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'PE', N'Peru')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'PF', N'French Polynesia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'PG', N'Papua New Guinea')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'PH', N'Philippines')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'PK', N'Pakistan')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'PL', N'Poland')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'PM', N'Saint Pierre and Miquelon')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'PN', N'Pitcairn')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'PR', N'Puerto Rico')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'PS', N'Palestinian Territory, Occupied')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'PT', N'Portugal')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'PW', N'Palau')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'PY', N'Paraguay')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'QA', N'Qatar')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'RE', N'Réunion')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'RO', N'Romania')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'RS', N'Serbia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'RU', N'Russian Federation')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'RW', N'Rwanda')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SA', N'Saudi Arabia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SB', N'Solomon Islands')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SC', N'Seychelles')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SD', N'Sudan')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SE', N'Sweden')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SG', N'Singapore')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SH', N'Saint Helena')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SI', N'Slovenia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SJ', N'Svalbard and Jan Mayen')
GO
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SK', N'Slovakia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SL', N'Sierra Leone')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SM', N'San Marino')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SN', N'Senegal')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SO', N'Somalia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SR', N'Suriname')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'ST', N'Sao Tome and Principe')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SV', N'El Salvador')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SY', N'Syrian Arab Republic')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'SZ', N'Swaziland')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TC', N'Turks and Caicos Islands')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TD', N'Chad')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TF', N'French Southern Territories')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TG', N'Togo')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TH', N'Thailand')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TJ', N'Tajikistan')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TK', N'Tokelau')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TL', N'Timor-Leste')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TM', N'Turkmenistan')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TN', N'Tunisia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TO', N'Tonga')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TR', N'Turkey')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TT', N'Trinidad and Tobago')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TV', N'Tuvalu')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TW', N'Taiwan, Province of China')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'TZ', N'Tanzania, United Republic of')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'UA', N'Ukraine')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'UG', N'Uganda')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'UM', N'United States Minor Outlying Islands')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'US', N'United States')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'UY', N'Uruguay')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'UZ', N'Uzbekistan')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'VA', N'Holy See (Vatican City State)')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'VC', N'Saint Vincent and the Grenadines')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'VE', N'Venezuela, Bolivarian Republic of')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'VG', N'Virgin Islands, British')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'VI', N'Virgin Islands, U.S.')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'VN', N'Viet Nam')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'VU', N'Vanuatu')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'WF', N'Wallis and Futuna')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'WS', N'Samoa')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'YE', N'Yemen')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'YT', N'Mayotte')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'ZA', N'South Africa')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'ZM', N'Zambia')
INSERT [dbo].[country_master] ([country_id], [country_name]) VALUES (N'ZW', N'Zimbabwe')
INSERT [dbo].[course_master] ([course_id], [course_name]) VALUES (1, N'Diploma in Computer Science')
INSERT [dbo].[course_master] ([course_id], [course_name]) VALUES (2, N'Diploma in Electrical Engineer')
SET IDENTITY_INSERT [dbo].[document_master] ON 

INSERT [dbo].[document_master] ([doc_id], [doc_student_id], [doc_type], [doc_title], [doc_file_name]) VALUES (1, 1001, N'Photograph', N'Student Phototgraph', N'1_1.jpg')
INSERT [dbo].[document_master] ([doc_id], [doc_student_id], [doc_type], [doc_title], [doc_file_name]) VALUES (2, 1001, N'Other Document', N'Student Certificate', N'1_2.jpg')
INSERT [dbo].[document_master] ([doc_id], [doc_student_id], [doc_type], [doc_title], [doc_file_name]) VALUES (3, 1006, N'Photograph', N'dsaf', N'1006.jpg')
INSERT [dbo].[document_master] ([doc_id], [doc_student_id], [doc_type], [doc_title], [doc_file_name]) VALUES (4, 1006, N'Photograph', N'dsaf', N'1006.jpg')
INSERT [dbo].[document_master] ([doc_id], [doc_student_id], [doc_type], [doc_title], [doc_file_name]) VALUES (5, 1007, N'Photograph', N'Photo', N'1007.gif')
INSERT [dbo].[document_master] ([doc_id], [doc_student_id], [doc_type], [doc_title], [doc_file_name]) VALUES (6, 1008, N'Photograph', N'PP', N'1008.gif')
INSERT [dbo].[document_master] ([doc_id], [doc_student_id], [doc_type], [doc_title], [doc_file_name]) VALUES (7, 1010, N'Photograph', N'Phto', N'1010.jpg')
SET IDENTITY_INSERT [dbo].[document_master] OFF
INSERT [dbo].[employee_master] ([emp_id], [emp_login_name], [emp_login_password], [emp_full_name], [emp_department], [emp_lastlogin]) VALUES (N'1', N'admin', N'admin', N'System Administrator', N'Admin', CAST(N'2012-10-24 00:50:27.060' AS DateTime))
INSERT [dbo].[employee_master] ([emp_id], [emp_login_name], [emp_login_password], [emp_full_name], [emp_department], [emp_lastlogin]) VALUES (N'2', N'jhon', N'jhon', N'Jhone', N'IT', NULL)
INSERT [dbo].[student_master] ([student_id], [student_course_id], [student_full_name], [student_gender], [student_dob], [student_address], [student_city], [student_country_id], [student_postal_code], [student_email_id], [student_contact_no], [student_reg_status], [student_reg_date], [student_approve_date], [student_approve_by], [student_password], [student_lastlogin]) VALUES (1001, 1, N'M. Handhuvaree Naaz', NULL, CAST(N'1990-01-01 00:00:00.000' AS DateTime), N'Muiveyo Goalhi', N'Male', N'ML', N'2058', N'handhuvaree.naaz@gmail.com', N'+9603308866', N'Approved', CAST(N'2012-10-15 00:00:00.000' AS DateTime), CAST(N'2015-10-12 00:00:00.000' AS DateTime), N'1', N'1001', CAST(N'2012-10-21 11:12:34.973' AS DateTime))
INSERT [dbo].[student_master] ([student_id], [student_course_id], [student_full_name], [student_gender], [student_dob], [student_address], [student_city], [student_country_id], [student_postal_code], [student_email_id], [student_contact_no], [student_reg_status], [student_reg_date], [student_approve_date], [student_approve_by], [student_password], [student_lastlogin]) VALUES (1002, 1, N'sadfdf', N'Male', CAST(N'2001-01-01 00:00:00.000' AS DateTime), N'jgjgj', N'jhgjg', N'AF', N'jkhkjh', N'31631', N'65416341', N'Pending', CAST(N'2012-10-21 11:43:50.753' AS DateTime), NULL, NULL, N'1002', NULL)
INSERT [dbo].[student_master] ([student_id], [student_course_id], [student_full_name], [student_gender], [student_dob], [student_address], [student_city], [student_country_id], [student_postal_code], [student_email_id], [student_contact_no], [student_reg_status], [student_reg_date], [student_approve_date], [student_approve_by], [student_password], [student_lastlogin]) VALUES (1003, 1, N'fsdf', N'Male', CAST(N'2001-01-01 00:00:00.000' AS DateTime), N'jgjg', N'khkh', N'AF', N'5363', N'6546', N'65465', N'Pending', CAST(N'2012-10-21 11:48:17.160' AS DateTime), NULL, NULL, N'1003', CAST(N'2012-10-21 11:48:56.067' AS DateTime))
INSERT [dbo].[student_master] ([student_id], [student_course_id], [student_full_name], [student_gender], [student_dob], [student_address], [student_city], [student_country_id], [student_postal_code], [student_email_id], [student_contact_no], [student_reg_status], [student_reg_date], [student_approve_date], [student_approve_by], [student_password], [student_lastlogin]) VALUES (1004, 1, N'asdfdasdfd', N'Male', CAST(N'1980-01-01 00:00:00.000' AS DateTime), N'fsfsd', N'sdfg', N'BT', N'dfgdf', N'gdfg', N'gdfgd', N'Pending', CAST(N'2012-10-21 12:11:54.847' AS DateTime), NULL, NULL, N'1004', NULL)
INSERT [dbo].[student_master] ([student_id], [student_course_id], [student_full_name], [student_gender], [student_dob], [student_address], [student_city], [student_country_id], [student_postal_code], [student_email_id], [student_contact_no], [student_reg_status], [student_reg_date], [student_approve_date], [student_approve_by], [student_password], [student_lastlogin]) VALUES (1005, 2, N'sdf', N'Male', CAST(N'1980-01-01 00:00:00.000' AS DateTime), N'sadfsadf', N'sdfsdf', N'BJ', N'sdfsd', N'a@a.com', N'232342', N'Pending', CAST(N'2012-10-21 12:35:42.100' AS DateTime), NULL, NULL, N'1005', NULL)
INSERT [dbo].[student_master] ([student_id], [student_course_id], [student_full_name], [student_gender], [student_dob], [student_address], [student_city], [student_country_id], [student_postal_code], [student_email_id], [student_contact_no], [student_reg_status], [student_reg_date], [student_approve_date], [student_approve_by], [student_password], [student_lastlogin]) VALUES (1006, 1, N'ashdfh', N'Male', CAST(N'1980-01-01 00:00:00.000' AS DateTime), N'kjhkh', N'jkhkjh', N'AF', N'ghf', N'a@a.com', N'7575', N'Pending', CAST(N'2012-10-21 12:40:42.020' AS DateTime), NULL, NULL, N'1006', CAST(N'2012-10-21 12:48:26.863' AS DateTime))
INSERT [dbo].[student_master] ([student_id], [student_course_id], [student_full_name], [student_gender], [student_dob], [student_address], [student_city], [student_country_id], [student_postal_code], [student_email_id], [student_contact_no], [student_reg_status], [student_reg_date], [student_approve_date], [student_approve_by], [student_password], [student_lastlogin]) VALUES (1007, 1, N'Atanu', N'Male', CAST(N'1984-08-01 00:00:00.000' AS DateTime), N'Mumbai', N'Mumbai', N'IN', N'400107', N'ajprofessionals@gmail.com', N'99999999', N'Approved', CAST(N'2012-10-21 13:49:12.393' AS DateTime), CAST(N'2012-10-21 14:01:49.787' AS DateTime), N'admin', N'1007', CAST(N'2012-10-21 13:50:00.770' AS DateTime))
INSERT [dbo].[student_master] ([student_id], [student_course_id], [student_full_name], [student_gender], [student_dob], [student_address], [student_city], [student_country_id], [student_postal_code], [student_email_id], [student_contact_no], [student_reg_status], [student_reg_date], [student_approve_date], [student_approve_by], [student_password], [student_lastlogin]) VALUES (1008, 2, N'Aditya', N'Male', CAST(N'1990-09-01 00:00:00.000' AS DateTime), N'Mumbai', N'Mumbai', N'IN', N'44444', N'ajprofessionals@gmail.com', N'9999999', N'Approved', CAST(N'2012-10-21 14:13:49.753' AS DateTime), CAST(N'2012-10-21 14:16:15.990' AS DateTime), N'admin', N'1008', CAST(N'2012-10-21 14:15:09.613' AS DateTime))
INSERT [dbo].[student_master] ([student_id], [student_course_id], [student_full_name], [student_gender], [student_dob], [student_address], [student_city], [student_country_id], [student_postal_code], [student_email_id], [student_contact_no], [student_reg_status], [student_reg_date], [student_approve_date], [student_approve_by], [student_password], [student_lastlogin]) VALUES (1009, 1, N'aa', N'Male', CAST(N'1980-01-01 00:00:00.000' AS DateTime), N'jhgj', N'hgk', N'AF', N'kjhk', N'jkh@jhg.com', N'dgd', N'Pending', CAST(N'2012-10-21 14:28:15.190' AS DateTime), NULL, NULL, N'1009', CAST(N'2012-10-21 14:28:44.770' AS DateTime))
INSERT [dbo].[student_master] ([student_id], [student_course_id], [student_full_name], [student_gender], [student_dob], [student_address], [student_city], [student_country_id], [student_postal_code], [student_email_id], [student_contact_no], [student_reg_status], [student_reg_date], [student_approve_date], [student_approve_by], [student_password], [student_lastlogin]) VALUES (1010, 1, N'BILL W GATES', N'Male', CAST(N'1980-01-01 00:00:00.000' AS DateTime), N'USA', N'USA', N'US', N'41252', N'bill.gates@msn.com', N'912213222', N'Approved', CAST(N'2012-10-24 00:47:16.263' AS DateTime), CAST(N'2012-10-24 00:51:50.013' AS DateTime), N'admin', N'1010', CAST(N'2012-10-24 00:48:46.467' AS DateTime))
ALTER TABLE [dbo].[document_master]  WITH NOCHECK ADD  CONSTRAINT [FK_document_master_student_master] FOREIGN KEY([doc_student_id])
REFERENCES [dbo].[student_master] ([student_id])
GO
ALTER TABLE [dbo].[document_master] CHECK CONSTRAINT [FK_document_master_student_master]
GO
ALTER TABLE [dbo].[student_master]  WITH NOCHECK ADD  CONSTRAINT [FK_student_master_country_master] FOREIGN KEY([student_country_id])
REFERENCES [dbo].[country_master] ([country_id])
GO
ALTER TABLE [dbo].[student_master] CHECK CONSTRAINT [FK_student_master_country_master]
GO
ALTER TABLE [dbo].[student_master]  WITH NOCHECK ADD  CONSTRAINT [FK_student_master_course_master] FOREIGN KEY([student_course_id])
REFERENCES [dbo].[course_master] ([course_id])
GO
ALTER TABLE [dbo].[student_master] CHECK CONSTRAINT [FK_student_master_course_master]
GO
USE [master]
GO
ALTER DATABASE [eStudentRegistration] SET  READ_WRITE 
GO
