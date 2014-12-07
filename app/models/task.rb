class Task < ActiveRecord::Base
  belongs_to :worker
  belongs_to :housework_type
end
