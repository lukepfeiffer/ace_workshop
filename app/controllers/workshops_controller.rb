class WorkshopsController < ApplicationController
  expose :workshops do
    Workshop.all
  end
end
