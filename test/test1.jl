@testset "test dubins shortest path length" begin
    path = Dubins.DubinsPath()
    errcode = Dubins.dubins_shortest_path(path, zeros(3), [5., 0., 3.], 1.)
    @test errcode == 0
    path_length = Dubins.dubins_path_length(path)
    @test isapprox(path_length, 8.2725, atol=1e-3)
end
