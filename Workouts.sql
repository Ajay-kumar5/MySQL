use classicmodels; 
select * from classicmodels.customers;

select * from employees;

select * from employees where officeCode=1
order by lastName,firstName;

select lastName,firstName,jobTitle from employees; 

/* ----Next--*/

select * from products;

select productCode,productName,buyPrice,
		MSRP as "Selling Price",
        (MSRP*0.90) as "Dis Price" from products;
        
/*---Next--*/
select * from orders where status != "Shipped";


-- next -

select * from payments where amount>= 40000;

-- Logical operators AND, OR, NOT -

select * from payments where amount>= 40000 and amount <=60000;

select * from payments where not (amount>= 40000 and amount <=60000);

select * from payments where  (amount <= 40000 or amount >=60000);

select * from payments where  (amount <= 40000 or amount >=60000) and paymentDate >= '2004-05-25';

-- Next -----

select * from employees where officeCode=1 or officeCode=2 or officeCode=3;

select * from employees where officeCode in (1,2,3) order by officeCode desc;

select * from employees where officeCode not in (1,2,3) order by officeCode desc;


-- next -----

select * from customers;

select * from customers where creditLimit between 20000 and 40000;

-- next ------

select * from employees;

select * from employees where jobTitle like  "%Sales%";

select * from employees where firstName like  "%y";

select * from employees where firstName like  "____y";

-- next ----
use classicmodels;

select * from employees where jobtitle regexp "sale";

select * from employees where jobtitle regexp "^sale";

select * from employees where jobtitle regexp "rep$";

select * from employees where firstName regexp "^a|^b";

select * from employees where firstName regexp "^[abcde]";

select * from employees where firstName regexp "^[a-h]|lie$";

select * from customers;

select * from customers where phone regexp "55$";


-- null opertors ------

select * from orders;

select * from orders where comments is null;

select * from orders where shippedDate is null; 

select * from orders where shippedDate is not null; 

-- order by ---

select * from customers;

select * from customers order by contactFirstName;

-- limit --


select * from customers order by creditLimit desc limit 5;
