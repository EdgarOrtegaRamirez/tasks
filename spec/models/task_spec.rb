require 'spec_helper'

describe Task do
  it { should validate_presence_of :text }
  it { should belong_to :list }
end
