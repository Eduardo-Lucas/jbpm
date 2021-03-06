create table TaskVariableImpl (
    id bigint generated by default as identity (start with 1),
    modificationDate timestamp,
    name varchar(255),
    processId varchar(255),
    processInstanceId bigint,
    taskId bigint,
    type integer,
    value varchar(5000),
    primary key (id)
);

create table QueryDefinitionStore (
    id bigint generated by default as identity (start with 1),
    qExpression longvarchar,
    qName varchar(255),
    qSource varchar(255),
    qTarget varchar(255),
    primary key (id)
);

alter table QueryDefinitionStore 
        add constraint UK_4ry5gt77jvq0orfttsoghta2j unique (qName);
