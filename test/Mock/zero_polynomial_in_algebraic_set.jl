config = MOI.Test.TestConfig()
_optimize!(mock) = MOIU.mock_optimize!(mock, [1.0, 1.0],
    (MOI.VectorAffineFunction{Float64}, MOI.Zeros) => [[-1.0]])
mock = bridged_mock(_optimize!)
Tests.zero_polynomial_in_algebraic_set_test(mock, config)
