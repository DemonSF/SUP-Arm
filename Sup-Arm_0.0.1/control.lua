script.on_event(defines.events.on_research_started,
    function(event)
      if event.research.name == "1 rasa" then
        event.research.force.technologies["2 rasa"].enabled = false
      end
      if event.research.name == "2 rasa" then
        event.research.force.technologies["1 rasa"].enabled = false
      end
    end)
