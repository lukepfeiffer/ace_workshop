class WorkshopsController < ApplicationController
  expose :workshop
  expose :workshops do
    Workshop.all
  end
end
