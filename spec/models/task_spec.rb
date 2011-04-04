require 'spec_helper'

describe Task do
  it { should validate_presence_of :task_title}
  it { should validate_presence_of :desciption}
  it { should belong_to :project }
  it { should belong_to :team_member }
end
