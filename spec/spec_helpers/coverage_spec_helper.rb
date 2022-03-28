# カバレッジ測定設定
if ENV['GUARD'] == 'true'
  puts 'Running with Guard, Disable coverage check.'
else
  SimpleCov.start 'rails'
  SimpleCov.at_exit do
    SimpleCov.result.format!

    # if SimpleCov.result.covered_percent < 60
    #   puts "\n\e[31m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    #   puts "Converage is under 100%. See `coverage/index.html`\n"
    #   puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\e[0m\n\n"
    #   abort('Test failed.')
    # end
  end
end
