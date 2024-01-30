import choreo_issue.db as _;
import ballerina/test;
import ballerinax/mssql;

@test:Mock {
    moduleName: "choreo_issue.db",
    functionName: "getClient"
}
function getMockClient() returns mssql:Client|error {
    return test:mock(mssql:Client);
}

// @test:Mock {
//     moduleName: "choreo_issue.db",
//     functionName: "getFinalValue"
//     }

// @test:Config {}
// function testA() {
//     test:when(getMockValue).thenReturn(1);
//     test:assertEquals(functionA(), "success");
// }
