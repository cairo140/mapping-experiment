class TestRound < ActiveRecord::Base
  belongs_to :test_program
  belongs_to :round_prototype
  belongs_to :clip
  belongs_to :guess, :class_name => 'Sound'

  def self.create_from_prototype round_prototype
    if rand(2) == 1
      clip = round_prototype.pair_prototype.left_sound.random_clip 
    else
      clip = round_prototype.pair_prototype.right_sound.random_clip
    end

    create({
      :round_prototype => round_prototype,
      :clip => clip
    })
  end

  def complete?
    !guess_id.nil?
  end

  def experiment
    test_program.experiment
  end

  def experiment_prototype
    test_program.experiment_prototype
  end

  def post_intervention?
    test_program.post_intervention?
  end

  def success?
    clip.sound_id == guess_id
  end

  def user
    test_program.user
  end
end
