class TestProgramsController < ApplicationController
  def show
    @test_program = TestProgram.find(params[:id])
    raise "Forbidden" unless @test_program.user == current_user
    redirect_to @test_program.phase and return if @test_program.complete?
    redirect_to @test_program.first_incomplete_round
  end
end
