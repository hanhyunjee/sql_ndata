--���̺� ����
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

-- �����ͺ��� ���� ũ�⸦ �۰� �����ϸ� ���� �߻���.
alter table sample_product modify(product_name varchar(5));


alter table sample_product rename column factory to factory_name;


-- �� ����
alter table sample_product drop column factory_name;

-- ���� ����
truncate table sample_product;


-- ���̺� ����
drop table sample_product;