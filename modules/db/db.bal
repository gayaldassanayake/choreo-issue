import ballerina/sql;
import ballerinax/mssql;

mssql:Client dbClient = check getClient();

function getClient() returns mssql:Client|error {
    return new (
        "localhost",
        "config:database.user",
        "config:database.password",
        "billing_db",
        1443
    );
}

function getValue() returns sql:ExecutionResult|sql:Error {
    sql:ParameterizedQuery query = `INSERT INTO users (name, age) VALUES ("Nimal", 23)`;
    return dbClient->execute(query);
}

public function getFinalValue() returns int {
    sql:ExecutionResult|sql:Error value = getValue();
    if (value is sql:ExecutionResult) {
        return 1;
    }
    return 0;
}

public function getFinalValue2() returns int {
    return 1;
}
