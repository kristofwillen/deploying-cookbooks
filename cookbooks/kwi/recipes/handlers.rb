Chef.event_handler do
  on :converge_start do
    puts "[INFO] I have started a converge."
  end
end

Chef.event_handler do
  on :converge_complete do
    puts "[ Ok ] I completed a converge."
  end
end

Chef.event_handler do
  on :ohai_completed do
    puts "[ Ok ] I completed Ohai collection;"
  end
end

Chef.event_handler do
  on :run_started do
    puts "[INFO] I started a Chef run;"
  end
end
Chef.event_handler do
  on :run_completed do
    puts "[ Ok ] I completed a Chef run;"
  end
end
