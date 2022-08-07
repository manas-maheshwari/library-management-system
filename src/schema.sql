
create table user (
    id int(6) not null primary key auto_increment,
    name varchar(25),
    username varchar(25) not null unique,
    password varchar(50) not null,
    age int not null,
    address varchar(255),
    phone varchar(25)
);

INSERT INTO user(name, username, password, age, address, phone) VALUES ('John Doe', 'john_doe', '1234', 11, '4020 Drive', '123456789');
INSERT INTO user(name, username, password, age, address, phone) VALUES ('Jane Smith', 'jane_smith25', '123456', 25, '4010 Drive', '123456890');
INSERT INTO user(name, username, password, age, address, phone) VALUES ('admin', 'admin', 'abc1234', 35, '100 Parkway', '0000000000');

create table book (
    id int(6) not null primary key auto_increment,
    title varchar(255) not null,
    author varchar(255),
    type varchar(20),
    is_current_best_seller boolean,
    published datetime
);

insert into book(title, author, type, is_current_best_seller, published) VALUES
    ("Northanger Abbey", "Austen, Jane", "video", false, "1990-01-01 00:00:00"),
    ("War and Peace", "Tolstoy, Leo", "paper", true, "1990-01-01 00:00:00"),
    ("Anna Karenina", "Tolstoy, Leo", "paper", false, "1990-01-01 00:00:00"),
    ("Mrs. Dalloway", "Woolf, Virginia", "audio", true, "1990-01-01 00:00:00"),
    ("The Hours", "Cunnningham, Michael", "paper", false, "1990-01-01 00:00:00"),
    ("Huckleberry Finn", "Twain, Mark", "paper", false, "1990-01-01 00:00:00"),
    ("Bleak House", "Dickens, Charles", "paper", false, "1990-01-01 00:00:00"),
    ("Tom Sawyer", "Twain, Mark",  "video", false, "1990-01-01 00:00:00"),
    ("A Room of One's Own", "Woolf, Virginia",  "paper", false, "1990-01-01 00:00:00"),
    ("Harry Potter","Rowling, J.K.", "audio", true, "1990-01-01 00:00:00"),
    ("One Hundred Years of Solitude","Marquez", "paper", false, "1990-01-01 00:00:00"),
    ("Hamlet, Prince of Denmark","Shakespeare", "paper", false, "1990-01-01 00:00:00"),
    ("Lord of the Rings","Tolkien, J.R.", "paper", false, "1990-01-01 00:00:00");


create table checked_out_book(
    id int(6) not null primary key auto_increment,
    book_id int(6),
    checked_out_by int(6),
    checked_out_at datetime,
    due_at datetime,
    returned boolean default false,
    foreign key (checked_out_by) references user(id),
    foreign key (book_id) references book(id)
);
