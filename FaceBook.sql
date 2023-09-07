create database facebook;
use facebook;

create table product_info( product_id int,
							product_name varchar(20),
                            primary key(product_id));
insert into product_info values(1001, "Blog"), (1002,"Youtube"), (1003, "Education");

create table product_info_likes( user_id int,
								  product_id int,
                                  liked_date date,
                                  primary key(user_id),
                                  foreign key(product_id) references product_info(product_id));
insert into product_info_likes values(1, 1001, "2023-08-19"), (2, 1003, "2023-01-18");

select product_info.product_id from product_info
left join product_info_likes on product_info.product_id = product_info_likes.product_id
where product_info_likes.product_id is null;