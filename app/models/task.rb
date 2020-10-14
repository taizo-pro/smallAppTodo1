class Task < ApplicationRecord
  mount_uploader :taskImage, TaskImageUploader
end
