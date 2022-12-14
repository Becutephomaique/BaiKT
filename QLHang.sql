create table VatTu (
MaTV char (4) primary key,
TenVT varchar (20) not null,
DVTinh varchar (10) not null,
SLCon int not null , 
)

create table HDBan(
MaHD char (4) primary key,
NgayXuat smalldatetime not null,
HoTenKhach varchar (50) not null,
)

create table HangXuat(
MaHD char(4) not null,
MaVT char(4) not null,
DonGia money not null,
SLBan int not null,
constraint pk_HangXuat primary key(MaHD,MaVT),
constraint fk_HangXuat_MaHD foreign key(MaHD) references HDBan(MaHD)on delete cascade,
)