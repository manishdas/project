require 'spec_helper'

describe TaskGroup do

  it { should validate_presence_of :task_name }
  it { should belong_to :project }

end