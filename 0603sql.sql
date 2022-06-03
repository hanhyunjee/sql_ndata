--테이블 생성
CREATE TABLE sample_product
             ( product_id number,
               product_name varchar2(30),
               manu_date date
             );
             

INSERT INTO sample_product
values(1,'television', to_date('140101', 'yymmdd'));
INSERT INTO sample_product
values(2,'washer', to_date('150101', 'yymmdd'));
INSERT INTO sample_product
values(3,'cleaner', to_date('160101', 'yymmdd'));

SELECT
    *
FROM sample_product;


alter table sample_product add(factory varchar(10));

alter table sample_product modify(factory char(8));

-- 데이터보다 열의 크기를 작게 변경하면 오류 발생함.
alter table sample_product modify(product_name varchar(5));


alter table sample_product rename column factory to factory_name;


-- 열 삭제
alter table sample_product drop column factory_name;

-- 내용 삭제
truncate table sample_product;


-- 테이블 삭제
drop table sample_product;