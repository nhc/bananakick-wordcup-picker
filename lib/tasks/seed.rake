namespace :seed do
  desc "Seed the db"
  
  task :teams => :environment do

  	Group.destroy_all
    Group.reset_pk_sequence

    Team.destroy_all
    Team.reset_pk_sequence

    Player.destroy_all
    Player.reset_pk_sequence

  	g = Group.create(id: 1, name: 'Group A')
    Team.create(name: 'Brazil', group: g)
    Team.create(name: 'Croatia', group: g)
    Team.create(name: 'Mexico', group: g)
    Team.create(name: 'Cameroon', group: g)

    g = Group.create(id: 2, name: 'Group B')
    Team.create(name: 'Spain', group: g)
    Team.create(name: 'Netherlands', group: g)
    Team.create(name: 'Chile', group: g)
    Team.create(name: 'Australia', group: g)

    g = Group.create(id: 3, name: 'Group C')
    Team.create(name: 'Colombia', group: g)
    Team.create(name: 'Greece', group: g)
    Team.create(name: "Ivory Coast", group: g)
    Team.create(name: 'Japan', group: g)

    g = Group.create(id: 4, name: 'Group D')
    Team.create(name: 'Uruguay', group: g)
    Team.create(name: 'Costa Rica', group: g)
    Team.create(name: "England", group: g)
    Team.create(name: 'Italy', group: g)

    g = Group.create(id: 5, name: 'Group E')
    Team.create(name: 'Switzerland', group: g)
    Team.create(name: 'Ecuador', group: g)
    Team.create(name: "France", group: g)
    Team.create(name: 'Honduras', group: g)

    g = Group.create(id: 6, name: 'Group F')
    Team.create(name: 'Argentina', group: g)
    Team.create(name: 'Bosnia and Herzegovina', group: g)
    Team.create(name: "Iran", group: g)
    Team.create(name: 'Nigeria', group: g)

    g = Group.create(id: 7, name: 'Group G')
    Team.create(name: 'Germany', group: g)
    Team.create(name: 'Portugal', group: g)
    Team.create(name: "Ghana", group: g)
    Team.create(name: 'USA', group: g)

    g = Group.create(id: 8, name: 'Group H')
    Team.create(name: 'Belgium', group: g)
    Team.create(name: 'Algeria', group: g)
    Team.create(name: "Russia", group: g)
    Team.create(name: 'South Korea', group: g)

    name = %w( Jamie Oliver Lou Sian Luke Lorna Sara Poppy James Jess Ash Meg Mike Barney Sankey Jordan April Dave Phil Tom Emma Gav Alex Andy Matt Coups Thea Ed Janice Rich Gary Nick-G Claire Katherine Vic  )
    
    name.each do |n|
        Player.create(name: n)
    end
  end

end