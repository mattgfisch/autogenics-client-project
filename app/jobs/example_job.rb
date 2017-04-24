class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
   50000.times do
    p "*********************************"
    p args[0]
    p "*********************************"
   end
  end
end
