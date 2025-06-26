namespace :webhook_bins do
  desc "Find Webhook Bins that don't have associated webhook requests"
  task :find_unused_bins do
    unused_bins = WebhookBin.left_joins(:webhook_requests)
                           .where(webhook_requests: { id: nil })
    
    puts "Found #{unused_bins.count} webhook bins without requests:"
    unused_bins.each do |bin|
      puts "  - Bin ID: #{bin.id}, Token: #{bin.token}, Created: #{bin.created_at}"
    end
    
    return unused_bins
  end

  desc "Deletes Webhook Bins that haven't been used"
  task :delete_unused_bins do
    unused_bins = WebhookBin.left_joins(:webhook_requests)
                           .where(webhook_requests: { id: nil })
    
    count = unused_bins.count
    puts "Found #{count} webhook bins without requests"
    
    if count > 0
      print "Do you want to delete these bins? (y/N): "
      response = STDIN.gets.chomp.downcase
      
      if response == 'y' || response == 'yes'
        unused_bins.destroy_all
        puts "Successfully deleted #{count} unused webhook bins"
      else
        puts "Deletion cancelled"
      end
    end
  end
end 