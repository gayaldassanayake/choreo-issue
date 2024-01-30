// import ballerina/sql;
import ballerina/test;
import ballerinax/mssql;

@test:Mock {
    functionName: "getClient"
}
function getMockClient() returns mssql:Client|error {
    return test:mock(mssql:Client);
}

// @test:Mock {functionName: "getValue"}
// test:MockFunction getMockValue = new ();

// @test:Config {}
// function testGetValue() {
//     sql:ExecutionResult mockValue = {affectedRowCount : 1,lastInsertId: 1};
//     test:when(getMockValue).thenReturn(mockValue);
//     test:assertEquals(getFinalValue(), 1);
// }
