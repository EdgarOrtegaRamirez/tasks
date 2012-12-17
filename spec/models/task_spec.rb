require 'spec_helper'

describe Task do
  it { should validate_presence_of :text }
  it { should validate_presence_of :list_id }
  it { should belong_to :list }
end
